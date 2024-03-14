package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityThread;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.util.Pair;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.RemoteTransition;
import android.window.TransitionInfo;
import android.window.WindowContainerTransaction;
import com.android.internal.logging.InstanceId;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SplitSelectionListener;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.TaskViewUtils;
import com.android.quickstep.util.SplitSelectDataHolder;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.GroupedTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.SplitInstructionsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.RemoteAnimationRunnerCompat;
import com.android.wm.shell.splitscreen.ISplitSelectListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SplitSelectStateController {
    private static final String TAG = "SplitSelectStateCtor";
    private boolean mAnimateCurrentTaskDismissal;
    private final AppPairsController mAppPairsController;
    private Context mContext;
    private DepthController mDepthController;
    private boolean mDismissingFromSplitPair;
    private FloatingTaskView mFirstFloatingTaskView;
    private final Handler mHandler;
    private GroupedTaskView mLaunchingTaskView;
    private final RecentsModel mRecentTasksModel;
    private boolean mRecentsAnimationRunning;
    private SplitFromDesktopController mSplitFromDesktopController;
    private SplitInstructionsView mSplitInstructionsView;
    private final SplitSelectDataHolder mSplitSelectDataHolder;
    private final StateManager mStateManager;
    private final StatsLogManager mStatsLogManager;
    private final SystemUiProxy mSystemUiProxy;
    private final List mSplitSelectionListeners = new ArrayList();
    private final SplitAnimationController mSplitAnimationController = new SplitAnimationController(this);

    /* loaded from: classes.dex */
    public class RemoteSplitLaunchAnimationRunner extends RemoteAnimationRunnerCompat {
        private final int mInitialTaskId;
        private final int mSecondTaskId;
        private final Consumer mSuccessCallback;

        public RemoteSplitLaunchAnimationRunner(int i4, int i5, Consumer consumer) {
            SplitSelectStateController.this = r1;
            this.mInitialTaskId = i4;
            this.mSecondTaskId = i5;
            this.mSuccessCallback = consumer;
        }

        public /* synthetic */ void lambda$onAnimationCancelled$2() {
            Consumer consumer = this.mSuccessCallback;
            if (consumer != null) {
                consumer.accept(Boolean.valueOf(SplitSelectStateController.this.mRecentsAnimationRunning));
            }
            SplitSelectStateController.this.resetState();
        }

        public /* synthetic */ void lambda$onAnimationStart$0(Runnable runnable) {
            runnable.run();
            Consumer consumer = this.mSuccessCallback;
            if (consumer != null) {
                consumer.accept(Boolean.TRUE);
            }
            SplitSelectStateController.this.resetState();
        }

        public /* synthetic */ void lambda$onAnimationStart$1(RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, Runnable runnable) {
            TaskViewUtils.composeRecentsSplitLaunchAnimatorLegacy(SplitSelectStateController.this.mLaunchingTaskView, this.mInitialTaskId, this.mSecondTaskId, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, SplitSelectStateController.this.mStateManager, SplitSelectStateController.this.mDepthController, new J(0, this, runnable));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onAnimationCancelled() {
            Utilities.postAsyncCallback(SplitSelectStateController.this.mHandler, new I(this, 0));
        }

        @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
        public void onAnimationStart(int i4, final RemoteAnimationTarget[] remoteAnimationTargetArr, final RemoteAnimationTarget[] remoteAnimationTargetArr2, final RemoteAnimationTarget[] remoteAnimationTargetArr3, final Runnable runnable) {
            Utilities.postAsyncCallback(SplitSelectStateController.this.mHandler, new Runnable() { // from class: com.android.quickstep.util.H
                @Override // java.lang.Runnable
                public final void run() {
                    SplitSelectStateController.RemoteSplitLaunchAnimationRunner.this.lambda$onAnimationStart$1(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, runnable);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class RemoteSplitLaunchTransitionRunner extends IRemoteTransition.Stub {
        private final int mInitialTaskId;
        private final int mSecondTaskId;
        private final Consumer mSuccessCallback;

        public RemoteSplitLaunchTransitionRunner(int i4, int i5, Consumer consumer) {
            SplitSelectStateController.this = r1;
            this.mInitialTaskId = i4;
            this.mSecondTaskId = i5;
            this.mSuccessCallback = consumer;
        }

        public static /* synthetic */ void lambda$startAnimation$0(IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            try {
                iRemoteTransitionFinishedCallback.onTransitionFinished((WindowContainerTransaction) null, (SurfaceControl.Transaction) null);
            } catch (RemoteException e4) {
                Log.e(SplitSelectStateController.TAG, "Failed to call transition finished callback", e4);
            }
        }

        public /* synthetic */ void lambda$startAnimation$1(Runnable runnable) {
            runnable.run();
            Consumer consumer = this.mSuccessCallback;
            if (consumer != null) {
                consumer.accept(Boolean.TRUE);
            }
            SplitSelectStateController.this.resetState();
        }

        public /* synthetic */ void lambda$startAnimation$2(TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, Runnable runnable) {
            TaskViewUtils.composeRecentsSplitLaunchAnimator(SplitSelectStateController.this.mLaunchingTaskView, SplitSelectStateController.this.mStateManager, SplitSelectStateController.this.mDepthController, this.mInitialTaskId, this.mSecondTaskId, transitionInfo, transaction, new J(1, this, runnable));
        }

        public void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
        }

        public void startAnimation(IBinder iBinder, final TransitionInfo transitionInfo, final SurfaceControl.Transaction transaction, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            final I i4 = new I(iRemoteTransitionFinishedCallback, 1);
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.K
                @Override // java.lang.Runnable
                public final void run() {
                    SplitSelectStateController.RemoteSplitLaunchTransitionRunner.this.lambda$startAnimation$2(transitionInfo, transaction, i4);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class SplitFromDesktopController {
        private static final String TAG = "SplitFromDesktopController";
        private Drawable mAppIcon;
        private final Launcher mLauncher;
        private final OverviewComponentObserver mOverviewComponentObserver;
        private final int mSplitPlaceholderInset;
        private final int mSplitPlaceholderSize;
        private ISplitSelectListener mSplitSelectListener;
        private ActivityManager.RunningTaskInfo mTaskInfo;

        /* renamed from: com.android.quickstep.util.SplitSelectStateController$SplitFromDesktopController$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends ISplitSelectListener.Stub {
            final /* synthetic */ SplitSelectStateController val$this$0;

            public AnonymousClass1(SplitSelectStateController splitSelectStateController) {
                SplitFromDesktopController.this = r1;
                this.val$this$0 = splitSelectStateController;
            }

            public /* synthetic */ void lambda$onRequestSplitSelect$0(ActivityManager.RunningTaskInfo runningTaskInfo, int i4, Rect rect) {
                SplitFromDesktopController.this.enterSplitSelect(runningTaskInfo, i4, rect);
            }

            @Override // com.android.wm.shell.splitscreen.ISplitSelectListener
            public boolean onRequestSplitSelect(final ActivityManager.RunningTaskInfo runningTaskInfo, final int i4, final Rect rect) {
                if (FeatureFlags.ENABLE_SPLIT_FROM_DESKTOP_TO_WORKSPACE.get()) {
                    Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.M
                        @Override // java.lang.Runnable
                        public final void run() {
                            SplitSelectStateController.SplitFromDesktopController.AnonymousClass1.this.lambda$onRequestSplitSelect$0(runningTaskInfo, i4, rect);
                        }
                    });
                    return true;
                }
                return false;
            }
        }

        /* loaded from: classes.dex */
        public class DesktopSplitRecentsAnimationListener implements RecentsAnimationCallbacks.RecentsAnimationListener {
            private final int mSplitPosition;
            private final RectF mTaskBounds;
            private final Rect mTempRect = new Rect();

            public DesktopSplitRecentsAnimationListener(int i4, Rect rect) {
                SplitFromDesktopController.this = r1;
                RectF rectF = new RectF();
                this.mTaskBounds = rectF;
                this.mSplitPosition = i4;
                rectF.set(rect);
            }

            @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
            public void onRecentsAnimationStart(final RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
                StatsLogManager.LauncherEvent launcherEvent = this.mSplitPosition == 1 ? StatsLogManager.LauncherEvent.LAUNCHER_DESKTOP_MODE_SPLIT_RIGHT_BOTTOM : StatsLogManager.LauncherEvent.LAUNCHER_DESKTOP_MODE_SPLIT_LEFT_TOP;
                SplitFromDesktopController splitFromDesktopController = SplitFromDesktopController.this;
                SplitSelectStateController.this.setInitialTaskSelect(splitFromDesktopController.mTaskInfo, this.mSplitPosition, null, launcherEvent);
                ((RecentsView) SplitFromDesktopController.this.mLauncher.getOverviewPanel()).getPagedOrientationHandler().getInitialSplitPlaceholderBounds(SplitFromDesktopController.this.mSplitPlaceholderSize, SplitFromDesktopController.this.mSplitPlaceholderInset, SplitFromDesktopController.this.mLauncher.getDeviceProfile(), SplitSelectStateController.this.getActiveSplitStagePosition(), this.mTempRect);
                PendingAnimation pendingAnimation = new PendingAnimation(SplitAnimationTimings.TABLET_HOME_TO_SPLIT.getDuration());
                FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(SplitFromDesktopController.this.mLauncher, SplitFromDesktopController.this.mLauncher.getDragLayer(), null, SplitFromDesktopController.this.mAppIcon, new RectF());
                floatingTaskView.setAlpha(1.0f);
                floatingTaskView.addStagingAnimation(pendingAnimation, this.mTaskBounds, this.mTempRect, false, true);
                SplitSelectStateController.this.setFirstFloatingTaskView(floatingTaskView);
                pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.SplitSelectStateController.SplitFromDesktopController.DesktopSplitRecentsAnimationListener.1
                    {
                        DesktopSplitRecentsAnimationListener.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(SplitFromDesktopController.this.mLauncher.getApplicationContext())).onDesktopSplitSelectAnimComplete(SplitFromDesktopController.this.mTaskInfo);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        recentsAnimationController.finish(true, null, false);
                    }
                });
                pendingAnimation.buildAnim().start();
            }
        }

        public SplitFromDesktopController(Launcher launcher) {
            SplitSelectStateController.this = r4;
            this.mLauncher = launcher;
            this.mOverviewComponentObserver = new OverviewComponentObserver(launcher.getApplicationContext(), new RecentsAnimationDeviceState(launcher.getApplicationContext()));
            this.mSplitPlaceholderSize = launcher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_size);
            this.mSplitPlaceholderInset = launcher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_inset);
            this.mSplitSelectListener = new AnonymousClass1(r4);
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(launcher)).registerSplitSelectListener(this.mSplitSelectListener);
        }

        public /* synthetic */ void lambda$enterSplitSelect$0(RecentsAnimationCallbacks recentsAnimationCallbacks) {
            ActivityManagerWrapper.getInstance().startRecentsActivity(this.mOverviewComponentObserver.getOverviewIntent(), SystemClock.uptimeMillis(), recentsAnimationCallbacks, null, null);
        }

        public /* synthetic */ void lambda$enterSplitSelect$1(RecentsAnimationCallbacks recentsAnimationCallbacks, DesktopSplitRecentsAnimationListener desktopSplitRecentsAnimationListener) {
            recentsAnimationCallbacks.addListener(desktopSplitRecentsAnimationListener);
            Executors.UI_HELPER_EXECUTOR.execute(new J(2, this, recentsAnimationCallbacks));
        }

        public void enterSplitSelect(ActivityManager.RunningTaskInfo runningTaskInfo, int i4, Rect rect) {
            this.mTaskInfo = runningTaskInfo;
            String packageName = runningTaskInfo.realActivity.getPackageName();
            PackageManager packageManager = this.mLauncher.getApplicationContext().getPackageManager();
            try {
                this.mAppIcon = new IconProvider(this.mLauncher.getApplicationContext()).getIcon(packageManager.getActivityInfo(this.mTaskInfo.baseActivity, PackageManager.ComponentInfoFlags.of(0L)));
            } catch (PackageManager.NameNotFoundException e4) {
                Log.w(TAG, "Package not found: " + packageName, e4);
            }
            final RecentsAnimationCallbacks recentsAnimationCallbacks = new RecentsAnimationCallbacks((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher.getApplicationContext()), false);
            final DesktopSplitRecentsAnimationListener desktopSplitRecentsAnimationListener = new DesktopSplitRecentsAnimationListener(i4, rect);
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.L
                @Override // java.lang.Runnable
                public final void run() {
                    SplitSelectStateController.SplitFromDesktopController.this.lambda$enterSplitSelect$1(recentsAnimationCallbacks, desktopSplitRecentsAnimationListener);
                }
            });
        }
    }

    public SplitSelectStateController(Context context, Handler handler, StateManager stateManager, DepthController depthController, StatsLogManager statsLogManager, SystemUiProxy systemUiProxy, RecentsModel recentsModel) {
        this.mContext = context;
        this.mHandler = handler;
        this.mStatsLogManager = statsLogManager;
        this.mSystemUiProxy = systemUiProxy;
        this.mStateManager = stateManager;
        this.mDepthController = depthController;
        this.mRecentTasksModel = recentsModel;
        this.mAppPairsController = new AppPairsController(context, this, statsLogManager);
        this.mSplitSelectDataHolder = new SplitSelectDataHolder(this.mContext);
    }

    private void dispatchOnSplitSelectionExit() {
        for (SplitSelectionListener splitSelectionListener : this.mSplitSelectionListeners) {
            splitSelectionListener.onSplitSelectionExit(false);
        }
    }

    private RemoteAnimationAdapter getLegacyRemoteAdapter(int i4, int i5, Consumer consumer) {
        return new RemoteAnimationAdapter(new RemoteSplitLaunchAnimationRunner(i4, i5, consumer), 300L, 150L, ActivityThread.currentActivityThread().getApplicationThread());
    }

    private RemoteTransition getShellRemoteTransition(int i4, int i5, Consumer consumer, String str) {
        return new RemoteTransition(new RemoteSplitLaunchTransitionRunner(i4, i5, consumer), ActivityThread.currentActivityThread().getApplicationThread(), str);
    }

    public /* synthetic */ void lambda$findLastActiveTasksAndRunCallback$0(List list, Consumer consumer, ArrayList arrayList) {
        Task task;
        if (list == null || list.isEmpty()) {
            consumer.accept(Collections.emptyList());
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ComponentKey componentKey = (ComponentKey) it.next();
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    task = null;
                    break;
                }
                GroupTask groupTask = (GroupTask) arrayList.get(size);
                task = groupTask.task1;
                if (!isInstanceOfComponent(task, componentKey) || arrayList2.contains(task)) {
                    task = groupTask.task2;
                    if (!isInstanceOfComponent(task, componentKey) || arrayList2.contains(task)) {
                        size--;
                    }
                }
            }
            arrayList2.add(task);
        }
        consumer.accept(arrayList2);
    }

    public void dump(String str, PrintWriter printWriter) {
        SplitSelectDataHolder splitSelectDataHolder = this.mSplitSelectDataHolder;
        if (splitSelectDataHolder != null) {
            splitSelectDataHolder.dump(str, printWriter);
        }
    }

    public void findLastActiveTasksAndRunCallback(final List list, final Consumer consumer) {
        this.mRecentTasksModel.getTasks(new Consumer() { // from class: com.android.quickstep.util.G
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SplitSelectStateController.this.lambda$findLastActiveTasksAndRunCallback$0(list, consumer, (ArrayList) obj);
            }
        });
    }

    public int getActiveSplitStagePosition() {
        return this.mSplitSelectDataHolder.getInitialStagePosition();
    }

    public AppPairsController getAppPairsController() {
        return this.mAppPairsController;
    }

    public FloatingTaskView getFirstFloatingTaskView() {
        return this.mFirstFloatingTaskView;
    }

    public int getInitialTaskId() {
        return this.mSplitSelectDataHolder.getInitialTaskId();
    }

    public int getSecondTaskId() {
        return this.mSplitSelectDataHolder.getSecondTaskId();
    }

    public SplitAnimationController getSplitAnimationController() {
        return this.mSplitAnimationController;
    }

    public StatsLogManager.EventEnum getSplitEvent() {
        return this.mSplitSelectDataHolder.getSplitEvent();
    }

    public SplitInstructionsView getSplitInstructionsView() {
        return this.mSplitInstructionsView;
    }

    public void initSplitFromDesktopController(Launcher launcher) {
        this.mSplitFromDesktopController = new SplitFromDesktopController(launcher);
    }

    public boolean isAnimateCurrentTaskDismissal() {
        return this.mAnimateCurrentTaskDismissal;
    }

    public boolean isBothSplitAppsConfirmed() {
        return this.mSplitSelectDataHolder.isBothSplitAppsConfirmed();
    }

    public boolean isDismissingFromSplitPair() {
        return this.mDismissingFromSplitPair;
    }

    public boolean isInstanceOfComponent(Task task, ComponentKey componentKey) {
        return task != null && task.key.id != this.mSplitSelectDataHolder.getInitialTaskId() && task.key.baseIntent.getComponent().equals(componentKey.componentName) && task.key.userId == componentKey.user.getIdentifier();
    }

    public boolean isSplitSelectActive() {
        return this.mSplitSelectDataHolder.isSplitSelectActive();
    }

    public void launchExistingSplitPair(GroupedTaskView groupedTaskView, int i4, int i5, int i6, Consumer consumer, boolean z4, float f4) {
        this.mLaunchingTaskView = groupedTaskView;
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        if (z4) {
            makeBasic.setFreezeRecentTasksReordering();
        }
        Bundle bundle = makeBasic.toBundle();
        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            this.mSystemUiProxy.startTasks(i4, bundle, i5, null, i6, f4, getShellRemoteTransition(i4, i5, consumer, "LaunchExistingPair"), null);
            return;
        }
        this.mSystemUiProxy.startTasksWithLegacyTransition(i4, bundle, i5, null, i6, f4, getLegacyRemoteAdapter(i4, i5, consumer), null);
    }

    public void launchInitialAppFullscreen(Consumer consumer) {
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        SplitSelectDataHolder.SplitLaunchData fullscreenLaunchData = this.mSplitSelectDataHolder.getFullscreenLaunchData();
        int initialTaskId = fullscreenLaunchData.getInitialTaskId();
        int secondTaskId = fullscreenLaunchData.getSecondTaskId();
        PendingIntent initialPendingIntent = fullscreenLaunchData.getInitialPendingIntent();
        int initialUserId = fullscreenLaunchData.getInitialUserId();
        int initialStagePosition = fullscreenLaunchData.getInitialStagePosition();
        ShortcutInfo initialShortcut = fullscreenLaunchData.getInitialShortcut();
        Bundle bundle = makeBasic.toBundle();
        RemoteTransition remoteTransition = new RemoteTransition(new RemoteSplitLaunchTransitionRunner(initialTaskId, secondTaskId, consumer), ActivityThread.currentActivityThread().getApplicationThread(), "LaunchAppFullscreen");
        InstanceId instanceId = (InstanceId) LogUtils.getShellShareableInstanceId().first;
        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            int splitLaunchType = fullscreenLaunchData.getSplitLaunchType();
            if (splitLaunchType == 6) {
                this.mSystemUiProxy.startTasks(initialTaskId, bundle, secondTaskId, null, initialStagePosition, 0.5f, remoteTransition, instanceId);
                return;
            } else if (splitLaunchType == 7) {
                this.mSystemUiProxy.startIntentAndTask(initialPendingIntent, initialUserId, bundle, secondTaskId, null, initialStagePosition, 0.5f, remoteTransition, instanceId);
                return;
            } else if (splitLaunchType != 8) {
                return;
            } else {
                this.mSystemUiProxy.startShortcutAndTask(initialShortcut, bundle, initialTaskId, null, initialStagePosition, 0.5f, remoteTransition, instanceId);
                return;
            }
        }
        RemoteAnimationAdapter legacyRemoteAdapter = getLegacyRemoteAdapter(initialTaskId, secondTaskId, consumer);
        int splitLaunchType2 = fullscreenLaunchData.getSplitLaunchType();
        if (splitLaunchType2 == 6) {
            this.mSystemUiProxy.startTasksWithLegacyTransition(initialTaskId, bundle, secondTaskId, null, initialStagePosition, 0.5f, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 == 7) {
            this.mSystemUiProxy.startIntentAndTaskWithLegacyTransition(initialPendingIntent, initialUserId, bundle, secondTaskId, null, initialStagePosition, 0.5f, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 != 8) {
        } else {
            this.mSystemUiProxy.startShortcutAndTaskWithLegacyTransition(initialShortcut, bundle, initialTaskId, null, initialStagePosition, 0.5f, legacyRemoteAdapter, instanceId);
        }
    }

    public void launchSplitTasks(Consumer consumer) {
        Pair shellShareableInstanceId = LogUtils.getShellShareableInstanceId();
        launchTasks(consumer, false, 0.5f, (InstanceId) shellShareableInstanceId.first);
        this.mStatsLogManager.logger().withItemInfo(this.mSplitSelectDataHolder.getItemInfo()).withInstanceId((com.android.launcher3.logging.InstanceId) shellShareableInstanceId.second).log(this.mSplitSelectDataHolder.getSplitEvent());
    }

    public void launchTasks(Consumer consumer, boolean z4, float f4, InstanceId instanceId) {
        TestLogging.recordEvent("Main", "launchSplitTasks");
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        if (z4) {
            makeBasic.setFreezeRecentTasksReordering();
        }
        SplitSelectDataHolder.SplitLaunchData splitLaunchData = this.mSplitSelectDataHolder.getSplitLaunchData();
        int initialTaskId = splitLaunchData.getInitialTaskId();
        int secondTaskId = splitLaunchData.getSecondTaskId();
        ShortcutInfo initialShortcut = splitLaunchData.getInitialShortcut();
        ShortcutInfo secondShortcut = splitLaunchData.getSecondShortcut();
        PendingIntent initialPendingIntent = splitLaunchData.getInitialPendingIntent();
        PendingIntent secondPendingIntent = splitLaunchData.getSecondPendingIntent();
        int initialUserId = splitLaunchData.getInitialUserId();
        int secondUserId = splitLaunchData.getSecondUserId();
        int initialStagePosition = splitLaunchData.getInitialStagePosition();
        Bundle bundle = makeBasic.toBundle();
        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            RemoteTransition shellRemoteTransition = getShellRemoteTransition(initialTaskId, secondTaskId, consumer, "LaunchSplitPair");
            int splitLaunchType = splitLaunchData.getSplitLaunchType();
            if (splitLaunchType == 0) {
                this.mSystemUiProxy.startTasks(initialTaskId, bundle, secondTaskId, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            } else if (splitLaunchType == 1) {
                this.mSystemUiProxy.startIntentAndTask(secondPendingIntent, secondUserId, bundle, initialTaskId, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            } else if (splitLaunchType == 2) {
                this.mSystemUiProxy.startShortcutAndTask(secondShortcut, bundle, initialTaskId, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            } else if (splitLaunchType == 3) {
                this.mSystemUiProxy.startIntentAndTask(initialPendingIntent, initialUserId, bundle, secondTaskId, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            } else if (splitLaunchType == 4) {
                this.mSystemUiProxy.startShortcutAndTask(initialShortcut, bundle, secondTaskId, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            } else if (splitLaunchType != 5) {
                return;
            } else {
                this.mSystemUiProxy.startIntents(initialPendingIntent, initialUserId, initialShortcut, bundle, secondPendingIntent, secondUserId, secondShortcut, null, initialStagePosition, f4, shellRemoteTransition, instanceId);
                return;
            }
        }
        RemoteAnimationAdapter legacyRemoteAdapter = getLegacyRemoteAdapter(initialTaskId, secondTaskId, consumer);
        int splitLaunchType2 = splitLaunchData.getSplitLaunchType();
        if (splitLaunchType2 == 0) {
            this.mSystemUiProxy.startTasksWithLegacyTransition(initialTaskId, bundle, secondTaskId, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 == 1) {
            this.mSystemUiProxy.startIntentAndTaskWithLegacyTransition(secondPendingIntent, secondUserId, bundle, initialTaskId, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 == 2) {
            this.mSystemUiProxy.startShortcutAndTaskWithLegacyTransition(secondShortcut, bundle, initialTaskId, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 == 3) {
            this.mSystemUiProxy.startIntentAndTaskWithLegacyTransition(initialPendingIntent, initialUserId, bundle, secondTaskId, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 == 4) {
            this.mSystemUiProxy.startShortcutAndTaskWithLegacyTransition(initialShortcut, bundle, secondTaskId, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        } else if (splitLaunchType2 != 5) {
        } else {
            this.mSystemUiProxy.startIntentsWithLegacyTransition(initialPendingIntent, initialUserId, initialShortcut, bundle, secondPendingIntent, secondUserId, secondShortcut, null, initialStagePosition, f4, legacyRemoteAdapter, instanceId);
        }
    }

    public void onDestroy() {
        this.mContext = null;
    }

    public void registerSplitListener(SplitSelectionListener splitSelectionListener) {
        if (this.mSplitSelectionListeners.contains(splitSelectionListener)) {
            return;
        }
        this.mSplitSelectionListeners.add(splitSelectionListener);
    }

    public void resetState() {
        this.mSplitSelectDataHolder.resetState();
        dispatchOnSplitSelectionExit();
        this.mRecentsAnimationRunning = false;
        this.mLaunchingTaskView = null;
        this.mAnimateCurrentTaskDismissal = false;
        this.mDismissingFromSplitPair = false;
        this.mFirstFloatingTaskView = null;
        this.mSplitInstructionsView = null;
    }

    public void setAnimateCurrentTaskDismissal(boolean z4) {
        this.mAnimateCurrentTaskDismissal = z4;
    }

    public void setDismissingFromSplitPair(boolean z4) {
        this.mDismissingFromSplitPair = z4;
    }

    public void setFirstFloatingTaskView(FloatingTaskView floatingTaskView) {
        this.mFirstFloatingTaskView = floatingTaskView;
    }

    public void setInitialTaskSelect(Intent intent, int i4, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum, int i5) {
        this.mSplitSelectDataHolder.setInitialTaskSelect(intent, i4, itemInfo, eventEnum, i5);
    }

    public void setRecentsAnimationRunning(boolean z4) {
        this.mRecentsAnimationRunning = z4;
    }

    public void setSecondTask(Task task) {
        this.mSplitSelectDataHolder.setSecondTask(task.key.id);
    }

    public void setSplitInstructionsView(SplitInstructionsView splitInstructionsView) {
        this.mSplitInstructionsView = splitInstructionsView;
    }

    public void unregisterSplitListener(SplitSelectionListener splitSelectionListener) {
        this.mSplitSelectionListeners.remove(splitSelectionListener);
    }

    public void setInitialTaskSelect(ActivityManager.RunningTaskInfo runningTaskInfo, int i4, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum) {
        this.mSplitSelectDataHolder.setInitialTaskSelect(runningTaskInfo, i4, itemInfo, eventEnum);
    }

    public void setSecondTask(Intent intent, UserHandle userHandle) {
        this.mSplitSelectDataHolder.setSecondTask(intent, userHandle);
    }

    public void setSecondTask(PendingIntent pendingIntent) {
        this.mSplitSelectDataHolder.setSecondTask(pendingIntent);
    }

    public void launchSplitTasks() {
        launchSplitTasks(null);
    }
}
