package com.android.launcher3.util.window;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
/* loaded from: classes.dex */
public final class RefreshRateTracker implements DisplayManager.DisplayListener, SafeCloseable {
    private static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new a());
    private final DisplayManager mDM;
    private int mSingleFrameMs;

    private RefreshRateTracker(Context context) {
        this.mSingleFrameMs = 1;
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        this.mDM = displayManager;
        Display display = displayManager.getDisplay(0);
        if (display != null) {
            float refreshRate = display.getRefreshRate();
            this.mSingleFrameMs = refreshRate > 0.0f ? (int) (1000.0f / refreshRate) : 16;
        }
        displayManager.registerDisplayListener(this, Executors.UI_HELPER_EXECUTOR.getHandler());
    }

    public static /* synthetic */ RefreshRateTracker a(Context context) {
        return new RefreshRateTracker(context);
    }

    public static int getSingleFrameMs(Context context) {
        return ((RefreshRateTracker) INSTANCE.get(context)).mSingleFrameMs;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mDM.unregisterDisplayListener(this);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i4) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i4) {
        Display display;
        if (i4 != 0 || (display = this.mDM.getDisplay(0)) == null) {
            return;
        }
        float refreshRate = display.getRefreshRate();
        this.mSingleFrameMs = refreshRate > 0.0f ? (int) (1000.0f / refreshRate) : 16;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i4) {
    }
}
