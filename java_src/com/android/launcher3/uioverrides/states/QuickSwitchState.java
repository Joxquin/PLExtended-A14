package com.android.launcher3.uioverrides.states;

import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.quickstep.views.DesktopTaskView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class QuickSwitchState extends BackgroundAppState {
    public QuickSwitchState() {
        super(4);
    }

    @Override // com.android.launcher3.uioverrides.states.BackgroundAppState, com.android.launcher3.LauncherState
    public final float getVerticalProgress(Launcher launcher) {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.BackgroundAppState, com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final int getVisibleElements(Launcher launcher) {
        return 0;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        float shiftRange = launcher.getAllAppsController().getShiftRange();
        LauncherState.NORMAL.getClass();
        return new LauncherState.ScaleAndTranslation(0.9f, 0.0f, shiftRange * 0.0f);
    }

    @Override // com.android.launcher3.uioverrides.states.BackgroundAppState, com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final int getWorkspaceScrimColor(Launcher launcher) {
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && launcher.areFreeformTasksVisible()) {
            return 0;
        }
        return launcher.getDeviceProfile().isTaskbarPresentInApps ? launcher.getColor(R.color.taskbar_background) : GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, launcher);
    }

    @Override // com.android.launcher3.uioverrides.states.BackgroundAppState, com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final boolean isTaskbarAlignedWithHotseat() {
        return false;
    }

    @Override // com.android.launcher3.LauncherState
    public final boolean isTaskbarStashed(Launcher launcher) {
        return !launcher.getDeviceProfile().isTaskbarPresentInApps;
    }
}
