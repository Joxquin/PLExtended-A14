package com.android.launcher3.util;

import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class WallpaperColorHints implements SafeCloseable {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(WallpaperColorHints$Companion$INSTANCE$1.INSTANCE);
    private final Context context;
    private int hints;
    private final SafeCloseable onClose;
    private final List onColorHintsChangedListeners;

    /* renamed from: com.android.launcher3.util.WallpaperColorHints$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Runnable {
        final /* synthetic */ WallpaperManager.OnColorsChangedListener $onColorsChangedListener;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f5287d;
        final /* synthetic */ WallpaperColorHints this$0;

        public /* synthetic */ AnonymousClass1(WallpaperColorHints wallpaperColorHints, WallpaperManager.OnColorsChangedListener onColorsChangedListener, int i4) {
            this.f5287d = i4;
            this.this$0 = wallpaperColorHints;
            this.$onColorsChangedListener = onColorsChangedListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.f5287d) {
                case 0:
                    WallpaperColorHints.access$getWallpaperManager(this.this$0).addOnColorsChangedListener(this.$onColorsChangedListener, Executors.MAIN_EXECUTOR.getHandler());
                    return;
                default:
                    WallpaperColorHints.access$getWallpaperManager(this.this$0).removeOnColorsChangedListener(this.$onColorsChangedListener);
                    return;
            }
        }
    }

    /* renamed from: com.android.launcher3.util.WallpaperColorHints$3  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 implements SafeCloseable {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        @Override // java.lang.AutoCloseable
        public final void close() {
        }
    }

    public WallpaperColorHints(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.context = context;
        this.onColorHintsChangedListeners = new ArrayList();
        if (!Utilities.ATLEAST_S) {
            this.onClose = AnonymousClass3.INSTANCE;
            return;
        }
        Object systemService = context.getSystemService(WallpaperManager.class);
        kotlin.jvm.internal.h.b(systemService);
        WallpaperColors wallpaperColors = ((WallpaperManager) systemService).getWallpaperColors(1);
        this.hints = wallpaperColors != null ? wallpaperColors.getColorHints() : 0;
        final WallpaperManager.OnColorsChangedListener onColorsChangedListener = new WallpaperManager.OnColorsChangedListener() { // from class: com.android.launcher3.util.WallpaperColorHints$onColorsChangedListener$1
            @Override // android.app.WallpaperManager.OnColorsChangedListener
            public final void onColorsChanged(WallpaperColors wallpaperColors2, int i4) {
                WallpaperColorHints.access$onColorsChanged(WallpaperColorHints.this, wallpaperColors2, i4);
            }
        };
        Executors.UI_HELPER_EXECUTOR.execute(new AnonymousClass1(this, onColorsChangedListener, 0));
        this.onClose = new SafeCloseable() { // from class: com.android.launcher3.util.WallpaperColorHints.2
            @Override // java.lang.AutoCloseable
            public final void close() {
                Executors.UI_HELPER_EXECUTOR.execute(new AnonymousClass1(WallpaperColorHints.this, onColorsChangedListener, 1));
            }
        };
    }

    public static final WallpaperManager access$getWallpaperManager(WallpaperColorHints wallpaperColorHints) {
        Object systemService = wallpaperColorHints.context.getSystemService(WallpaperManager.class);
        kotlin.jvm.internal.h.b(systemService);
        return (WallpaperManager) systemService;
    }

    public static final void access$onColorsChanged(WallpaperColorHints wallpaperColorHints, WallpaperColors wallpaperColors, int i4) {
        wallpaperColorHints.getClass();
        if ((i4 & 1) == 0 || !Utilities.ATLEAST_S) {
            return;
        }
        int colorHints = wallpaperColors != null ? wallpaperColors.getColorHints() : 0;
        if (colorHints != wallpaperColorHints.hints) {
            wallpaperColorHints.hints = colorHints;
            Iterator it = ((ArrayList) wallpaperColorHints.onColorHintsChangedListeners).iterator();
            while (it.hasNext()) {
                ((OnColorHintListener) it.next()).onColorHintsChanged(colorHints);
            }
        }
    }

    public static final WallpaperColorHints get(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        Object obj = INSTANCE.get(context);
        kotlin.jvm.internal.h.d(obj, "INSTANCE.get(context)");
        return (WallpaperColorHints) obj;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.onClose.close();
    }

    public final int getHints() {
        return this.hints;
    }

    public final void registerOnColorHintsChangedListener(OnColorHintListener listener) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ((ArrayList) this.onColorHintsChangedListeners).add(listener);
    }

    public final void unregisterOnColorsChangedListener(OnColorHintListener listener) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ((ArrayList) this.onColorHintsChangedListeners).remove(listener);
    }
}
