package com.android.quickstep.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.PendingSplitSelectInfo;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.quickstep.GestureState;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.RotationTouchHelper;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.systemui.shared.recents.model.Task;
/* loaded from: classes.dex */
public class LauncherRecentsView extends RecentsView implements StateManager.StateListener {
    public LauncherRecentsView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onStateTransitionComplete$0(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setDrawsBelowRecents(true);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean canLaunchFullscreenTask() {
        return !(FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get() ? this.mSplitSelectStateController.isSplitSelectActive() : ((QuickstepLauncher) this.mActivity).isInState(LauncherState.OVERVIEW_SPLIT_SELECT));
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean canStartHomeSafely() {
        return ((QuickstepLauncher) this.mActivity).canStartHomeSafely();
    }

    @Override // com.android.quickstep.views.RecentsView
    public DepthController getDepthController() {
        return ((QuickstepLauncher) this.mActivity).getDepthController();
    }

    @Override // com.android.quickstep.views.RecentsView
    public void handleStartHome(boolean z4) {
        StateManager stateManager = ((QuickstepLauncher) this.mActivity).getStateManager();
        boolean shouldAnimateStateChange = z4 & stateManager.shouldAnimateStateChange();
        stateManager.goToState(LauncherState.NORMAL, shouldAnimateStateChange);
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.getSplitAnimationController().playPlaceholderDismissAnim(this.mActivity);
        }
        AbstractFloatingView.closeAllOpenViews(this.mActivity, shouldAnimateStateChange);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void init(OverviewActionsView overviewActionsView, SplitSelectStateController splitSelectStateController) {
        super.init(overviewActionsView, splitSelectStateController);
        setContentAlpha(0.0f);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void initiateSplitSelect(TaskView taskView, int i4, StatsLogManager.EventEnum eventEnum) {
        super.initiateSplitSelect(taskView, i4, eventEnum);
        ((QuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW_SPLIT_SELECT);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onDismissAnimationEnds() {
        super.onDismissAnimationEnds();
        if (((QuickstepLauncher) this.mActivity).isInState(LauncherState.OVERVIEW_SPLIT_SELECT)) {
            setTaskViewsPrimarySplitTranslation(this.mTaskViewsPrimarySplitTranslation);
            setTaskViewsSecondarySplitTranslation(this.mTaskViewsSecondarySplitTranslation);
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onGestureAnimationEnd() {
        DesktopVisibilityController desktopVisibilityController;
        GestureState.GestureEndTarget gestureEndTarget;
        boolean z4 = false;
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED) {
            desktopVisibilityController = ((QuickstepLauncher) this.mActivity).getDesktopVisibilityController();
            gestureEndTarget = this.mCurrentGestureEndTarget;
            if (gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK && desktopVisibilityController.areFreeformTasksVisible()) {
                z4 = true;
            }
        } else {
            desktopVisibilityController = null;
            gestureEndTarget = null;
        }
        super.onGestureAnimationEnd();
        if (desktopVisibilityController != null) {
            desktopVisibilityController.setRecentsGestureEnd(gestureEndTarget);
        }
        if (z4) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mActivity)).showDesktopApps(((QuickstepLauncher) this.mActivity).getDisplayId());
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onGestureAnimationStart(Task[] taskArr, RotationTouchHelper rotationTouchHelper) {
        super.onGestureAnimationStart(taskArr, rotationTouchHelper);
        DesktopVisibilityController desktopVisibilityController = ((QuickstepLauncher) this.mActivity).getDesktopVisibilityController();
        if (desktopVisibilityController != null) {
            desktopVisibilityController.setRecentsGestureStart();
        }
    }

    @Override // com.android.quickstep.views.RecentsView, com.android.quickstep.util.TaskVisualsChangeListener
    public void onTaskIconChanged(int i4) {
        super.onTaskIconChanged(i4);
        if (((QuickstepLauncher) this.mActivity).hasPendingSplitSelectInfo()) {
            PendingSplitSelectInfo pendingSplitSelectInfo = ((QuickstepLauncher) this.mActivity).getPendingSplitSelectInfo();
            if (pendingSplitSelectInfo.getStagedTaskId() == i4) {
                initiateSplitSelect(getTaskViewByTaskId(pendingSplitSelectInfo.getStagedTaskId()), pendingSplitSelectInfo.getStagePosition(), pendingSplitSelectInfo.getSource());
                ((QuickstepLauncher) this.mActivity).finishSplitSelectRecovery();
            }
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onTaskLaunchAnimationEnd(boolean z4) {
        if (z4) {
            ((QuickstepLauncher) this.mActivity).getStateManager().moveToRestState();
        } else {
            ((QuickstepLauncher) this.mActivity).getAllAppsController().setState((LauncherState) ((QuickstepLauncher) this.mActivity).getStateManager().getState());
        }
        super.onTaskLaunchAnimationEnd(z4);
    }

    @Override // com.android.quickstep.views.RecentsView, com.android.launcher3.PagedView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent) || ((LauncherState) ((QuickstepLauncher) this.mActivity).getStateManager().getState()).overviewUi;
    }

    @Override // com.android.quickstep.views.RecentsView
    public void reset() {
        super.reset();
        int recentsActivityRotation = getPagedViewOrientedState().getRecentsActivityRotation();
        setLayoutRotation(recentsActivityRotation, recentsActivityRotation);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setModalStateEnabled(int i4, boolean z4) {
        if (i4 != -1) {
            setSelectedTask(i4);
            ((QuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW_MODAL_TASK, z4);
        } else if (((QuickstepLauncher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK)) {
            ((QuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW, z4);
            resetModalVisuals();
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setOverviewStateEnabled(boolean z4) {
        super.setOverviewStateEnabled(z4);
        Log.d("b/279059025", "overview state enabled state has changed: " + z4);
        if (z4) {
            setDisallowScrollToClearAll(!((((LauncherState) ((QuickstepLauncher) this.mActivity).getStateManager().getState()).getVisibleElements((Launcher) this.mActivity) & 16) != 0));
        }
        if (((QuickstepLauncher) this.mActivity).getDesktopVisibilityController() != null) {
            ((QuickstepLauncher) this.mActivity).getDesktopVisibilityController().setOverviewStateEnabled(z4);
        }
    }

    public LauncherRecentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(LauncherState launcherState) {
        if (launcherState == LauncherState.NORMAL || launcherState == LauncherState.SPRING_LOADED || launcherState == LauncherState.EDIT_MODE || launcherState == LauncherState.ALL_APPS) {
            reset();
        }
        boolean z4 = launcherState == LauncherState.OVERVIEW || launcherState == LauncherState.OVERVIEW_MODAL_TASK;
        setOverlayEnabled(z4);
        setFreezeViewVisibility(false);
        if (launcherState != LauncherState.OVERVIEW_MODAL_TASK) {
            setOverviewSelectEnabled(false);
        }
        if (z4) {
            runActionOnRemoteHandles(new C0594l());
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(LauncherState launcherState) {
        setOverviewStateEnabled(launcherState.overviewUi);
        setOverviewGridEnabled(launcherState.displayOverviewTasksAsGrid(((QuickstepLauncher) this.mActivity).getDeviceProfile()));
        setOverviewFullscreenEnabled(launcherState.getOverviewFullscreenProgress() == 1.0f);
        if (launcherState == LauncherState.OVERVIEW_MODAL_TASK) {
            setOverviewSelectEnabled(true);
        }
        setFreezeViewVisibility(true);
    }

    public LauncherRecentsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, LauncherActivityInterface.INSTANCE);
        ((QuickstepLauncher) this.mActivity).getStateManager().addStateListener(this);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void initiateSplitSelect(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        super.initiateSplitSelect(splitConfigurationOptions$SplitSelectSource);
        ((QuickstepLauncher) this.mActivity).getStateManager().goToState(LauncherState.OVERVIEW_SPLIT_SELECT);
    }
}
