package com.android.quickstep.fallback;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.quickstep.FallbackActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.RotationTouchHelper;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class FallbackRecentsView extends RecentsView implements StateManager.StateListener {
    private static final int TASK_DISMISS_DURATION = 150;
    private Task mHomeTask;

    public FallbackRecentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPrepareGestureEndAnimation$0(Boolean bool) {
        setCurrentTask(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onStateTransitionComplete$1(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setDrawsBelowRecents(true);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void applyLoadPlan(ArrayList arrayList) {
        boolean z4 = false;
        int i4 = getTaskIdsForRunningTaskView()[0];
        Task task = this.mHomeTask;
        if (task != null && task.key.id == i4 && !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((GroupTask) it.next()).containsTask(i4)) {
                    z4 = true;
                    break;
                }
            }
            if (!z4) {
                ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
                arrayList2.addAll(arrayList);
                arrayList2.add(new GroupTask(this.mHomeTask, null, null));
                arrayList = arrayList2;
            }
        }
        super.applyLoadPlan(arrayList);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean canLaunchFullscreenTask() {
        return !((RecentsActivity) this.mActivity).isInState(RecentsState.OVERVIEW_SPLIT_SELECT);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean canStartHomeSafely() {
        return ((RecentsActivity) this.mActivity).canStartHomeSafely();
    }

    @Override // com.android.quickstep.views.RecentsView
    public TaskView getHomeTaskView() {
        Task task = this.mHomeTask;
        if (task != null) {
            return getTaskViewByTaskId(task.key.id);
        }
        return null;
    }

    @Override // com.android.quickstep.views.RecentsView
    public void handleStartHome(boolean z4) {
        ((RecentsActivity) this.mActivity).startHome();
        StatefulActivity statefulActivity = this.mActivity;
        AbstractFloatingView.closeAllOpenViews(statefulActivity, ((RecentsActivity) statefulActivity).isStarted());
    }

    @Override // com.android.quickstep.views.RecentsView
    public void init(OverviewActionsView overviewActionsView, SplitSelectStateController splitSelectStateController) {
        super.init(overviewActionsView, splitSelectStateController);
        setOverviewStateEnabled(true);
        setOverlayEnabled(true);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void initiateSplitSelect(TaskView taskView, int i4, StatsLogManager.EventEnum eventEnum) {
        super.initiateSplitSelect(taskView, i4, eventEnum);
        ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.OVERVIEW_SPLIT_SELECT);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onGestureAnimationEnd() {
        if (this.mCurrentGestureEndTarget == GestureState.GestureEndTarget.HOME) {
            reset();
        }
        super.onGestureAnimationEnd();
    }

    public void onGestureAnimationStartOnHome(Task[] taskArr, RotationTouchHelper rotationTouchHelper) {
        this.mHomeTask = taskArr.length > 0 ? taskArr[0] : null;
        onGestureAnimationStart(taskArr, rotationTouchHelper);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void onPrepareGestureEndAnimation(AnimatorSet animatorSet, GestureState.GestureEndTarget gestureEndTarget, TaskViewSimulator[] taskViewSimulatorArr) {
        TaskView taskViewByTaskId;
        super.onPrepareGestureEndAnimation(animatorSet, gestureEndTarget, taskViewSimulatorArr);
        Task task = this.mHomeTask;
        if (task == null || gestureEndTarget != GestureState.GestureEndTarget.RECENTS || animatorSet == null || (taskViewByTaskId = getTaskViewByTaskId(task.key.id)) == null) {
            return;
        }
        PendingAnimation pendingAnimation = new PendingAnimation(150L);
        createTaskDismissAnimation(pendingAnimation, taskViewByTaskId, true, false, 150L, false);
        pendingAnimation.addEndListener(new Consumer() { // from class: com.android.quickstep.fallback.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FallbackRecentsView.this.lambda$onPrepareGestureEndAnimation$0((Boolean) obj);
            }
        });
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        createPlaybackController.dispatchOnStart();
        animatorSet.play(createPlaybackController.getAnimationPlayer());
    }

    @Override // com.android.quickstep.views.RecentsView, com.android.launcher3.PagedView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent) || ((RecentsState) ((RecentsActivity) this.mActivity).getStateManager().getState()).overviewUi();
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setCurrentTask(int i4) {
        super.setCurrentTask(i4);
        int i5 = getTaskIdsForRunningTaskView()[0];
        Task task = this.mHomeTask;
        if (task == null || task.key.id == i5) {
            return;
        }
        this.mHomeTask = null;
        setRunningTaskHidden(false);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setModalStateEnabled(int i4, boolean z4) {
        if (i4 != -1) {
            setSelectedTask(i4);
            ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.MODAL_TASK, z4);
        } else if (((RecentsActivity) this.mActivity).isInState(RecentsState.MODAL_TASK)) {
            ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.DEFAULT, z4);
            resetModalVisuals();
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setOverviewStateEnabled(boolean z4) {
        super.setOverviewStateEnabled(z4);
        if (z4) {
            setDisallowScrollToClearAll(!((RecentsState) ((RecentsActivity) this.mActivity).getStateManager().getState()).hasClearAllButton());
        }
    }

    @Override // com.android.quickstep.views.RecentsView
    public void setRunningTaskHidden(boolean z4) {
        if (this.mHomeTask != null) {
            z4 = true;
        }
        super.setRunningTaskHidden(z4);
    }

    @Override // com.android.quickstep.views.RecentsView
    public boolean shouldAddStubTaskView(Task[] taskArr) {
        if (taskArr.length > 1) {
            return super.shouldAddStubTaskView(taskArr);
        }
        Task task = taskArr[0];
        Task task2 = this.mHomeTask;
        if (task2 != null && task != null && task2.key.id == task.key.id && getTaskViewCount() == 0 && this.mLoadPlanEverApplied) {
            return false;
        }
        return super.shouldAddStubTaskView(taskArr);
    }

    public FallbackRecentsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, FallbackActivityInterface.INSTANCE);
        ((RecentsActivity) this.mActivity).getStateManager().addStateListener(this);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(RecentsState recentsState) {
        if (recentsState == RecentsState.HOME) {
            reset();
        }
        boolean z4 = recentsState == RecentsState.DEFAULT || recentsState == RecentsState.MODAL_TASK;
        setOverlayEnabled(z4);
        setFreezeViewVisibility(false);
        if (recentsState != RecentsState.MODAL_TASK) {
            setOverviewSelectEnabled(false);
        }
        if (recentsState != RecentsState.OVERVIEW_SPLIT_SELECT) {
            if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
                this.mSplitSelectStateController.resetState();
            } else {
                resetFromSplitSelectionState();
            }
        }
        if (z4) {
            runActionOnRemoteHandles(new c());
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(RecentsState recentsState) {
        setOverviewStateEnabled(true);
        setOverviewGridEnabled(recentsState.displayOverviewTasksAsGrid(((RecentsActivity) this.mActivity).getDeviceProfile()));
        setOverviewFullscreenEnabled(recentsState.isFullScreen());
        if (recentsState == RecentsState.MODAL_TASK) {
            setOverviewSelectEnabled(true);
        }
        setFreezeViewVisibility(true);
    }

    @Override // com.android.quickstep.views.RecentsView
    public void initiateSplitSelect(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        super.initiateSplitSelect(splitConfigurationOptions$SplitSelectSource);
        ((RecentsActivity) this.mActivity).getStateManager().goToState(RecentsState.OVERVIEW_SPLIT_SELECT);
    }
}
