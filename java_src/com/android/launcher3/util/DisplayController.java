package com.android.launcher3.util;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.view.Display;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.util.window.CachedDisplayInfo;
import com.android.launcher3.util.window.WindowManagerProxy;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final class DisplayController implements ComponentCallbacks, SafeCloseable {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0471d());
    private static boolean sTransientTaskbarStatusForTests;
    private final Context mContext;
    private final DisplayManager mDM;
    private boolean mDestroyed;
    private Info mInfo;
    private final ArrayList mListeners = new ArrayList();
    private final LauncherPrefs mPrefs;
    private DisplayInfoChangeListener mPriorityListener;
    private final Context mWindowContext;

    /* loaded from: classes.dex */
    public interface DisplayInfoChangeListener {
        void onDisplayInfoChanged(Context context, Info info, int i4);
    }

    /* loaded from: classes.dex */
    public final class Info {
        public final Point currentSize;
        private final int densityDpi;
        public final float fontScale;
        private final ArrayMap mPerDisplayBounds;
        private final PortraitSize mScreenSizeDp;
        public final NavigationMode navigationMode;
        public final CachedDisplayInfo normalizedDisplayInfo;
        public final WindowBounds realBounds;
        public final int rotation;
        public final Set supportedBounds;

        public Info(Context context, WindowManagerProxy windowManagerProxy, Map map) {
            ArraySet arraySet = new ArraySet();
            this.supportedBounds = arraySet;
            ArrayMap arrayMap = new ArrayMap();
            this.mPerDisplayBounds = arrayMap;
            CachedDisplayInfo displayInfo = windowManagerProxy.getDisplayInfo(context);
            CachedDisplayInfo normalize = displayInfo.normalize();
            this.normalizedDisplayInfo = normalize;
            int i4 = displayInfo.rotation;
            this.rotation = i4;
            this.currentSize = displayInfo.size;
            Configuration configuration = context.getResources().getConfiguration();
            this.fontScale = configuration.fontScale;
            this.densityDpi = configuration.densityDpi;
            this.mScreenSizeDp = new PortraitSize(configuration.screenHeightDp, configuration.screenWidthDp);
            this.navigationMode = windowManagerProxy.getNavigationMode(context);
            arrayMap.putAll(map);
            List list = (List) arrayMap.get(normalize);
            WindowBounds realBounds = windowManagerProxy.getRealBounds(context, displayInfo);
            this.realBounds = realBounds;
            if (list == null) {
                FileLog.e("DisplayController", "Unexpected normalizedDisplayInfo found, invalidating cache: " + normalize);
                FileLog.e("DisplayController", "(Invalid Cache) perDisplayBounds : " + arrayMap);
                arrayMap.clear();
                arrayMap.putAll(windowManagerProxy.estimateInternalDisplayBounds(context));
                List list2 = (List) arrayMap.get(normalize);
                if (list2 == null) {
                    FileLog.e("DisplayController", "normalizedDisplayInfo not found in estimation: " + normalize);
                    arraySet.add(realBounds);
                }
                list = list2;
            }
            if (list != null && !realBounds.equals((WindowBounds) list.get(i4))) {
                ArrayList arrayList = new ArrayList(list);
                arrayList.set(i4, realBounds);
                arrayMap.put(normalize, arrayList);
            }
            arrayMap.values().forEach(new C0469b(1, arraySet));
        }

        public final int getDensityDpi() {
            return this.densityDpi;
        }

        public final boolean isTablet(WindowBounds windowBounds) {
            return smallestSizeDp(windowBounds) >= 600.0f;
        }

        public final float smallestSizeDp(WindowBounds windowBounds) {
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            return Math.min(windowBounds.bounds.width(), windowBounds.bounds.height()) / (this.densityDpi / 160.0f);
        }
    }

    /* loaded from: classes.dex */
    public final class PortraitSize {
        public final int height;
        public final int width;

        public PortraitSize(int i4, int i5) {
            this.width = Math.min(i4, i5);
            this.height = Math.max(i4, i5);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PortraitSize.class != obj.getClass()) {
                return false;
            }
            PortraitSize portraitSize = (PortraitSize) obj;
            return this.width == portraitSize.width && this.height == portraitSize.height;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.width), Integer.valueOf(this.height));
        }
    }

    public DisplayController(Context context) {
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new C0469b(0, this));
        this.mDestroyed = false;
        this.mContext = context;
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        this.mDM = displayManager;
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        this.mPrefs = LauncherPrefs.Companion.get(context);
        Display display = displayManager.getDisplay(0);
        boolean z4 = Utilities.ATLEAST_S;
        if (z4) {
            Context createWindowContext = context.createWindowContext(display, 2, null);
            this.mWindowContext = createWindowContext;
            createWindowContext.registerComponentCallbacks(this);
        } else {
            this.mWindowContext = null;
            simpleBroadcastReceiver.register(context, "android.intent.action.CONFIGURATION_CHANGED");
        }
        simpleBroadcastReceiver.registerPkgActions(context, "android", "android.intent.action.OVERLAY_CHANGED");
        WindowManagerProxy windowManagerProxy = (WindowManagerProxy) WindowManagerProxy.INSTANCE.get(context);
        Context createDisplayContext = z4 ? this.mWindowContext : context.createDisplayContext(display);
        this.mInfo = new Info(createDisplayContext, windowManagerProxy, windowManagerProxy.estimateInternalDisplayBounds(createDisplayContext));
        String str = "(CTOR) perDisplayBounds: " + this.mInfo.mPerDisplayBounds;
        int i4 = FileLog.f4698a;
        Log.i("DisplayController", str);
        FileLog.print("DisplayController", str, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if (r0.densityDpi == r5.densityDpi) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.android.launcher3.util.DisplayController r4, android.content.Intent r5) {
        /*
            boolean r0 = r4.mDestroyed
            if (r0 == 0) goto L5
            goto L52
        L5:
            java.lang.String r0 = r5.getAction()
            java.lang.String r1 = "android.intent.action.OVERLAY_CHANGED"
            boolean r0 = r1.equals(r0)
            r1 = 0
            if (r0 == 0) goto L13
            goto L3b
        L13:
            java.lang.String r0 = "android.intent.action.CONFIGURATION_CHANGED"
            java.lang.String r5 = r5.getAction()
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L3d
            android.content.Context r5 = r4.mContext
            android.content.res.Resources r5 = r5.getResources()
            android.content.res.Configuration r5 = r5.getConfiguration()
            com.android.launcher3.util.DisplayController$Info r0 = r4.mInfo
            float r2 = r0.fontScale
            float r3 = r5.fontScale
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 != 0) goto L3b
            int r0 = com.android.launcher3.util.DisplayController.Info.a(r0)
            int r5 = r5.densityDpi
            if (r0 == r5) goto L3d
        L3b:
            r5 = 1
            goto L3e
        L3d:
            r5 = r1
        L3e:
            if (r5 == 0) goto L52
            java.lang.String r5 = "DisplayController"
            java.lang.String r0 = "Configuration changed, notifying listeners"
            android.util.Log.d(r5, r0)
            android.hardware.display.DisplayManager r5 = r4.mDM
            android.view.Display r5 = r5.getDisplay(r1)
            if (r5 == 0) goto L52
            r4.handleInfoChange(r5)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.DisplayController.a(com.android.launcher3.util.DisplayController, android.content.Intent):void");
    }

    public static void b(DisplayController displayController, Context context, int i4) {
        DisplayInfoChangeListener displayInfoChangeListener = displayController.mPriorityListener;
        if (displayInfoChangeListener != null) {
            displayInfoChangeListener.onDisplayInfoChanged(context, displayController.mInfo, i4);
        }
        int size = displayController.mListeners.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((DisplayInfoChangeListener) displayController.mListeners.get(i5)).onDisplayInfoChanged(context, displayController.mInfo, i4);
        }
    }

    public static void enableTransientTaskbarForTests(boolean z4) {
        sTransientTaskbarStatusForTests = z4;
    }

    public static NavigationMode getNavigationMode(Context context) {
        return ((DisplayController) INSTANCE.get(context)).mInfo.navigationMode;
    }

    private void handleInfoChange(Display display) {
        WindowManagerProxy windowManagerProxy = (WindowManagerProxy) WindowManagerProxy.INSTANCE.get(this.mContext);
        Info info = this.mInfo;
        final Context createDisplayContext = Utilities.ATLEAST_S ? this.mWindowContext : this.mContext.createDisplayContext(display);
        Info info2 = new Info(createDisplayContext, windowManagerProxy, info.mPerDisplayBounds);
        int i4 = info2.densityDpi;
        int i5 = info.densityDpi;
        NavigationMode navigationMode = info.navigationMode;
        float f4 = info.fontScale;
        if (i4 != i5 || info2.fontScale != f4 || info2.navigationMode != navigationMode) {
            info2 = new Info(createDisplayContext, windowManagerProxy, windowManagerProxy.estimateInternalDisplayBounds(createDisplayContext));
        }
        final int i6 = !info2.normalizedDisplayInfo.equals(info.normalizedDisplayInfo);
        if (info2.rotation != info.rotation) {
            i6 |= 2;
        }
        if (info2.densityDpi != info.densityDpi || info2.fontScale != f4) {
            i6 |= 4;
        }
        if (info2.navigationMode != navigationMode) {
            i6 |= 16;
        }
        if (!((ArraySet) info2.supportedBounds).equals(info.supportedBounds) || !info2.mPerDisplayBounds.equals(info.mPerDisplayBounds)) {
            i6 |= 8;
            String str = "(CHANGE_SUPPORTED_BOUNDS) perDisplayBounds: " + info2.mPerDisplayBounds;
            int i7 = FileLog.f4698a;
            Log.w("DisplayController", str);
            FileLog.print("DisplayController", str, null);
        }
        if (i6 != 0) {
            this.mInfo = info2;
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.e
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayController.b(DisplayController.this, createDisplayContext, i6);
                }
            });
        }
    }

    public static boolean isTransientTaskbar(Context context) {
        DisplayController displayController = (DisplayController) INSTANCE.get(context);
        displayController.getClass();
        if (!(!Utilities.isRunningInTestHarness() && FeatureFlags.ENABLE_TASKBAR_PINNING.get() && ((Boolean) displayController.mPrefs.get(LauncherPrefs.TASKBAR_PINNING)).booleanValue()) && displayController.mInfo.navigationMode == NavigationMode.NO_BUTTON) {
            if (Utilities.isRunningInTestHarness()) {
                if (!sTransientTaskbarStatusForTests) {
                    return false;
                }
            } else if (!FeatureFlags.ENABLE_TRANSIENT_TASKBAR.get()) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final void addChangeListener(DisplayInfoChangeListener displayInfoChangeListener) {
        this.mListeners.add(displayInfoChangeListener);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mDestroyed = true;
        Context context = this.mWindowContext;
        if (context != null) {
            context.unregisterComponentCallbacks(this);
        }
    }

    public final void dump(final PrintWriter printWriter) {
        Info info = this.mInfo;
        printWriter.println("DisplayController.Info:");
        printWriter.println("  normalizedDisplayInfo=" + info.normalizedDisplayInfo);
        printWriter.println("  rotation=" + info.rotation);
        printWriter.println("  fontScale=" + info.fontScale);
        printWriter.println("  densityDpi=" + info.densityDpi);
        printWriter.println("  navigationMode=" + info.navigationMode.name());
        printWriter.println("  currentSize=" + info.currentSize);
        info.mPerDisplayBounds.forEach(new BiConsumer() { // from class: com.android.launcher3.util.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                PrintWriter printWriter2 = printWriter;
                printWriter2.println("  perDisplayBounds - " + ((CachedDisplayInfo) obj) + ": " + ((List) obj2));
            }
        });
    }

    public final Info getInfo() {
        return this.mInfo;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        Log.d("b/254119092", "DisplayController#onConfigurationChanged: " + configuration);
        Display display = this.mWindowContext.getDisplay();
        if (configuration.densityDpi == this.mInfo.densityDpi && configuration.fontScale == this.mInfo.fontScale) {
            int rotation = display.getRotation();
            Info info = this.mInfo;
            if (rotation == info.rotation && info.mScreenSizeDp.equals(new PortraitSize(configuration.screenHeightDp, configuration.screenWidthDp))) {
                return;
            }
        }
        handleInfoChange(display);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    public final void removeChangeListener(DisplayInfoChangeListener displayInfoChangeListener) {
        this.mListeners.remove(displayInfoChangeListener);
    }

    public final void setPriorityListener(com.android.launcher3.F f4) {
        this.mPriorityListener = f4;
    }
}
