package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
/* loaded from: classes.dex */
public final class TransposedQuickSwitchTouchController extends QuickSwitchTouchController {
    public TransposedQuickSwitchTouchController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float getShiftRange() {
        return this.mLauncher.getDeviceProfile().heightPx / 2.0f;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        return super.getTargetState(launcherState, z4 ^ this.mLauncher.getDeviceProfile().isSeascape());
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float initCurrentAnimation() {
        float initCurrentAnimation = super.initCurrentAnimation();
        return this.mLauncher.getDeviceProfile().isSeascape() ? initCurrentAnimation : -initCurrentAnimation;
    }
}
