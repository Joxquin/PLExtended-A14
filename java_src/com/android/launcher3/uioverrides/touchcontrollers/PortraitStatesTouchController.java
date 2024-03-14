package com.android.launcher3.uioverrides.touchcontrollers;

import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.AllAppsSwipeController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
/* loaded from: classes.dex */
public class PortraitStatesTouchController extends AbstractStateChangeTouchController {
    private static final String TAG = "PortraitStatesTouchCtrl";
    private final PortraitOverviewStateTouchHelper mOverviewPortraitStateTouchHelper;

    public PortraitStatesTouchController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
        this.mOverviewPortraitStateTouchHelper = new PortraitOverviewStateTouchHelper(launcher);
    }

    public static boolean isTouchOverHotseat(Launcher launcher, MotionEvent motionEvent) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return motionEvent.getY() >= ((float) (launcher.getDragLayer().getHeight() - (deviceProfile.hotseatBarSizePx + deviceProfile.getInsets().bottom)));
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        boolean isInState = this.mLauncher.isInState(LauncherState.NORMAL);
        if (this.mCurrentAnimation != null) {
            AllAppsTransitionController allAppsController = this.mLauncher.getAllAppsController();
            return motionEvent.getY() >= allAppsController.getProgress() * allAppsController.getShiftRange() || isInState;
        }
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            if (!this.mLauncher.getAppsView().shouldContainerScroll(motionEvent)) {
                return false;
            }
        } else if (this.mLauncher.isInState(LauncherState.OVERVIEW)) {
            PortraitOverviewStateTouchHelper portraitOverviewStateTouchHelper = this.mOverviewPortraitStateTouchHelper;
            if (!(portraitOverviewStateTouchHelper.mRecentsView.getTaskViewCount() > 0 ? motionEvent.getY() >= ((float) portraitOverviewStateTouchHelper.mRecentsView.getTaskViewAt(0).getBottom()) : isTouchOverHotseat(portraitOverviewStateTouchHelper.mLauncher, motionEvent))) {
                return false;
            }
        } else if (!isInState && !isTouchOverHotseat(this.mLauncher, motionEvent)) {
            return false;
        }
        return AbstractFloatingView.getTopOpenViewWithType(this.mLauncher, 4193983) == null;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void clearState() {
        super.clearState();
        InteractionJankMonitorWrapper.cancel(25);
        InteractionJankMonitorWrapper.cancel(67);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.userControlled = true;
        LauncherState launcherState3 = LauncherState.NORMAL;
        if (launcherState == launcherState3 && launcherState2 == LauncherState.ALL_APPS) {
            AllAppsSwipeController.applyNormalToAllAppsAnimConfig(this.mLauncher, stateAnimationConfig);
        } else if (launcherState == LauncherState.ALL_APPS && launcherState2 == launcherState3) {
            AllAppsSwipeController.applyAllAppsToNormalConfig(this.mLauncher, stateAnimationConfig);
        }
        return stateAnimationConfig;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        AllAppsState allAppsState = LauncherState.ALL_APPS;
        return (launcherState != allAppsState || z4) ? (launcherState == LauncherState.NORMAL && z4) ? allAppsState : launcherState : FeatureFlags.ENABLE_ALL_APPS_FROM_OVERVIEW.get() ? (LauncherState) this.mLauncher.getStateManager().getLastState() : LauncherState.NORMAL;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float initCurrentAnimation() {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController.initCurrentAnimation():float");
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            InteractionJankMonitorWrapper.begin(this.mLauncher.getRootView(), 25);
            InteractionJankMonitorWrapper.begin(this.mLauncher.getRootView(), 67);
        } else if (action == 1 || action == 3) {
            InteractionJankMonitorWrapper.cancel(25);
            InteractionJankMonitorWrapper.cancel(67);
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onReachedFinalState(LauncherState launcherState) {
        super.onReachedFinalState(launcherState);
        if (launcherState == LauncherState.ALL_APPS) {
            InteractionJankMonitorWrapper.end(25);
        } else if (launcherState == LauncherState.NORMAL) {
            InteractionJankMonitorWrapper.end(67);
        }
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onReinitToState(LauncherState launcherState) {
        super.onReinitToState(launcherState);
        if (launcherState != LauncherState.ALL_APPS) {
            InteractionJankMonitorWrapper.cancel(25);
        }
        if (launcherState != LauncherState.NORMAL) {
            InteractionJankMonitorWrapper.cancel(67);
        }
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onSwipeInteractionCompleted(LauncherState launcherState) {
        super.lambda$onDragEnd$0(launcherState);
        if (this.mStartState == LauncherState.NORMAL && launcherState == LauncherState.OVERVIEW) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).onOverviewShown(true, TAG);
        }
    }
}
