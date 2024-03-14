package com.android.launcher3.util;

import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public enum NavigationMode {
    THREE_BUTTONS(false, 0, StatsLogManager.LauncherEvent.LAUNCHER_NAVIGATION_MODE_3_BUTTON),
    TWO_BUTTONS(true, 1, StatsLogManager.LauncherEvent.LAUNCHER_NAVIGATION_MODE_2_BUTTON),
    NO_BUTTON(true, 2, StatsLogManager.LauncherEvent.LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON);
    
    public final boolean hasGestures;
    public final StatsLogManager.LauncherEvent launcherEvent;
    public final int resValue;

    NavigationMode(boolean z4, int i4, StatsLogManager.LauncherEvent launcherEvent) {
        this.hasGestures = z4;
        this.resValue = i4;
        this.launcherEvent = launcherEvent;
    }
}
