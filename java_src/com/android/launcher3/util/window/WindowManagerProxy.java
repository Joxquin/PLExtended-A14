package com.android.launcher3.util.window;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.util.ArrayMap;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.android.launcher3.Utilities;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.RotationUtils;
import com.android.launcher3.util.WindowBounds;
import com.android.launcher3.util.u;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class WindowManagerProxy implements ResourceBasedOverride {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new u(WindowManagerProxy.class, R.string.window_manager_proxy_class));
    public static final int MIN_TABLET_WIDTH = 600;
    private static final String TAG = "WindowManagerProxy";
    protected final boolean mTaskbarDrawnInProcess;

    public WindowManagerProxy() {
        this(false);
    }

    public static WindowManagerProxy newInstance(Context context) {
        return (WindowManagerProxy) ResourceBasedOverride.Overrides.getObject(R.string.window_manager_proxy_class, context, WindowManagerProxy.class);
    }

    public ArrayMap estimateInternalDisplayBounds(Context context) {
        CachedDisplayInfo normalize = getDisplayInfo(context).normalize();
        List estimateWindowBounds = estimateWindowBounds(context, normalize);
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put(normalize, estimateWindowBounds);
        return arrayMap;
    }

    public List estimateWindowBounds(Context context, CachedDisplayInfo cachedDisplayInfo) {
        int dimenByName;
        int i4;
        int i5;
        int i6;
        int i7 = context.getResources().getConfiguration().densityDpi;
        int i8 = cachedDisplayInfo.rotation;
        Point point = cachedDisplayInfo.size;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        int min = (int) (Math.min(point.x, point.y) / (i7 / 160.0f));
        Configuration configuration = new Configuration();
        configuration.smallestScreenWidthDp = min;
        Resources resources = context.createConfigurationContext(configuration).getResources();
        boolean z4 = true;
        int i9 = 0;
        boolean z5 = min >= 600;
        if (!z5 && (!Utilities.ATLEAST_R || !isGestureNav(context))) {
            z4 = false;
        }
        int dimenByName2 = getDimenByName(resources, "status_bar_height_portrait", "status_bar_height");
        int dimenByName3 = getDimenByName(resources, "status_bar_height_landscape", "status_bar_height");
        int dimensionPixelSize = z5 ? this.mTaskbarDrawnInProcess ? 0 : resources.getDimensionPixelSize(R.dimen.taskbar_size) : getDimenByName(resources, "navigation_bar_height");
        if (z5) {
            if (!this.mTaskbarDrawnInProcess) {
                dimenByName = resources.getDimensionPixelSize(R.dimen.taskbar_size);
            }
            dimenByName = 0;
        } else {
            if (z4) {
                dimenByName = getDimenByName(resources, "navigation_bar_height_landscape");
            }
            dimenByName = 0;
        }
        int dimenByName4 = z4 ? 0 : getDimenByName(resources, "navigation_bar_width");
        int i10 = 4;
        ArrayList arrayList = new ArrayList(4);
        Point point2 = new Point();
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 - i8;
            if (i12 < 0) {
                i12 += 4;
            }
            point2.set(point.x, point.y);
            RotationUtils.rotateSize(point2, i12);
            Rect rect = new Rect(i9, i9, point2.x, point2.y);
            if (point2.y > point2.x) {
                i4 = dimenByName4;
                i6 = dimenByName2;
                i5 = dimensionPixelSize;
            } else {
                i4 = dimenByName4;
                i9 = i4;
                i5 = dimenByName;
                i6 = dimenByName3;
            }
            int i13 = dimenByName;
            Rect rect2 = new Rect(cachedDisplayInfo.cutout);
            RotationUtils.rotateRect(i12, rect2);
            rect2.top = Math.max(rect2.top, i6);
            rect2.bottom = Math.max(rect2.bottom, i5);
            if (i11 == 3 || i11 == 2) {
                rect2.left = Math.max(rect2.left, i9);
            } else {
                rect2.right = Math.max(rect2.right, i9);
            }
            arrayList.add(new WindowBounds(i11, rect, rect2));
            i11++;
            dimenByName4 = i4;
            dimenByName = i13;
            i10 = 4;
            i9 = 0;
        }
        return arrayList;
    }

    public int getDimenByName(Resources resources, String str) {
        return ResourceUtils.getDimenByName(0, resources, str);
    }

    public Display getDisplay(Context context) {
        if (Utilities.ATLEAST_R) {
            try {
                return context.getDisplay();
            } catch (UnsupportedOperationException unused) {
            }
        }
        return ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
    }

    public CachedDisplayInfo getDisplayInfo(Context context) {
        int rotation = getRotation(context);
        if (Utilities.ATLEAST_S) {
            return getDisplayInfo(((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics(), rotation);
        }
        Point point = new Point();
        getDisplay(context).getRealSize(point);
        return new CachedDisplayInfo(point, rotation, new Rect());
    }

    public NavigationMode getNavigationMode(Context context) {
        NavigationMode[] values;
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_navBarInteractionMode", "integer", "android");
        int integer = identifier != 0 ? resources.getInteger(identifier) : -1;
        if (integer == -1) {
            Log.e(TAG, "Failed to get system resource ID. Incompatible framework version?");
        } else {
            for (NavigationMode navigationMode : NavigationMode.values()) {
                if (navigationMode.resValue == integer) {
                    return navigationMode;
                }
            }
        }
        return Utilities.ATLEAST_S ? NavigationMode.NO_BUTTON : NavigationMode.THREE_BUTTONS;
    }

    public WindowBounds getRealBounds(Context context, CachedDisplayInfo cachedDisplayInfo) {
        if (Utilities.ATLEAST_R) {
            WindowMetrics maximumWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics();
            Rect rect = new Rect();
            normalizeWindowInsets(context, maximumWindowMetrics.getWindowInsets(), rect);
            return new WindowBounds(cachedDisplayInfo.rotation, maximumWindowMetrics.getBounds(), rect);
        }
        Point point = new Point();
        Point point2 = new Point();
        getDisplay(context).getCurrentSizeRange(point, point2);
        Point point3 = cachedDisplayInfo.size;
        int i4 = point3.y;
        int i5 = point3.x;
        return i4 > i5 ? new WindowBounds(i5, i4, point.x, point2.y, cachedDisplayInfo.rotation) : new WindowBounds(i5, i4, point2.x, point.y, cachedDisplayInfo.rotation);
    }

    public int getRotation(Context context) {
        return getDisplay(context).getRotation();
    }

    public int getStatusBarHeight(Context context, boolean z4, int i4) {
        return Math.max(i4, getDimenByName(context.getResources(), z4 ? "status_bar_height_portrait" : "status_bar_height_landscape", "status_bar_height"));
    }

    public boolean isGestureNav(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_navBarInteractionMode", "integer", "android");
        return (identifier != 0 ? resources.getInteger(identifier) : -1) == 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.WindowInsets normalizeWindowInsets(android.content.Context r10, android.view.WindowInsets r11, android.graphics.Rect r12) {
        /*
            r9 = this;
            boolean r0 = com.android.launcher3.Utilities.ATLEAST_R
            if (r0 == 0) goto Lc1
            boolean r0 = r9.mTaskbarDrawnInProcess
            if (r0 != 0) goto La
            goto Lc1
        La:
            android.view.WindowInsets$Builder r0 = new android.view.WindowInsets$Builder
            r0.<init>(r11)
            int r1 = android.view.WindowInsets.Type.navigationBars()
            android.graphics.Insets r1 = r11.getInsets(r1)
            android.content.res.Resources r2 = r10.getResources()
            android.content.res.Configuration r3 = r2.getConfiguration()
            int r4 = r3.smallestScreenWidthDp
            r5 = 600(0x258, float:8.41E-43)
            r6 = 1
            r7 = 0
            if (r4 <= r5) goto L29
            r4 = r6
            goto L2a
        L29:
            r4 = r7
        L2a:
            boolean r5 = r9.isGestureNav(r10)
            int r8 = r3.screenHeightDp
            int r3 = r3.screenWidthDp
            if (r8 <= r3) goto L35
            goto L36
        L35:
            r6 = r7
        L36:
            if (r4 == 0) goto L3a
        L38:
            r2 = r7
            goto L4b
        L3a:
            if (r6 == 0) goto L43
            java.lang.String r3 = "navigation_bar_height"
            int r2 = r9.getDimenByName(r2, r3)
            goto L4b
        L43:
            if (r5 == 0) goto L38
            java.lang.String r3 = "navigation_bar_height_landscape"
            int r2 = r9.getDimenByName(r2, r3)
        L4b:
            int r3 = r1.left
            int r4 = r1.top
            int r1 = r1.right
            android.graphics.Insets r1 = android.graphics.Insets.of(r3, r4, r1, r2)
            int r2 = android.view.WindowInsets.Type.navigationBars()
            r0.setInsets(r2, r1)
            int r2 = android.view.WindowInsets.Type.navigationBars()
            r0.setInsetsIgnoringVisibility(r2, r1)
            int r1 = android.view.WindowInsets.Type.statusBars()
            android.graphics.Insets r1 = r11.getInsets(r1)
            int r2 = r1.left
            int r3 = r1.top
            int r9 = r9.getStatusBarHeight(r10, r6, r3)
            int r10 = r1.right
            int r1 = r1.bottom
            android.graphics.Insets r9 = android.graphics.Insets.of(r2, r9, r10, r1)
            int r10 = android.view.WindowInsets.Type.statusBars()
            r0.setInsets(r10, r9)
            int r10 = android.view.WindowInsets.Type.statusBars()
            r0.setInsetsIgnoringVisibility(r10, r9)
            if (r5 == 0) goto La4
            int r9 = android.view.WindowInsets.Type.tappableElement()
            android.graphics.Insets r9 = r11.getInsets(r9)
            int r10 = r9.left
            int r11 = r9.top
            int r9 = r9.right
            android.graphics.Insets r9 = android.graphics.Insets.of(r10, r11, r9, r7)
            int r10 = android.view.WindowInsets.Type.tappableElement()
            r0.setInsets(r10, r9)
        La4:
            android.view.WindowInsets r9 = r0.build()
            int r10 = android.view.WindowInsets.Type.systemBars()
            int r11 = android.view.WindowInsets.Type.displayCutout()
            r10 = r10 | r11
            android.graphics.Insets r10 = r9.getInsetsIgnoringVisibility(r10)
            int r11 = r10.left
            int r0 = r10.top
            int r1 = r10.right
            int r10 = r10.bottom
            r12.set(r11, r0, r1, r10)
            return r9
        Lc1:
            int r9 = r11.getSystemWindowInsetLeft()
            int r10 = r11.getSystemWindowInsetTop()
            int r0 = r11.getSystemWindowInsetRight()
            int r1 = r11.getSystemWindowInsetBottom()
            r12.set(r9, r10, r0, r1)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.window.WindowManagerProxy.normalizeWindowInsets(android.content.Context, android.view.WindowInsets, android.graphics.Rect):android.view.WindowInsets");
    }

    public WindowManagerProxy(boolean z4) {
        this.mTaskbarDrawnInProcess = z4;
    }

    public int getDimenByName(Resources resources, String str, String str2) {
        int dimenByName = ResourceUtils.getDimenByName(-1, resources, str);
        return dimenByName > -1 ? dimenByName : getDimenByName(resources, str2);
    }

    public CachedDisplayInfo getDisplayInfo(WindowMetrics windowMetrics, int i4) {
        Point point = new Point(windowMetrics.getBounds().right, windowMetrics.getBounds().bottom);
        Rect rect = new Rect();
        DisplayCutout displayCutout = windowMetrics.getWindowInsets().getDisplayCutout();
        if (displayCutout != null) {
            rect.set(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
        }
        return new CachedDisplayInfo(point, i4, rect);
    }
}
