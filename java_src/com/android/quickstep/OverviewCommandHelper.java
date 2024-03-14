package com.android.quickstep;

import android.content.Intent;
import android.graphics.PointF;
import android.os.SystemClock;
import android.os.Trace;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.TaskbarUIController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.GestureState;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class OverviewCommandHelper {
    private static final int MAX_QUEUE_SIZE = 3;
    private static final String TRANSITION_NAME = "Transition:toOverview";
    public static final int TYPE_HIDE = 3;
    public static final int TYPE_HOME = 5;
    public static final int TYPE_KEYBOARD_INPUT = 2;
    public static final int TYPE_SHOW = 1;
    public static final int TYPE_TOGGLE = 4;
    private final OverviewComponentObserver mOverviewComponentObserver;
    private final TouchInteractionService mService;
    private final TaskAnimationManager mTaskAnimationManager;
    private final ArrayList mPendingCommands = new ArrayList();
    private int mTaskFocusIndexOverride = -1;

    /* renamed from: com.android.quickstep.OverviewCommandHelper$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements RecentsAnimationCallbacks.RecentsAnimationListener {
        final /* synthetic */ BaseActivityInterface val$activityInterface;
        final /* synthetic */ CommandInfo val$cmd;
        final /* synthetic */ AbsSwipeUpHandler val$interactionHandler;

        public AnonymousClass1(BaseActivityInterface baseActivityInterface, AbsSwipeUpHandler absSwipeUpHandler, CommandInfo commandInfo) {
            OverviewCommandHelper.this = r1;
            this.val$activityInterface = baseActivityInterface;
            this.val$interactionHandler = absSwipeUpHandler;
            this.val$cmd = commandInfo;
        }

        public static /* synthetic */ void lambda$onRecentsAnimationStart$0(AbsSwipeUpHandler absSwipeUpHandler) {
            absSwipeUpHandler.onGestureEnded(0.0f, new PointF());
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationCanceled(HashMap hashMap) {
            RecentsView recentsView;
            this.val$interactionHandler.onGestureCancelled();
            this.val$cmd.removeListener(this);
            StatefulActivity createdActivity = this.val$activityInterface.getCreatedActivity();
            if (createdActivity == null || (recentsView = (RecentsView) createdActivity.getOverviewPanel()) == null) {
                return;
            }
            recentsView.onRecentsAnimationComplete();
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
            this.val$activityInterface.runOnInitBackgroundStateUI(new Y(0, this.val$interactionHandler));
            this.val$cmd.removeListener(this);
        }
    }

    /* loaded from: classes.dex */
    public class CommandInfo {
        public final long createTime = SystemClock.elapsedRealtime();
        RecentsAnimationCallbacks mActiveCallbacks;
        public final int type;

        public CommandInfo(int i4) {
            this.type = i4;
        }

        public void removeListener(RecentsAnimationCallbacks.RecentsAnimationListener recentsAnimationListener) {
            RecentsAnimationCallbacks recentsAnimationCallbacks = this.mActiveCallbacks;
            if (recentsAnimationCallbacks != null) {
                recentsAnimationCallbacks.removeListener(recentsAnimationListener);
            }
        }
    }

    public OverviewCommandHelper(TouchInteractionService touchInteractionService, OverviewComponentObserver overviewComponentObserver, TaskAnimationManager taskAnimationManager) {
        this.mService = touchInteractionService;
        this.mOverviewComponentObserver = overviewComponentObserver;
        this.mTaskAnimationManager = taskAnimationManager;
    }

    /* renamed from: addCommand */
    public void lambda$addCommand$0(CommandInfo commandInfo) {
        boolean isEmpty = this.mPendingCommands.isEmpty();
        this.mPendingCommands.add(commandInfo);
        if (isEmpty) {
            executeNext();
        }
    }

    private boolean executeCommand(CommandInfo commandInfo) {
        BaseActivityInterface activityInterface = this.mOverviewComponentObserver.getActivityInterface();
        RecentsView visibleRecentsView = activityInterface.getVisibleRecentsView();
        TaskView taskView = null;
        taskView = null;
        if (visibleRecentsView == null) {
            StatefulActivity createdActivity = activityInterface.getCreatedActivity();
            DeviceProfile deviceProfile = createdActivity != null ? createdActivity.getDeviceProfile() : null;
            TaskbarUIController taskbarController = activityInterface.getTaskbarController();
            Object[] objArr = (!FeatureFlags.ENABLE_KEYBOARD_QUICK_SWITCH.get() || taskbarController == null || deviceProfile == null || !(deviceProfile.isTablet || deviceProfile.isTwoPanels)) ? null : 1;
            if (commandInfo.type == 3) {
                if (objArr == null) {
                    return true;
                }
                int launchFocusedTask = taskbarController.launchFocusedTask();
                this.mTaskFocusIndexOverride = launchFocusedTask;
                if (launchFocusedTask == -1) {
                    return true;
                }
            }
            int i4 = commandInfo.type;
            if (i4 == 2 && objArr != null) {
                taskbarController.openQuickSwitchView();
                return true;
            } else if (i4 == 5) {
                this.mService.startActivity(this.mOverviewComponentObserver.getHomeIntent());
                return true;
            }
        } else {
            int i5 = commandInfo.type;
            if (i5 == 1) {
                return true;
            }
            if (i5 == 3) {
                this.mTaskFocusIndexOverride = -1;
                int nextPage = visibleRecentsView.getNextPage();
                if (nextPage >= 0 && nextPage < visibleRecentsView.getTaskViewCount()) {
                    taskView = (TaskView) visibleRecentsView.getPageAt(nextPage);
                }
                return launchTask(visibleRecentsView, taskView, commandInfo);
            } else if (i5 == 4) {
                return launchTask(visibleRecentsView, getNextTask(visibleRecentsView), commandInfo);
            } else {
                if (i5 == 5) {
                    visibleRecentsView.startHome();
                    return true;
                }
            }
        }
        if (activityInterface.switchToRecentsIfVisible(new X(this, activityInterface, commandInfo))) {
            return false;
        }
        StatefulActivity createdActivity2 = activityInterface.getCreatedActivity();
        if (createdActivity2 != null) {
            InteractionJankMonitorWrapper.begin(createdActivity2.getRootView(), 11);
        }
        GestureState createGestureState = this.mService.createGestureState(GestureState.DEFAULT_STATE, GestureState.TrackpadGestureType.NONE);
        createGestureState.setHandlingAtomicEvent(true);
        AbsSwipeUpHandler newHandler = this.mService.getSwipeUpHandlerFactory().newHandler(createGestureState, commandInfo.createTime);
        newHandler.setGestureEndCallback(new X(this, commandInfo, newHandler));
        newHandler.initWhenReady();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(activityInterface, newHandler, commandInfo);
        RecentsView visibleRecentsView2 = activityInterface.getVisibleRecentsView();
        if (visibleRecentsView2 != null) {
            visibleRecentsView2.moveRunningTaskToFront();
        }
        if (this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            RecentsAnimationCallbacks continueRecentsAnimation = this.mTaskAnimationManager.continueRecentsAnimation(createGestureState);
            commandInfo.mActiveCallbacks = continueRecentsAnimation;
            continueRecentsAnimation.addListener(newHandler);
            this.mTaskAnimationManager.notifyRecentsAnimationState(newHandler);
            newHandler.onGestureStarted(true);
            commandInfo.mActiveCallbacks.addListener(anonymousClass1);
            this.mTaskAnimationManager.notifyRecentsAnimationState(anonymousClass1);
        } else {
            Intent intent = new Intent(newHandler.getLaunchIntent());
            intent.putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, createGestureState.getGestureId());
            commandInfo.mActiveCallbacks = this.mTaskAnimationManager.startRecentsAnimation(createGestureState, intent, newHandler);
            newHandler.onGestureStarted(false);
            commandInfo.mActiveCallbacks.addListener(anonymousClass1);
        }
        Trace.beginAsyncSection(TRANSITION_NAME, 0);
        return false;
    }

    private void executeNext() {
        if (this.mPendingCommands.isEmpty()) {
            return;
        }
        CommandInfo commandInfo = (CommandInfo) this.mPendingCommands.get(0);
        if (executeCommand(commandInfo)) {
            lambda$launchTask$1(commandInfo);
        }
    }

    private TaskView getNextTask(RecentsView recentsView) {
        TaskView runningTaskView = recentsView.getRunningTaskView();
        if (runningTaskView == null) {
            return recentsView.getTaskViewAt(0);
        }
        TaskView nextTaskView = recentsView.getNextTaskView();
        return nextTaskView != null ? nextTaskView : runningTaskView;
    }

    public /* synthetic */ void lambda$executeCommand$2(BaseActivityInterface baseActivityInterface, CommandInfo commandInfo) {
        int i4;
        RecentsView visibleRecentsView = baseActivityInterface.getVisibleRecentsView();
        if (visibleRecentsView != null && ((i4 = commandInfo.type) == 2 || i4 == 3)) {
            updateRecentsViewFocus(visibleRecentsView);
        }
        lambda$launchTask$1(commandInfo);
    }

    public static /* synthetic */ void lambda$requestFocus$4(View view) {
        view.requestFocus();
        view.requestAccessibilityFocus();
    }

    private boolean launchTask(RecentsView recentsView, TaskView taskView, CommandInfo commandInfo) {
        RunnableList runnableList;
        if (taskView != null) {
            taskView.setEndQuickswitchCuj(true);
            runnableList = taskView.launchTasks();
        } else {
            runnableList = null;
        }
        if (runnableList != null) {
            runnableList.add(new W(this, commandInfo, 0));
            return false;
        }
        recentsView.startHome();
        return true;
    }

    /* renamed from: onTransitionComplete */
    public void lambda$executeCommand$3(CommandInfo commandInfo, AbsSwipeUpHandler absSwipeUpHandler) {
        int i4;
        commandInfo.removeListener(absSwipeUpHandler);
        Trace.endAsyncSection(TRANSITION_NAME, 0);
        RecentsView visibleRecentsView = this.mOverviewComponentObserver.getActivityInterface().getVisibleRecentsView();
        if (visibleRecentsView != null && ((i4 = commandInfo.type) == 2 || i4 == 3)) {
            updateRecentsViewFocus(visibleRecentsView);
        }
        lambda$launchTask$1(commandInfo);
    }

    private void requestFocus(View view) {
        view.post(new Y(1, view));
    }

    /* renamed from: scheduleNextTask */
    public void lambda$launchTask$1(CommandInfo commandInfo) {
        if (this.mPendingCommands.isEmpty() || this.mPendingCommands.get(0) != commandInfo) {
            return;
        }
        this.mPendingCommands.remove(0);
        executeNext();
    }

    private void updateRecentsViewFocus(RecentsView recentsView) {
        recentsView.getViewRootImpl().touchModeChanged(false);
        TaskView taskViewAt = recentsView.getTaskViewAt(this.mTaskFocusIndexOverride);
        if (taskViewAt != null) {
            requestFocus(taskViewAt);
            return;
        }
        TaskView nextTaskView = recentsView.getNextTaskView();
        if (nextTaskView != null) {
            requestFocus(nextTaskView);
            return;
        }
        TaskView taskViewAt2 = recentsView.getTaskViewAt(0);
        if (taskViewAt2 != null) {
            requestFocus(taskViewAt2);
        } else {
            requestFocus(recentsView);
        }
    }

    public boolean canStartHomeSafely() {
        return this.mPendingCommands.isEmpty() || ((CommandInfo) this.mPendingCommands.get(0)).type == 5;
    }

    public void clearPendingCommands() {
        this.mPendingCommands.clear();
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("OverviewCommandHelper:");
        printWriter.println("  mPendingCommands=" + this.mPendingCommands.size());
        if (!this.mPendingCommands.isEmpty()) {
            printWriter.println("    pendingCommandType=" + ((CommandInfo) this.mPendingCommands.get(0)).type);
        }
        printWriter.println("  mTaskFocusIndexOverride=" + this.mTaskFocusIndexOverride);
    }

    public void addCommand(int i4) {
        if (this.mPendingCommands.size() >= 3) {
            return;
        }
        Executors.MAIN_EXECUTOR.execute(new W(this, new CommandInfo(i4), 1));
    }
}
