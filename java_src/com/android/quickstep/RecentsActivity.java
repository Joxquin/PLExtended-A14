package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.View;
import android.window.RemoteTransition;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTargetHandler;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.FallbackTaskbarUIController;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.ScrimView;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.fallback.FallbackRecentsStateController;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.fallback.RecentsDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsAtomicAnimationFactory;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.util.TISBindHelper;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class RecentsActivity extends StatefulActivity {
    public static final ActivityTracker ACTIVITY_TRACKER = new ActivityTracker();
    private static final long HOME_APPEAR_DURATION = 250;
    private static final long RECENTS_ANIMATION_TIMEOUT = 1000;
    private OverviewActionsView mActionsView;
    private LauncherAnimationRunner.RemoteAnimationFactory mActivityLaunchAnimationRunner;
    private RecentsDragLayer mDragLayer;
    private FallbackRecentsView mFallbackRecentsView;
    private ScrimView mScrimView;
    private SplitSelectStateController mSplitSelectStateController;
    private StateManager mStateManager;
    private TISBindHelper mTISBindHelper;
    private FallbackTaskbarUIController mTaskbarUIController;
    private Handler mUiHandler = new Handler(Looper.getMainLooper());
    private final Handler mHandler = new Handler();
    private final Runnable mAnimationStartTimeoutRunnable = new RunnableC0542q0(2, this);
    private final LauncherAnimationRunner.RemoteAnimationFactory mAnimationToHomeFactory = new LauncherAnimationRunner.RemoteAnimationFactory() { // from class: com.android.quickstep.t0
        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory
        public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
            RecentsActivity.this.lambda$new$2(i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, animationResult);
        }
    };

    public AnimatorSet composeRecentsLaunchAnimator(RecentsView recentsView, TaskView taskView, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3) {
        AnimatorSet animatorSet = new AnimatorSet();
        boolean taskIsATargetWithMode = TaskUtils.taskIsATargetWithMode(remoteAnimationTargetArr, getTaskId(), 1);
        PendingAnimation pendingAnimation = new PendingAnimation(336L);
        TaskViewUtils.createRecentsWindowAnimator(recentsView, taskView, !taskIsATargetWithMode, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, null, pendingAnimation);
        animatorSet.play(pendingAnimation.buildAnim());
        if (taskIsATargetWithMode) {
            AnimatorSet createAdjacentPageAnimForTaskLaunch = this.mFallbackRecentsView.createAdjacentPageAnimForTaskLaunch(taskView);
            createAdjacentPageAnimForTaskLaunch.setInterpolator(y0.e.f12932F);
            createAdjacentPageAnimForTaskLaunch.setDuration(336L);
            createAdjacentPageAnimForTaskLaunch.addListener(resetStateListener());
            animatorSet.play(createAdjacentPageAnimForTaskLaunch);
        }
        return animatorSet;
    }

    private void initDeviceProfile() {
        this.mDeviceProfile = createDeviceProfile();
        onDeviceProfileInitiated();
    }

    public /* synthetic */ void lambda$new$1() {
        getStateManager().goToState(RecentsState.HOME, false);
    }

    public void lambda$new$2(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
        AnimatorPlaybackController createAnimationToNewWorkspace = getStateManager().createAnimationToNewWorkspace(RecentsState.BG_LAUNCHER, HOME_APPEAR_DURATION, 0);
        createAnimationToNewWorkspace.dispatchOnStart();
        for (RemoteAnimationTarget remoteAnimationTarget : new RemoteAnimationTargets(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, 0).apps) {
            new SurfaceControl.Transaction().setAlpha(remoteAnimationTarget.leash, 1.0f).apply();
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(createAnimationToNewWorkspace.getAnimationPlayer());
        animatorSet.setDuration(HOME_APPEAR_DURATION);
        animationResult.setAnimation(animatorSet, this, new RunnableC0542q0(1, this), true);
    }

    public /* synthetic */ void lambda$startHome$0(RecentsView recentsView) {
        recentsView.finishRecentsAnimation(true, new RunnableC0542q0(0, this));
    }

    public void onAnimationStartTimeout() {
        LauncherAnimationRunner.RemoteAnimationFactory remoteAnimationFactory = this.mActivityLaunchAnimationRunner;
        if (remoteAnimationFactory != null) {
            remoteAnimationFactory.onAnimationCancelled();
        }
    }

    public void onTISConnected(TouchInteractionService.TISBinder tISBinder) {
        TaskbarManager taskbarManager = tISBinder.getTaskbarManager();
        if (taskbarManager != null) {
            taskbarManager.setActivity(this);
        }
    }

    public AnimatorListenerAdapter resetStateListener() {
        return new AnimatorListenerAdapter() { // from class: com.android.quickstep.RecentsActivity.2
            {
                RecentsActivity.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RecentsActivity.this.mFallbackRecentsView.resetTaskVisuals();
                RecentsActivity.this.mStateManager.reapplyState(false);
            }
        };
    }

    public void startHomeInternal() {
        LauncherAnimationRunner launcherAnimationRunner = new LauncherAnimationRunner(getMainThreadHandler(), this.mAnimationToHomeFactory, true);
        OverviewComponentObserver.startHomeIntentSafely(this, ActivityOptions.makeRemoteAnimation(new RemoteAnimationAdapter(launcherAnimationRunner, (long) HOME_APPEAR_DURATION, 0L), new RemoteTransition(launcherAnimationRunner.toRemoteTransition(), getIApplicationThread(), "StartHomeFromRecents")).toBundle());
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void addOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        super.addOnDeviceProfileChangeListener(onDeviceProfileChangeListener);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void applyOverwritesToLogItem(LauncherAtom$ItemInfo.Builder builder) {
    }

    public boolean canStartHomeSafely() {
        OverviewCommandHelper overviewCommandHelper = this.mTISBindHelper.getOverviewCommandHelper();
        return overviewCommandHelper == null || overviewCommandHelper.canStartHomeSafely();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ boolean canUseMultipleShadesForPopup() {
        return true;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void collectStateHandlers(List list) {
        list.add(new FallbackRecentsStateController(this));
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new RecentsAtomicAnimationFactory(this);
    }

    public DeviceProfile createDeviceProfile() {
        DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(this)).getDeviceProfile(this);
        return (this.mDragLayer == null || !isInMultiWindowMode()) ? deviceProfile.toBuilder(this).build() : deviceProfile.getMultiWindowProfile(this, getMultiWindowDisplaySize());
    }

    @Override // com.android.launcher3.views.ActivityContext
    public void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
        Trace.instantForTrack(4096L, "RecentsActivity#DeviceProfileChanged", getDeviceProfile().toSmallString());
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.println(str + "Misc:");
        dumpMisc(str + "\t", printWriter);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ FolderIcon findFolderIcon(int i4) {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ View.AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }

    public OverviewActionsView getActionsView() {
        return this.mActionsView;
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.views.ActivityContext
    public ActivityOptionsWrapper getActivityLaunchOptions(View view, ItemInfo itemInfo) {
        final TaskView taskView;
        final RecentsView recentsView;
        if ((view instanceof TaskView) && (recentsView = (taskView = (TaskView) view).getRecentsView()) != null) {
            final RunnableList runnableList = new RunnableList();
            this.mActivityLaunchAnimationRunner = new LauncherAnimationRunner.RemoteAnimationFactory() { // from class: com.android.quickstep.RecentsActivity.1
                {
                    RecentsActivity.this = this;
                }

                @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
                public void onAnimationCancelled() {
                    RecentsActivity.this.mHandler.removeCallbacks(RecentsActivity.this.mAnimationStartTimeoutRunnable);
                    runnableList.executeAllAndDestroy();
                }

                @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
                public void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
                    RecentsActivity.this.mHandler.removeCallbacks(RecentsActivity.this.mAnimationStartTimeoutRunnable);
                    AnimatorSet composeRecentsLaunchAnimator = RecentsActivity.this.composeRecentsLaunchAnimator(recentsView, taskView, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3);
                    composeRecentsLaunchAnimator.addListener(RecentsActivity.this.resetStateListener());
                    RecentsActivity recentsActivity = RecentsActivity.this;
                    RunnableList runnableList2 = runnableList;
                    Objects.requireNonNull(runnableList2);
                    animationResult.setAnimation(composeRecentsLaunchAnimator, recentsActivity, new RunnableC0542q0(3, runnableList2), true);
                }
            };
            LauncherAnimationRunner launcherAnimationRunner = new LauncherAnimationRunner(this.mUiHandler, this.mActivityLaunchAnimationRunner, true);
            ActivityOptions makeRemoteAnimation = ActivityOptions.makeRemoteAnimation(new RemoteAnimationAdapter(launcherAnimationRunner, 336L, 120L), new RemoteTransition(launcherAnimationRunner.toRemoteTransition(), getIApplicationThread(), "LaunchFromRecents"));
            ActivityOptionsWrapper activityOptionsWrapper = new ActivityOptionsWrapper(makeRemoteAnimation, runnableList);
            makeRemoteAnimation.setSplashScreenStyle(1);
            makeRemoteAnimation.setLaunchDisplayId((view == null || view.getDisplay() == null) ? 0 : view.getDisplay().getDisplayId());
            makeRemoteAnimation.setPendingIntentBackgroundActivityStartMode(1);
            this.mHandler.postDelayed(this.mAnimationStartTimeoutRunnable, RECENTS_ANIMATION_TIMEOUT);
            return activityOptionsWrapper;
        }
        return super.getActivityLaunchOptions(view, itemInfo);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public View.OnLongClickListener getAllAppsItemLongClickListener() {
        return new com.android.launcher3.views.e();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ ActivityAllAppsContainerView getAppsView() {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ CellPosMapper getCellPosMapper() {
        return CellPosMapper.DEFAULT;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ DragController getDragController() {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ DropTargetHandler getDropTargetHandler() {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ Rect getFolderBoundingBox() {
        return super.getFolderBoundingBox();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ OnboardingPrefs getOnboardingPrefs() {
        return null;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View getOverviewPanel() {
        return this.mFallbackRecentsView;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ PopupDataProvider getPopupDataProvider() {
        return null;
    }

    @Override // com.android.launcher3.BaseActivity
    public ScrimView getScrimView() {
        return this.mScrimView;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager getStateManager() {
        return this.mStateManager;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ StringCache getStringCache() {
        return null;
    }

    public FallbackTaskbarUIController getTaskbarUIController() {
        return this.mTaskbarUIController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void hideKeyboard() {
        super.hideKeyboard();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void invalidateParent(ItemInfo itemInfo) {
    }

    public /* bridge */ /* synthetic */ boolean isBindingItems() {
        return false;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void logAppLaunch(StatsLogManager statsLogManager, ItemInfo itemInfo, InstanceId instanceId) {
        super.logAppLaunch(statsLogManager, itemInfo, instanceId);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        startHome();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mStateManager = new StateManager(this, RecentsState.BG_LAUNCHER);
        initDeviceProfile();
        setupViews();
        SystemUiController systemUiController = getSystemUiController();
        boolean attrBoolean = Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, this);
        systemUiController.getClass();
        systemUiController.updateUiState(0, attrBoolean ? 5 : 10);
        ACTIVITY_TRACKER.handleCreate(this);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ACTIVITY_TRACKER.onActivityDestroyed(this);
        this.mActivityLaunchAnimationRunner = null;
        this.mSplitSelectStateController.onDestroy();
        this.mTISBindHelper.onDestroy();
    }

    @Override // android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        ((RecentsModel) RecentsModel.INSTANCE.get(this)).getThumbnailCache().getHighResLoadingState().setVisible(true);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onHandleConfigurationChanged() {
        initDeviceProfile();
        AbstractFloatingView.closeOpenViews(this, true, 2661771);
        dispatchDeviceProfileChanged();
        reapplyUi();
        this.mDragLayer.recreateControllers();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onMultiWindowModeChanged(boolean z4, Configuration configuration) {
        onHandleConfigurationChanged();
        super.onMultiWindowModeChanged(z4, configuration);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        ACTIVITY_TRACKER.handleNewIntent(this);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AccessibilityManagerCompat.sendStateEventToTest(2, getBaseContext());
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStart() {
        this.mFallbackRecentsView.setContentAlpha(1.0f);
        super.onStart();
        this.mFallbackRecentsView.updateLocusId();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        onTrimMemory(20);
        this.mFallbackRecentsView.updateLocusId();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        super.onTrimMemory(i4);
        ((RecentsModel) RecentsModel.INSTANCE.get(this)).onTrimMemory(i4);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void removeOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        super.removeOnDeviceProfileChangeListener(onDeviceProfileChangeListener);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void returnToHomescreen() {
        super.returnToHomescreen();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void runOnBindToTouchInteractionService(Runnable runnable) {
        this.mTISBindHelper.runOnBindToTouchInteractionService(runnable);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ RunnableList sendPendingIntentWithAnimation(View view, PendingIntent pendingIntent, ItemInfo itemInfo) {
        return super.sendPendingIntentWithAnimation(view, pendingIntent, itemInfo);
    }

    public void setTaskbarUIController(FallbackTaskbarUIController fallbackTaskbarUIController) {
        this.mTaskbarUIController = fallbackTaskbarUIController;
    }

    public void setupViews() {
        inflateRootView(R.layout.fallback_recents_activity);
        setContentView(getRootView());
        this.mDragLayer = (RecentsDragLayer) findViewById(R.id.drag_layer);
        this.mScrimView = (ScrimView) findViewById(R.id.scrim_view);
        this.mFallbackRecentsView = (FallbackRecentsView) findViewById(R.id.overview_panel);
        this.mActionsView = (OverviewActionsView) findViewById(R.id.overview_actions_view);
        getRootView().getSysUiScrim().getSysUIProgress().updateValue(0.0f);
        this.mSplitSelectStateController = new SplitSelectStateController(this, this.mHandler, getStateManager(), null, getStatsLogManager(), (SystemUiProxy) SystemUiProxy.INSTANCE.get(this), (RecentsModel) RecentsModel.INSTANCE.get(this));
        this.mDragLayer.recreateControllers();
        this.mFallbackRecentsView.init(this.mActionsView, this.mSplitSelectStateController);
        this.mTISBindHelper = new TISBindHelper(this, new Consumer() { // from class: com.android.quickstep.r0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsActivity.this.onTISConnected((TouchInteractionService.TISBinder) obj);
            }
        });
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ RunnableList startActivitySafely(View view, Intent intent, ItemInfo itemInfo) {
        return super.startActivitySafely(view, intent, itemInfo);
    }

    public void startHome() {
        Log.d("b/293191790", "start home from recents activity");
        final RecentsView recentsView = (RecentsView) getOverviewPanel();
        recentsView.switchToScreenshot(new Runnable() { // from class: com.android.quickstep.s0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsActivity.this.lambda$startHome$0(recentsView);
            }
        });
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void startSplitSelection(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
    }

    @Override // com.android.launcher3.views.ActivityContext
    public /* bridge */ /* synthetic */ void updateOpenFolderPosition(int[] iArr, Rect rect, int i4, int i5) {
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetEnd(RecentsState recentsState) {
        super.onStateSetEnd((BaseState) recentsState);
        if (recentsState == RecentsState.DEFAULT) {
            AccessibilityManagerCompat.sendStateEventToTest(2, getBaseContext());
        }
    }
}
