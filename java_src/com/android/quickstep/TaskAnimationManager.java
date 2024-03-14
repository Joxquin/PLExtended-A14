package com.android.quickstep;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.SystemProperties;
import android.util.Log;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.GestureState;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes.dex */
public class TaskAnimationManager implements RecentsAnimationCallbacks.RecentsAnimationListener {
    public static final boolean ENABLE_SHELL_TRANSITIONS;
    public static final boolean SHELL_TRANSITIONS_ROTATION;
    private RecentsAnimationCallbacks mCallbacks;
    private RecentsAnimationController mController;
    private Context mCtx;
    private RemoteAnimationTarget[] mLastAppearedTaskTargets;
    private GestureState mLastGestureState;
    private Runnable mLiveTileCleanUpHandler;
    private final TaskStackChangeListener mLiveTileRestartListener = new TaskStackChangeListener() { // from class: com.android.quickstep.TaskAnimationManager.1
        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z4, boolean z5, boolean z6) {
            RecentsView recentsView;
            if (TaskAnimationManager.this.mLastGestureState == null) {
                TaskStackChangeListeners.getInstance().unregisterTaskStackListener(TaskAnimationManager.this.mLiveTileRestartListener);
                return;
            }
            BaseActivityInterface activityInterface = TaskAnimationManager.this.mLastGestureState.getActivityInterface();
            if (!activityInterface.isInLiveTileMode() || activityInterface.getCreatedActivity() == null || (recentsView = (RecentsView) activityInterface.getCreatedActivity().getOverviewPanel()) == null) {
                return;
            }
            recentsView.launchSideTaskInLiveTileModeForRestartedApp(runningTaskInfo.taskId);
            TaskStackChangeListeners.getInstance().unregisterTaskStackListener(TaskAnimationManager.this.mLiveTileRestartListener);
        }
    };
    private RecentsAnimationTargets mTargets;

    static {
        boolean z4 = true;
        boolean z5 = SystemProperties.getBoolean("persist.wm.debug.shell_transit", true);
        ENABLE_SHELL_TRANSITIONS = z5;
        if (!z5 || !SystemProperties.getBoolean("persist.wm.debug.shell_transit_rotate", false)) {
            z4 = false;
        }
        SHELL_TRANSITIONS_ROTATION = z4;
    }

    public TaskAnimationManager(Context context) {
        this.mCtx = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpRecentsAnimation(RecentsAnimationCallbacks recentsAnimationCallbacks) {
        if (this.mCallbacks != recentsAnimationCallbacks) {
            ActiveGestureLog.INSTANCE.addLog("cleanUpRecentsAnimation skipped due to wrong callbacks");
            return;
        }
        ActiveGestureLog.INSTANCE.addLog("cleanUpRecentsAnimation");
        Runnable runnable = this.mLiveTileCleanUpHandler;
        if (runnable != null) {
            runnable.run();
            this.mLiveTileCleanUpHandler = null;
        }
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mLiveTileRestartListener);
        RecentsAnimationTargets recentsAnimationTargets = this.mTargets;
        if (recentsAnimationTargets != null) {
            recentsAnimationTargets.release();
        }
        RecentsAnimationCallbacks recentsAnimationCallbacks2 = this.mCallbacks;
        if (recentsAnimationCallbacks2 != null) {
            recentsAnimationCallbacks2.removeAllListeners();
        }
        this.mController = null;
        this.mCallbacks = null;
        this.mTargets = null;
        this.mLastGestureState = null;
        this.mLastAppearedTaskTargets = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$preloadRecentsAnimation$0(Intent intent) {
        ActivityManagerWrapper.getInstance().startRecentsActivity(intent, 0L, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecentsAnimation$1(Intent intent, long j4) {
        ActivityManagerWrapper.getInstance().startRecentsActivity(intent, j4, this.mCallbacks, null, null);
    }

    public RecentsAnimationCallbacks continueRecentsAnimation(GestureState gestureState) {
        ActiveGestureLog.INSTANCE.addLog("continueRecentsAnimation");
        this.mCallbacks.removeListener(this.mLastGestureState);
        this.mLastGestureState = gestureState;
        this.mCallbacks.addListener(gestureState);
        gestureState.setState(GestureState.STATE_RECENTS_ANIMATION_INITIALIZED | GestureState.STATE_RECENTS_ANIMATION_STARTED);
        gestureState.updateLastAppearedTaskTargets(this.mLastAppearedTaskTargets);
        return this.mCallbacks;
    }

    public void dump() {
    }

    public void enableLiveTileRestartListener() {
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mLiveTileRestartListener);
    }

    public void endLiveTile() {
        RecentsView recentsView;
        GestureState gestureState = this.mLastGestureState;
        if (gestureState == null) {
            return;
        }
        BaseActivityInterface activityInterface = gestureState.getActivityInterface();
        if (!activityInterface.isInLiveTileMode() || activityInterface.getCreatedActivity() == null || (recentsView = (RecentsView) activityInterface.getCreatedActivity().getOverviewPanel()) == null) {
            return;
        }
        recentsView.switchToScreenshot(null, new RunnableC0519i1(0, recentsView));
    }

    public void finishRunningRecentsAnimation(boolean z4) {
        finishRunningRecentsAnimation(z4, false);
    }

    public RecentsAnimationCallbacks getCurrentCallbacks() {
        return this.mCallbacks;
    }

    public boolean isRecentsAnimationRunning() {
        return this.mController != null;
    }

    public void notifyRecentsAnimationState(RecentsAnimationCallbacks.RecentsAnimationListener recentsAnimationListener) {
        if (isRecentsAnimationRunning()) {
            recentsAnimationListener.onRecentsAnimationStart(this.mController, this.mTargets);
        }
    }

    public void preloadRecentsAnimation(Intent intent) {
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0519i1(1, intent));
    }

    public void setLiveTileCleanUpHandler(Runnable runnable) {
        this.mLiveTileCleanUpHandler = runnable;
    }

    public RecentsAnimationCallbacks startRecentsAnimation(GestureState gestureState, final Intent intent, RecentsAnimationCallbacks.RecentsAnimationListener recentsAnimationListener) {
        ActiveGestureLog.INSTANCE.addLog("startRecentsAnimation", ActiveGestureErrorDetector.GestureEvent.START_RECENTS_ANIMATION);
        if (this.mController != null) {
            Log.e("TaskAnimationManager", "New recents animation started before old animation completed", new Exception());
        }
        boolean z4 = false;
        finishRunningRecentsAnimation(false, true);
        RecentsAnimationCallbacks recentsAnimationCallbacks = this.mCallbacks;
        if (recentsAnimationCallbacks != null) {
            cleanUpRecentsAnimation(recentsAnimationCallbacks);
        }
        final BaseActivityInterface activityInterface = gestureState.getActivityInterface();
        this.mLastGestureState = gestureState;
        MainThreadInitializedObject mainThreadInitializedObject = SystemUiProxy.INSTANCE;
        final RecentsAnimationCallbacks recentsAnimationCallbacks2 = new RecentsAnimationCallbacks((SystemUiProxy) mainThreadInitializedObject.get(this.mCtx), activityInterface.allowMinimizeSplitScreen());
        this.mCallbacks = recentsAnimationCallbacks2;
        recentsAnimationCallbacks2.addListener(new RecentsAnimationCallbacks.RecentsAnimationListener() { // from class: com.android.quickstep.TaskAnimationManager.2
            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public void onRecentsAnimationCanceled(HashMap hashMap) {
                TaskAnimationManager.this.cleanUpRecentsAnimation(recentsAnimationCallbacks2);
            }

            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
                TaskAnimationManager.this.cleanUpRecentsAnimation(recentsAnimationCallbacks2);
            }

            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
                if (TaskAnimationManager.this.mCallbacks == null) {
                    return;
                }
                TaskAnimationManager.this.mController = recentsAnimationController;
                TaskAnimationManager.this.mTargets = recentsAnimationTargets;
                int[] runningTaskIds = TaskAnimationManager.this.mLastGestureState.getRunningTaskIds(recentsAnimationTargets.apps.length > 1);
                TaskAnimationManager.this.mLastAppearedTaskTargets = new RemoteAnimationTarget[runningTaskIds.length];
                for (int i4 = 0; i4 < runningTaskIds.length; i4++) {
                    TaskAnimationManager.this.mLastAppearedTaskTargets[i4] = TaskAnimationManager.this.mTargets.findTask(runningTaskIds[i4]);
                }
                TaskAnimationManager.this.mLastGestureState.updateLastAppearedTaskTargets(TaskAnimationManager.this.mLastAppearedTaskTargets);
            }

            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public boolean onSwitchToScreenshot(Runnable runnable) {
                if (!activityInterface.isInLiveTileMode() || activityInterface.getCreatedActivity() == null) {
                    runnable.run();
                    return true;
                }
                RecentsView recentsView = (RecentsView) activityInterface.getCreatedActivity().getOverviewPanel();
                if (recentsView != null) {
                    recentsView.switchToScreenshot(runnable);
                    return true;
                }
                runnable.run();
                return true;
            }

            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
                RemoteAnimationTarget[] remoteAnimationTargetArr2;
                RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[0];
                BaseActivityInterface activityInterface2 = TaskAnimationManager.this.mLastGestureState.getActivityInterface();
                for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr) {
                    if (remoteAnimationTarget2.windowConfiguration.getActivityType() == 2 && (activityInterface2.getCreatedActivity() instanceof RecentsActivity) && DisplayController.getNavigationMode(TaskAnimationManager.this.mCtx) != NavigationMode.NO_BUTTON) {
                        RecentsView recentsView = (RecentsView) activityInterface2.getCreatedActivity().getOverviewPanel();
                        if (recentsView != null) {
                            Log.d("b/293191790", "finish recents animation on " + ((Object) remoteAnimationTarget2.taskInfo.description));
                            recentsView.finishRecentsAnimation(true, null);
                            return;
                        }
                        return;
                    }
                }
                RemoteAnimationTarget[] onStartingSplitLegacy = ((SystemUiProxy) SystemUiProxy.INSTANCE.get(TaskAnimationManager.this.mCtx)).onStartingSplitLegacy(remoteAnimationTargetArr);
                if (onStartingSplitLegacy == null) {
                    onStartingSplitLegacy = new RemoteAnimationTarget[0];
                }
                if ((activityInterface2.isInLiveTileMode() || TaskAnimationManager.this.mLastGestureState.getEndTarget() == GestureState.GestureEndTarget.RECENTS) && activityInterface2.getCreatedActivity() != null) {
                    RecentsView recentsView2 = (RecentsView) activityInterface2.getCreatedActivity().getOverviewPanel();
                    if (recentsView2 != null) {
                        ActiveGestureLog.INSTANCE.addLog("Launching side task id=" + remoteAnimationTarget.taskId);
                        recentsView2.launchSideTaskInLiveTileMode(remoteAnimationTarget.taskId, remoteAnimationTargetArr, new RemoteAnimationTarget[0], onStartingSplitLegacy);
                        return;
                    }
                    ActiveGestureLog.INSTANCE.addLog("Unable to launch side task (no recents)");
                } else if (onStartingSplitLegacy.length > 0) {
                    TaskViewUtils.createSplitAuxiliarySurfacesAnimator(onStartingSplitLegacy, true, null);
                }
                if (TaskAnimationManager.this.mController != null) {
                    if (TaskAnimationManager.this.mLastAppearedTaskTargets != null) {
                        for (RemoteAnimationTarget remoteAnimationTarget3 : TaskAnimationManager.this.mLastAppearedTaskTargets) {
                            for (RemoteAnimationTarget remoteAnimationTarget4 : remoteAnimationTargetArr) {
                                if (remoteAnimationTarget3 != null && remoteAnimationTarget4.taskId != remoteAnimationTarget3.taskId) {
                                    TaskAnimationManager.this.mController.removeTaskTarget(remoteAnimationTarget3.taskId);
                                }
                            }
                        }
                    }
                    TaskAnimationManager.this.mLastAppearedTaskTargets = remoteAnimationTargetArr;
                    TaskAnimationManager.this.mLastGestureState.updateLastAppearedTaskTargets(TaskAnimationManager.this.mLastAppearedTaskTargets);
                }
            }
        });
        final long swipeUpStartTimeMs = gestureState.getSwipeUpStartTimeMs();
        this.mCallbacks.addListener(gestureState);
        this.mCallbacks.addListener(recentsAnimationListener);
        if (ENABLE_SHELL_TRANSITIONS) {
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            TopTaskTracker.CachedTaskInfo runningTask = gestureState.getRunningTask();
            if (runningTask != null && runningTask.isHomeTask()) {
                z4 = true;
            }
            if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && runningTask != null && runningTask.isFreeformTask()) {
                z4 = true;
            }
            if (!(activityInterface.allowAllAppsFromOverview() ? true : z4)) {
                makeBasic.setTransientLaunch();
            }
            makeBasic.setSourceInfo(4, swipeUpStartTimeMs);
            ((SystemUiProxy) mainThreadInitializedObject.getNoCreate()).startRecentsActivity(intent, makeBasic, this.mCallbacks);
        } else {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.j1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskAnimationManager.this.lambda$startRecentsAnimation$1(intent, swipeUpStartTimeMs);
                }
            });
        }
        gestureState.setState(GestureState.STATE_RECENTS_ANIMATION_INITIALIZED);
        return this.mCallbacks;
    }

    public void finishRunningRecentsAnimation(boolean z4, boolean z5) {
        Runnable runnable;
        if (this.mController != null) {
            ActiveGestureLog.INSTANCE.addLog("finishRunningRecentsAnimation", z4);
            if (z5) {
                this.mController.finishController(z4, null, false, true);
                return;
            }
            Handler handler = Executors.MAIN_EXECUTOR.getHandler();
            if (z4) {
                final RecentsAnimationController recentsAnimationController = this.mController;
                Objects.requireNonNull(recentsAnimationController);
                runnable = new Runnable() { // from class: com.android.quickstep.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (r2) {
                            case 0:
                                recentsAnimationController.finishAnimationToHome();
                                return;
                            default:
                                recentsAnimationController.finishAnimationToApp();
                                return;
                        }
                    }
                };
            } else {
                final RecentsAnimationController recentsAnimationController2 = this.mController;
                Objects.requireNonNull(recentsAnimationController2);
                runnable = new Runnable() { // from class: com.android.quickstep.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (r2) {
                            case 0:
                                recentsAnimationController2.finishAnimationToHome();
                                return;
                            default:
                                recentsAnimationController2.finishAnimationToApp();
                                return;
                        }
                    }
                };
            }
            Utilities.postAsyncCallback(handler, runnable);
        }
    }
}
