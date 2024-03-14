package com.android.launcher3.taskbar;

import android.animation.Animator;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsController;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class FallbackTaskbarUIController extends TaskbarUIController {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f5021a = 0;
    private final RecentsActivity mRecentsActivity;
    private final StateManager.StateListener mStateListener = new AnonymousClass1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.taskbar.FallbackTaskbarUIController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements StateManager.StateListener {
        public AnonymousClass1() {
        }

        @Override // com.android.launcher3.statemanager.StateManager.StateListener
        public final void onStateTransitionComplete(Object obj) {
            RecentsState recentsState = (RecentsState) obj;
            boolean z4 = recentsState == RecentsState.DEFAULT;
            boolean z5 = recentsState == RecentsState.OVERVIEW_SPLIT_SELECT;
            TaskbarControllers taskbarControllers = FallbackTaskbarUIController.this.mControllers;
            taskbarControllers.taskbarDragController.setDisallowGlobalDrag(z4);
            taskbarControllers.taskbarDragController.setDisallowLongClick(z5);
            TaskbarAllAppsController taskbarAllAppsController = taskbarControllers.taskbarAllAppsController;
            taskbarAllAppsController.setDisallowGlobalDrag(z4);
            taskbarAllAppsController.setDisallowLongClick(z5);
            taskbarControllers.taskbarPopupController.setAllowInitialSplitSelection(z4);
        }

        @Override // com.android.launcher3.statemanager.StateManager.StateListener
        public final void onStateTransitionStart(Object obj) {
            RecentsState recentsState = (RecentsState) obj;
            FallbackTaskbarUIController fallbackTaskbarUIController = FallbackTaskbarUIController.this;
            Animator createAnimToRecentsState = fallbackTaskbarUIController.createAnimToRecentsState(fallbackTaskbarUIController.mControllers.taskbarStashController.getStashDuration());
            if (createAnimToRecentsState != null) {
                createAnimToRecentsState.start();
            }
            fallbackTaskbarUIController.getRecentsView().setTaskLaunchListener(recentsState == RecentsState.DEFAULT ? new RecentsView.TaskLaunchListener() { // from class: com.android.launcher3.taskbar.b
                @Override // com.android.quickstep.views.RecentsView.TaskLaunchListener
                public final void onTaskLaunched() {
                    FallbackTaskbarUIController fallbackTaskbarUIController2 = FallbackTaskbarUIController.this;
                    RecentsState recentsState2 = RecentsState.DEFAULT;
                    int i4 = FallbackTaskbarUIController.f5021a;
                    Animator createAnimToRecentsState2 = fallbackTaskbarUIController2.createAnimToRecentsState(fallbackTaskbarUIController2.mControllers.taskbarStashController.getStashDuration());
                    if (createAnimToRecentsState2 != null) {
                        createAnimToRecentsState2.start();
                    }
                }
            } : null);
        }
    }

    public FallbackTaskbarUIController(RecentsActivity recentsActivity) {
        this.mRecentsActivity = recentsActivity;
    }

    private boolean isIn3pHomeOrRecents() {
        TopTaskTracker.CachedTaskInfo cachedTopTask = ((TopTaskTracker) TopTaskTracker.INSTANCE.get(this.mControllers.taskbarActivityContext)).getCachedTopTask(true);
        return cachedTopTask.isHomeTask() || cachedTopTask.isRecentsTask();
    }

    public final Animator createAnimToRecentsState(long j4) {
        boolean z4 = isIn3pHomeOrRecents() && !Utilities.isRunningInTestHarness();
        TaskbarStashController taskbarStashController = this.mControllers.taskbarStashController;
        taskbarStashController.updateStateForFlag(32, z4);
        taskbarStashController.updateStateForFlag(1, !z4);
        return taskbarStashController.createApplyStateAnimator(j4);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final RecentsView getRecentsView() {
        return (RecentsView) this.mRecentsActivity.getOverviewPanel();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final Stream getSplitMenuOptions() {
        return isIn3pHomeOrRecents() ? Stream.empty() : super.getSplitMenuOptions();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        RecentsActivity recentsActivity = this.mRecentsActivity;
        recentsActivity.setTaskbarUIController(this);
        recentsActivity.getStateManager().addStateListener(this.mStateListener);
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onDestroy() {
        this.mControllers = null;
        RecentsActivity recentsActivity = this.mRecentsActivity;
        recentsActivity.setTaskbarUIController(null);
        recentsActivity.getStateManager().removeStateListener(this.mStateListener);
    }
}
