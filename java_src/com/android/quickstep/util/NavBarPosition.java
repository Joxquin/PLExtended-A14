package com.android.quickstep.util;

import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
/* loaded from: classes.dex */
public class NavBarPosition {
    private final int mDisplayRotation;
    private final boolean mIsTablet;
    private final NavigationMode mMode;

    public NavBarPosition(NavigationMode navigationMode, DisplayController.Info info) {
        this.mIsTablet = info.isTablet(info.realBounds);
        this.mMode = navigationMode;
        this.mDisplayRotation = info.rotation;
    }

    public float getRotation() {
        if (isLeftEdge()) {
            return 90.0f;
        }
        return isRightEdge() ? -90 : 0;
    }

    public boolean isLeftEdge() {
        return (this.mMode == NavigationMode.NO_BUTTON || this.mDisplayRotation != 3 || this.mIsTablet) ? false : true;
    }

    public boolean isRightEdge() {
        return (this.mMode == NavigationMode.NO_BUTTON || this.mDisplayRotation != 1 || this.mIsTablet) ? false : true;
    }
}
