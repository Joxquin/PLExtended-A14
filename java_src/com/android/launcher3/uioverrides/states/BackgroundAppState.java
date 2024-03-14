package com.android.launcher3.uioverrides.states;

import android.content.Context;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public class BackgroundAppState extends OverviewState {
    private static final int STATE_FLAGS = 395;

    public BackgroundAppState(int i4) {
        super(i4, 1, STATE_FLAGS);
    }

    public static float[] getOverviewScaleAndOffsetForBackgroundState(BaseDraggingActivity baseDraggingActivity) {
        return new float[]{((RecentsView) baseDraggingActivity.getOverviewPanel()).getMaxScaleForFullScreen(), 0.0f};
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final boolean allowTaskbarInitialSplitSelection() {
        return false;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final boolean disallowTaskbarGlobalDrag() {
        return false;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.statemanager.BaseState
    public final boolean displayOverviewTasksAsGrid(DeviceProfile deviceProfile) {
        return false;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final float getDepthUnchecked(Context context) {
        return (DesktopTaskView.DESKTOP_MODE_SUPPORTED && Launcher.getLauncher(context).areFreeformTasksVisible()) ? 0.0f : 1.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public final float getOverviewFullscreenProgress() {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final float[] getOverviewScaleAndOffset(QuickstepLauncher quickstepLauncher) {
        return getOverviewScaleAndOffsetForBackgroundState(quickstepLauncher);
    }

    @Override // com.android.launcher3.LauncherState
    public float getVerticalProgress(Launcher launcher) {
        if (launcher.getDeviceProfile().isVerticalBarLayout()) {
            return 1.0f;
        }
        return (LayoutUtils.getShelfTrackingDistance(launcher, launcher.getDeviceProfile(), ((RecentsView) launcher.getOverviewPanel()).getPagedOrientationHandler()) / Math.max(launcher.getAllAppsController().getShiftRange(), 1.0f)) + 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        return super.getVisibleElements(launcher) & (-9) & (-17) & (-5);
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public int getWorkspaceScrimColor(Launcher launcher) {
        return 0;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public boolean isTaskbarAlignedWithHotseat() {
        boolean z4 = TaskAnimationManager.ENABLE_SHELL_TRANSITIONS;
        return false;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean showTaskThumbnailSplash() {
        return true;
    }
}
