package com.android.launcher3.uioverrides;

import A0.l;
import A0.x;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import android.os.Trace;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.AnalogClock;
import android.widget.TextClock;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.QuickstepAccessibilityDelegate;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.Utilities;
import com.android.launcher3.V0;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.splitscreen.SplitShortcut;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.taskbar.LauncherTaskbarUIController;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import com.android.launcher3.uioverrides.states.QuickstepAtomicAnimationFactory;
import com.android.launcher3.uioverrides.touchcontrollers.NavBarToHomeTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonNavbarToOverviewTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.StatusBarTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.TransposedQuickSwitchTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.TwoButtonNavbarTouchController;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.ObjectWrapper;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.util.PendingSplitSelectInfo;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.util.StartActivityParams;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.quickstep.OverviewCommandHelper;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.util.AsyncClockEventDelegate;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.util.LauncherUnfoldAnimationController;
import com.android.quickstep.util.QuickstepOnboardingPrefs;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.util.SplitToWorkspaceController;
import com.android.quickstep.util.SplitWithKeyboardShortcutController;
import com.android.quickstep.util.TISBindHelper;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import kotlin.jvm.internal.h;
import q1.InterfaceC1363c;
import t1.C1402a;
import t1.C1403b;
import t1.C1404c;
import v1.C1435e;
import w1.C1452d;
import x1.C1458b;
/* loaded from: classes.dex */
public class QuickstepLauncher extends Launcher {
    private static final boolean TRACE_LAYOUTS = SystemProperties.getBoolean("persist.debug.trace_layouts", false);
    private static final String TRACE_RELAYOUT_CLASS = SystemProperties.get("persist.debug.trace_request_layout_class", (String) null);
    private OverviewActionsView mActionsView;
    private BgDataModel.FixedContainerItems mAllAppsPredictions;
    private QuickstepTransitionManager mAppTransitionManager;
    private AsyncClockEventDelegate mAsyncClockEventDelegate;
    private DepthController mDepthController;
    private DesktopVisibilityController mDesktopVisibilityController;
    private boolean mEnableWidgetDepth;
    private HotseatPredictionController mHotseatPredictionController;
    private LauncherUnfoldAnimationController mLauncherUnfoldAnimationController;
    private PendingSplitSelectInfo mPendingSplitSelectInfo = null;
    private SplitSelectStateController mSplitSelectStateController;
    private SplitToWorkspaceController mSplitToWorkspaceController;
    private SplitWithKeyboardShortcutController mSplitWithKeyboardShortcutController;
    private TISBindHelper mTISBindHelper;
    private LauncherTaskbarUIController mTaskbarUIController;
    private RemoteUnfoldTransitionReceiver mUnfoldTransitionProgressProvider;
    private l mViewCapture;

    /* loaded from: classes.dex */
    final class LauncherTaskViewController extends TaskViewTouchController {
        public LauncherTaskViewController(Launcher launcher) {
            super(launcher);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public final boolean isRecentsInteractive() {
            return ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW) || ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public final boolean isRecentsModal() {
            return ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public final void onUserControlledAnimationCreated(AnimatorPlaybackController animatorPlaybackController) {
            ((Launcher) this.mActivity).getStateManager().setCurrentUserControlledAnimation(animatorPlaybackController);
        }
    }

    public static ObjectWrapper getLaunchCookie(ItemInfo itemInfo) {
        if (itemInfo == null) {
            return null;
        }
        int i4 = itemInfo.container;
        if (i4 == -101 || i4 == -100 || i4 >= 0) {
            int i5 = itemInfo.itemType;
            return (i5 == 0 || i5 == 4 || i5 == 6) ? new ObjectWrapper(new Integer(itemInfo.id)) : new ObjectWrapper(Integer.MIN_VALUE);
        }
        return new ObjectWrapper(Integer.MIN_VALUE);
    }

    private void handlePendingActivityRequest() {
        if (this.mPendingActivityRequestCode == -1 || !isInState(LauncherState.NORMAL) || (getActivityFlags() & 4) == 0) {
            return;
        }
        onActivityResult(this.mPendingActivityRequestCode, 0, null);
        startActivity(ProxyActivityStarter.getLaunchIntent(this, null));
    }

    public static void n(QuickstepLauncher quickstepLauncher, SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource, RecentsView recentsView, List list) {
        quickstepLauncher.getClass();
        Task task = (Task) list.get(0);
        splitConfigurationOptions$SplitSelectSource.alreadyRunningTaskId = task != null ? task.key.id : -1;
        if (!FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            recentsView.initiateSplitSelect(splitConfigurationOptions$SplitSelectSource);
            return;
        }
        AbstractFloatingView.closeAllOpenViews(quickstepLauncher);
        int dimensionPixelSize = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_size);
        int dimensionPixelSize2 = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_inset);
        Rect rect = new Rect();
        quickstepLauncher.mSplitSelectStateController.setInitialTaskSelect(splitConfigurationOptions$SplitSelectSource.intent, splitConfigurationOptions$SplitSelectSource.position.stagePosition, splitConfigurationOptions$SplitSelectSource.itemInfo, splitConfigurationOptions$SplitSelectSource.splitEvent, splitConfigurationOptions$SplitSelectSource.alreadyRunningTaskId);
        ((RecentsView) quickstepLauncher.getOverviewPanel()).getPagedOrientationHandler().getInitialSplitPlaceholderBounds(dimensionPixelSize, dimensionPixelSize2, quickstepLauncher.getDeviceProfile(), quickstepLauncher.mSplitSelectStateController.getActiveSplitStagePosition(), rect);
        PendingAnimation pendingAnimation = new PendingAnimation(SplitAnimationTimings.TABLET_HOME_TO_SPLIT.getDuration());
        RectF rectF = new RectF();
        final FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(quickstepLauncher, splitConfigurationOptions$SplitSelectSource.getView(), null, splitConfigurationOptions$SplitSelectSource.getDrawable(), rectF);
        floatingTaskView.setAlpha(1.0f);
        floatingTaskView.addStagingAnimation(pendingAnimation, rectF, rect, false, true);
        quickstepLauncher.mSplitSelectStateController.setFirstFloatingTaskView(floatingTaskView);
        pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.uioverrides.QuickstepLauncher.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                QuickstepLauncher.this.getDragLayer().removeView(floatingTaskView);
                QuickstepLauncher.this.mSplitSelectStateController.getSplitAnimationController().removeSplitInstructionsView(QuickstepLauncher.this);
                QuickstepLauncher.this.mSplitSelectStateController.resetState();
            }
        });
        pendingAnimation.add(quickstepLauncher.mSplitSelectStateController.getSplitAnimationController().getShowSplitInstructionsAnim(quickstepLauncher).buildAnim());
        pendingAnimation.buildAnim().start();
    }

    private void onStateOrResumeChanging(boolean z4) {
        LauncherState launcherState = (LauncherState) getStateManager().getState();
        if ((getActivityFlags() & 1) != 0) {
            DeviceProfile deviceProfile = getDeviceProfile();
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setLauncherKeepClearAreaHeight((launcherState == LauncherState.NORMAL || launcherState == LauncherState.OVERVIEW) && (((getActivityFlags() & 32) != 0) || isUserActive()) && !deviceProfile.isVerticalBarLayout(), deviceProfile.hotseatBarSizePx);
        }
        if (launcherState != LauncherState.NORMAL || z4) {
            return;
        }
        ((RecentsView) getOverviewPanel()).setSwipeDownShouldLaunchApp(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskbarInAppDisplayProgressUpdate(float f4, int i4) {
        LauncherTaskbarUIController launcherTaskbarUIController;
        TaskbarManager taskbarManager = this.mTISBindHelper.getTaskbarManager();
        if (taskbarManager == null || taskbarManager.getCurrentActivityContext() == null || (launcherTaskbarUIController = this.mTaskbarUIController) == null) {
            return;
        }
        launcherTaskbarUIController.onTaskbarInAppDisplayProgressUpdate(f4, i4);
    }

    public static /* synthetic */ void p(QuickstepLauncher quickstepLauncher) {
        LauncherUnfoldAnimationController launcherUnfoldAnimationController = quickstepLauncher.mLauncherUnfoldAnimationController;
        if (launcherUnfoldAnimationController != null) {
            launcherUnfoldAnimationController.updateRegisteredViewsIfNeeded();
        }
    }

    public static void t(QuickstepLauncher quickstepLauncher) {
        TaskbarManager taskbarManager = quickstepLauncher.mTISBindHelper.getTaskbarManager();
        if (taskbarManager != null) {
            taskbarManager.setActivity(quickstepLauncher);
        }
    }

    @Override // com.android.launcher3.Launcher
    public final boolean areFreeformTasksVisible() {
        DesktopVisibilityController desktopVisibilityController = this.mDesktopVisibilityController;
        if (desktopVisibilityController != null) {
            return desktopVisibilityController.areFreeformTasksVisible();
        }
        return false;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindExtraContainerItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        Log.d("QuickstepLauncher", "Bind extra container items");
        int i4 = fixedContainerItems.containerId;
        List list = fixedContainerItems.items;
        if (i4 == -102) {
            this.mAllAppsPredictions = fixedContainerItems;
            ((PredictionRowView) getAppsView().getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).setPredictedApps(list);
        } else if (i4 == -103) {
            Log.d("QuickstepLauncher", "Bind extra container item is hotseat prediction");
            this.mHotseatPredictionController.setPredictedItems(fixedContainerItems);
        } else if (i4 == -111) {
            getPopupDataProvider().setRecommendedWidgets(list);
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindWorkspaceComponentsRemoved(Predicate predicate) {
        super.bindWorkspaceComponentsRemoved(predicate);
        this.mHotseatPredictionController.onModelItemsRemoved(predicate);
    }

    public QuickstepTransitionManager buildAppTransitionManager() {
        return new QuickstepTransitionManager(this);
    }

    public final boolean canStartHomeSafely() {
        OverviewCommandHelper overviewCommandHelper = this.mTISBindHelper.getOverviewCommandHelper();
        return overviewCommandHelper == null || overviewCommandHelper.canStartHomeSafely();
    }

    @Override // com.android.launcher3.Launcher
    public final void closeOpenViews(boolean z4) {
        AbstractFloatingView.closeAllOpenViews(this, z4);
        TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public void collectStateHandlers(List list) {
        super.collectStateHandlers(list);
        list.add(this.mDepthController);
        list.add(new RecentsViewStateController(this));
    }

    @Override // com.android.launcher3.Launcher
    public final void completeAddShortcut(Intent intent, int i4, int i5, int i6, int i7, PendingRequestArgs pendingRequestArgs) {
        if (i4 == -101) {
            this.mHotseatPredictionController.onDeferredDrop(i6, i7);
        }
        super.completeAddShortcut(intent, i4, i5, i6, i7, pendingRequestArgs);
    }

    @Override // com.android.launcher3.Launcher
    public final LauncherAccessibilityDelegate createAccessibilityDelegate() {
        return new QuickstepAccessibilityDelegate(this);
    }

    @Override // com.android.launcher3.Launcher
    public final LauncherWidgetHolder createAppWidgetHolder() {
        IntConsumer intConsumer = new IntConsumer() { // from class: b1.k
            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                Workspace workspace = QuickstepLauncher.this.getWorkspace();
                workspace.getClass();
                workspace.mapOverItems(new V0(workspace, i4));
            }
        };
        QuickstepInteractionHandler quickstepInteractionHandler = new QuickstepInteractionHandler(this);
        ((QuickstepWidgetHolder.QuickstepHolderFactory) ((LauncherWidgetHolder.HolderFactory) ResourceBasedOverride.Overrides.getObject(R.string.widget_holder_factory_class, this, LauncherWidgetHolder.HolderFactory.class))).getClass();
        return !FeatureFlags.ENABLE_WIDGET_HOST_IN_BACKGROUND.get() ? new QuickstepWidgetHolder.QuickstepHolderFactory.AnonymousClass1(this, intConsumer, quickstepInteractionHandler) : new QuickstepWidgetHolder(this, intConsumer, quickstepInteractionHandler);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new QuickstepAtomicAnimationFactory(this);
    }

    @Override // com.android.launcher3.Launcher
    public final OnboardingPrefs createOnboardingPrefs(SharedPreferences sharedPreferences) {
        return new QuickstepOnboardingPrefs(this, sharedPreferences);
    }

    @Override // com.android.launcher3.Launcher
    public final TouchController[] createTouchControllers() {
        NavigationMode navigationMode = DisplayController.getNavigationMode(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getDragController());
        b1.f fVar = new b1.f(this, 1);
        int ordinal = navigationMode.ordinal();
        if (ordinal == 0) {
            arrayList.add(new NoButtonQuickSwitchTouchController(this));
            arrayList.add(new NavBarToHomeTouchController(this, fVar));
            arrayList.add(new NoButtonNavbarToOverviewTouchController(this, fVar));
            arrayList.add(new PortraitStatesTouchController(this));
        } else if (ordinal == 1) {
            arrayList.add(new TwoButtonNavbarTouchController(this));
            arrayList.add(getDeviceProfile().isVerticalBarLayout() ? new TransposedQuickSwitchTouchController(this) : new QuickSwitchTouchController(this, SingleAxisSwipeDetector.HORIZONTAL));
            arrayList.add(new PortraitStatesTouchController(this));
        } else if (ordinal != 2) {
            arrayList.add(new PortraitStatesTouchController(this));
        } else {
            arrayList.add(new NoButtonQuickSwitchTouchController(this));
            arrayList.add(new NavBarToHomeTouchController(this, fVar));
            arrayList.add(new NoButtonNavbarToOverviewTouchController(this, fVar));
        }
        if (!getDeviceProfile().isMultiWindowMode) {
            arrayList.add(new StatusBarTouchController(this));
        }
        arrayList.add(new LauncherTaskViewController(this));
        return (TouchController[]) arrayList.toArray(new TouchController[arrayList.size()]);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.views.ActivityContext
    public final void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
        Trace.instantForTrack(4096L, "QuickstepLauncher#DeviceProfileChanged", getDeviceProfile().toSmallString());
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setLauncherAppIconSize(this.mDeviceProfile.iconSizePx);
        TaskbarManager taskbarManager = this.mTISBindHelper.getTaskbarManager();
        if (taskbarManager != null) {
            taskbarManager.debugWhyTaskbarNotDestroyed("QuickstepLauncher#onDeviceProfileChanged");
        }
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        DepthController depthController = this.mDepthController;
        if (depthController != null) {
            depthController.dump(str, printWriter);
        }
        RecentsView recentsView = (RecentsView) getOverviewPanel();
        printWriter.println("\nQuickstepLauncher:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmOrientationState: ");
        sb.append(recentsView == null ? "recentsNull" : recentsView.getPagedViewOrientedState());
        printWriter.println(sb.toString());
        if (recentsView != null) {
            recentsView.getSplitSelectController().dump(str, printWriter);
        }
        QuickstepTransitionManager quickstepTransitionManager = this.mAppTransitionManager;
        if (quickstepTransitionManager != null) {
            quickstepTransitionManager.dump(str + "\tRingAppearAnimation\t", printWriter);
        }
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            hotseatPredictionController.dump(str, printWriter);
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void enableHotseatEdu(boolean z4) {
        super.enableHotseatEdu(z4);
        this.mHotseatPredictionController.enableHotseatEdu(z4);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final void enterStageSplitFromRunningApp(boolean z4) {
        this.mSplitWithKeyboardShortcutController.enterStageSplit(z4);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public final void finishBindingItems(IntSet intSet) {
        super.finishBindingItems(intSet);
        WellbeingModel.INSTANCE.get(this);
    }

    public final void finishSplitSelectRecovery() {
        this.mPendingSplitSelectInfo = null;
    }

    public final OverviewActionsView getActionsView() {
        return this.mActionsView;
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.views.ActivityContext
    public final ActivityOptionsWrapper getActivityLaunchOptions(View view, ItemInfo itemInfo) {
        int i4;
        ActivityOptionsWrapper activityLaunchOptions = this.mAppTransitionManager.hasControlRemoteAppTransitionPermission() ? this.mAppTransitionManager.getActivityLaunchOptions(view) : super.getActivityLaunchOptions(view, itemInfo);
        long j4 = this.mLastTouchUpTime;
        if (j4 > 0) {
            activityLaunchOptions.options.setSourceInfo(1, j4);
        }
        int i5 = 0;
        if (itemInfo == null || !((i4 = itemInfo.animationType) == 2 || i4 == 1)) {
            activityLaunchOptions.options.setSplashScreenStyle(1);
        } else {
            activityLaunchOptions.options.setSplashScreenStyle(0);
        }
        ActivityOptions activityOptions = activityLaunchOptions.options;
        if (view != null && view.getDisplay() != null) {
            i5 = view.getDisplay().getDisplayId();
        }
        activityOptions.setLaunchDisplayId(i5);
        ActivityOptions activityOptions2 = activityLaunchOptions.options;
        activityOptions2.setPendingIntentBackgroundActivityStartMode(1);
        ObjectWrapper launchCookie = getLaunchCookie(itemInfo);
        if (launchCookie != null) {
            activityOptions2.setLaunchCookie(launchCookie);
        }
        return activityLaunchOptions;
    }

    public final QuickstepTransitionManager getAppTransitionManager() {
        return this.mAppTransitionManager;
    }

    public final DepthController getDepthController() {
        return this.mDepthController;
    }

    public final DesktopVisibilityController getDesktopVisibilityController() {
        return this.mDesktopVisibilityController;
    }

    public final HotseatPredictionController getHotseatPredictionController() {
        return this.mHotseatPredictionController;
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.views.ActivityContext
    public final View.OnClickListener getItemOnClickListener() {
        return new View.OnClickListener() { // from class: b1.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuickstepLauncher.this.onItemClicked(view);
            }
        };
    }

    public final float[] getNormalOverviewScaleAndOffset() {
        return DisplayController.getNavigationMode(this).hasGestures ? new float[]{1.0f, 1.0f} : new float[]{1.1f, 0.0f};
    }

    public final PendingSplitSelectInfo getPendingSplitSelectInfo() {
        return this.mPendingSplitSelectInfo;
    }

    public final SplitToWorkspaceController getSplitToWorkspaceController() {
        return this.mSplitToWorkspaceController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.Collection] */
    @Override // com.android.launcher3.Launcher
    public final Stream getSupportedShortcuts() {
        ?? emptyList;
        ArrayList arrayList = new ArrayList(Arrays.asList(SystemShortcut.APP_INFO, WellbeingModel.SHORTCUT_FACTORY, this.mHotseatPredictionController));
        if (!this.mDeviceProfile.isTablet || this.mSplitSelectStateController.isSplitSelectActive()) {
            emptyList = Collections.emptyList();
        } else {
            List<SplitConfigurationOptions$SplitPositionOption> splitPositionOptions = ((RecentsView) getOverviewPanel()).getPagedOrientationHandler().getSplitPositionOptions(this.mDeviceProfile);
            emptyList = new ArrayList();
            for (final SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption : splitPositionOptions) {
                emptyList.add(new SystemShortcut.Factory() { // from class: com.android.launcher3.popup.q
                    @Override // com.android.launcher3.popup.SystemShortcut.Factory
                    public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
                        return new SplitShortcut(view, itemInfo, (QuickstepLauncher) context, SplitConfigurationOptions$SplitPositionOption.this) { // from class: com.android.launcher3.popup.QuickstepSystemShortcut$SplitSelectSystemShortcut
                            {
                                int i4 = r11.iconResId;
                                int i5 = r11.textResId;
                            }
                        };
                    }
                });
            }
        }
        arrayList.addAll(emptyList);
        arrayList.add(SystemShortcut.WIDGETS);
        arrayList.add(SystemShortcut.INSTALL);
        return arrayList.stream();
    }

    public final LauncherTaskbarUIController getTaskbarUIController() {
        return this.mTaskbarUIController;
    }

    public final RemoteUnfoldTransitionReceiver getUnfoldTransitionProgressProvider() {
        return this.mUnfoldTransitionProgressProvider;
    }

    @Override // com.android.launcher3.Launcher
    public final void handleGestureContract(Intent intent) {
        if (FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            super.handleGestureContract(intent);
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void handleSplitAnimationGoingToHome() {
        this.mSplitSelectStateController.getSplitAnimationController().playPlaceholderDismissAnim(this);
    }

    public final boolean hasPendingSplitSelectInfo() {
        return this.mPendingSplitSelectInfo != null;
    }

    @Override // com.android.launcher3.Launcher
    public final void launchAppPair(WorkspaceItemInfo workspaceItemInfo, WorkspaceItemInfo workspaceItemInfo2) {
        this.mSplitSelectStateController.getAppPairsController().launchAppPair(workspaceItemInfo, workspaceItemInfo2);
    }

    public final void launchSplitTasks(final ConstraintLayout constraintLayout, final GroupTask groupTask) {
        Task task = groupTask.task2;
        if (task == null) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: b1.l
                @Override // java.lang.Runnable
                public final void run() {
                    QuickstepLauncher quickstepLauncher = QuickstepLauncher.this;
                    GroupTask groupTask2 = groupTask;
                    View view = constraintLayout;
                    quickstepLauncher.getClass();
                    ActivityManagerWrapper.getInstance().startActivityFromRecents(groupTask2.task1.key, quickstepLauncher.getActivityLaunchOptions(view, null).options);
                }
            });
            return;
        }
        SplitSelectStateController splitSelectStateController = this.mSplitSelectStateController;
        int i4 = groupTask.task1.key.id;
        int i5 = task.key.id;
        b1.f fVar = new b1.f(this, 3);
        SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds = groupTask.mSplitBounds;
        splitSelectStateController.launchExistingSplitPair(null, i4, i5, 0, fVar, true, splitConfigurationOptions$SplitBounds == null ? 0.5f : splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void logAppLaunch(StatsLogManager statsLogManager, ItemInfo itemInfo, InstanceId instanceId) {
        int i4;
        if (this.mAllAppsSessionLogId != null && LauncherState.ALL_APPS.equals(getStateManager().getCurrentStableState())) {
            instanceId = this.mAllAppsSessionLogId;
        }
        StatsLogManager.StatsLogger withInstanceId = statsLogManager.logger().withItemInfo(itemInfo).withInstanceId(instanceId);
        BgDataModel.FixedContainerItems fixedContainerItems = this.mAllAppsPredictions;
        if (fixedContainerItems != null && ((i4 = itemInfo.itemType) == 0 || i4 == 6)) {
            int size = fixedContainerItems.items.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    break;
                }
                ItemInfo itemInfo2 = (ItemInfo) this.mAllAppsPredictions.items.get(i5);
                if (itemInfo2.itemType == itemInfo.itemType && itemInfo2.user.equals(itemInfo.user) && Objects.equals(itemInfo2.getIntent(), itemInfo.getIntent())) {
                    withInstanceId.withRank(i5);
                    break;
                }
                i5++;
            }
        }
        withInstanceId.log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
        this.mHotseatPredictionController.logLaunchedAppRankingInfo(instanceId, itemInfo);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.views.ActivityContext
    public final ActivityOptionsWrapper makeDefaultActivityOptions(int i4) {
        final RunnableList runnableList = new RunnableList();
        ActivityOptions makeCustomAnimation = ActivityOptions.makeCustomAnimation(this, 0, 0, 0, Executors.MAIN_EXECUTOR.getHandler(), null, new ActivityOptions.OnAnimationFinishedListener() { // from class: b1.h
            public final void onAnimationFinished(long j4) {
                RunnableList.this.executeAllAndDestroy();
            }
        });
        makeCustomAnimation.setSplashScreenStyle(i4);
        makeCustomAnimation.setPendingIntentBackgroundActivityStartMode(1);
        return new ActivityOptionsWrapper(makeCustomAnimation, runnableList);
    }

    @Override // com.android.launcher3.BaseActivity
    public final void onActivityFlagsChanged(int i4) {
        LauncherTaskbarUIController launcherTaskbarUIController;
        if ((i4 & 1) != 0) {
            this.mDepthController.setActivityStarted(isStarted());
        }
        if ((i4 & 2) != 0 && (launcherTaskbarUIController = this.mTaskbarUIController) != null) {
            launcherTaskbarUIController.onLauncherResumedOrPaused(hasBeenResumed());
        }
        super.onActivityFlagsChanged(i4);
        if ((i4 & 85) != 0) {
            onStateOrResumeChanging((getActivityFlags() & 64) == 0);
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void onAllAppsTransition(float f4) {
        onTaskbarInAppDisplayProgressUpdate(f4, 1);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        onStateOrResumeChanging(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [W2.a] */
    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Utilities.ATLEAST_U && FeatureFlags.ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION.get()) {
            getApplicationInfo().setEnableOnBackInvokedCallback(true);
        }
        if (bundle != null) {
            this.mPendingSplitSelectInfo = (PendingSplitSelectInfo) ObjectWrapper.unwrap(bundle.getIBinder("launcher.pending_split_select_info"));
        }
        addMultiWindowModeChangedListener(this.mDepthController);
        com.android.systemui.unfold.config.a aVar = new com.android.systemui.unfold.config.a();
        if (aVar.isEnabled()) {
            Executor mainExecutor = getMainExecutor();
            Handler mainHandler = getMainThreadHandler();
            LooperExecutor singleThreadBgExecutor = Executors.UI_HELPER_EXECUTOR;
            DisplayManager displayManager = (DisplayManager) getSystemService(DisplayManager.class);
            h.e(mainExecutor, "mainExecutor");
            h.e(mainHandler, "mainHandler");
            h.e(singleThreadBgExecutor, "singleThreadBgExecutor");
            h.e(displayManager, "displayManager");
            C1402a c1402a = new C1402a();
            C1403b c1403b = new C1403b(c1402a, new W2.b(aVar), new C1458b(new W2.b("launcher")), new C1435e(new C1404c(c1402a), new W2.b(mainExecutor)));
            Object obj = W2.a.f1931c;
            if (!(c1403b instanceof W2.a)) {
                c1403b = new W2.a(c1403b);
            }
            RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver = (RemoteUnfoldTransitionReceiver) ((Optional) c1403b.get()).orElseThrow(new b1.g());
            this.mUnfoldTransitionProgressProvider = remoteUnfoldTransitionReceiver;
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setUnfoldAnimationListener(remoteUnfoldTransitionReceiver);
            this.mLauncherUnfoldAnimationController = new LauncherUnfoldAnimationController(this, getWindowManager(), this.mUnfoldTransitionProgressProvider, new C1452d(displayManager, this, mainHandler));
        }
        if (FeatureFlags.CONTINUOUS_VIEW_TREE_CAPTURE.get()) {
            x xVar = A0.g.f12j;
            x a4 = A0.d.a(this);
            Window window = getWindow();
            String charSequence = window.getAttributes().getTitle().toString();
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = window.toString();
            }
            this.mViewCapture = a4.a(window.getDecorView(), charSequence);
        }
        getWindow().addPrivateFlags(512);
        View.setTraceLayoutSteps(TRACE_LAYOUTS);
        View.setTracedRequestLayoutClassClass(TRACE_RELAYOUT_CLASS);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        str.getClass();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1628825069:
                if (str.equals("android.widget.AnalogClock")) {
                    c4 = 0;
                    break;
                }
                break;
            case 485367094:
                if (str.equals("android.widget.TextClock")) {
                    c4 = 1;
                    break;
                }
                break;
            case 940309185:
                if (str.equals("TextClock")) {
                    c4 = 2;
                    break;
                }
                break;
            case 1778827486:
                if (str.equals("AnalogClock")) {
                    c4 = 3;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
            case 3:
                AnalogClock analogClock = new AnalogClock(context, attributeSet);
                if (this.mAsyncClockEventDelegate == null) {
                    this.mAsyncClockEventDelegate = new AsyncClockEventDelegate(this);
                }
                analogClock.setClockEventDelegate(this.mAsyncClockEventDelegate);
                return analogClock;
            case 1:
            case 2:
                TextClock textClock = new TextClock(context, attributeSet);
                if (this.mAsyncClockEventDelegate == null) {
                    this.mAsyncClockEventDelegate = new AsyncClockEventDelegate(this);
                }
                textClock.setClockEventDelegate(this.mAsyncClockEventDelegate);
                return textClock;
            default:
                return super.onCreateView(view, str, context, attributeSet);
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public void onDeferredResumed() {
        super.onDeferredResumed();
        handlePendingActivityRequest();
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        this.mAppTransitionManager.onActivityDestroyed();
        if (this.mUnfoldTransitionProgressProvider != null) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setUnfoldAnimationListener(null);
            this.mUnfoldTransitionProgressProvider.destroy();
        }
        this.mTISBindHelper.onDestroy();
        LauncherUnfoldAnimationController launcherUnfoldAnimationController = this.mLauncherUnfoldAnimationController;
        if (launcherUnfoldAnimationController != null) {
            launcherUnfoldAnimationController.onDestroy();
        }
        DesktopVisibilityController desktopVisibilityController = this.mDesktopVisibilityController;
        if (desktopVisibilityController != null) {
            desktopVisibilityController.unregisterSystemUiListener();
        }
        SplitSelectStateController splitSelectStateController = this.mSplitSelectStateController;
        if (splitSelectStateController != null) {
            splitSelectStateController.onDestroy();
        }
        AsyncClockEventDelegate asyncClockEventDelegate = this.mAsyncClockEventDelegate;
        if (asyncClockEventDelegate != null) {
            asyncClockEventDelegate.onDestroy();
        }
        super.onDestroy();
        this.mHotseatPredictionController.destroy();
        this.mSplitWithKeyboardShortcutController.onDestroy();
        l lVar = this.mViewCapture;
        if (lVar != null) {
            lVar.close();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final void onDeviceProfileInitiated() {
        super.onDeviceProfileInitiated();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setLauncherAppIconSize(this.mDeviceProfile.iconSizePx);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public final void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        super.onDisplayInfoChanged(context, info, i4);
        if ((i4 & 1) != 0) {
            getStateManager().moveToRestState(false);
        }
        if ((i4 & 16) != 0) {
            getDragLayer().recreateControllers();
            OverviewActionsView overviewActionsView = this.mActionsView;
            if (overviewActionsView != null) {
                overviewActionsView.updateVerticalMargin(info.navigationMode);
            }
        }
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public final void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        ((RecentsModel) RecentsModel.INSTANCE.get(this)).getThumbnailCache().getHighResLoadingState().setVisible(true);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public final void onInitialBindComplete(IntSet intSet, RunnableList runnableList, int i4, boolean z4) {
        runnableList.add(new b1.e(this, 2));
        super.onInitialBindComplete(intSet, runnableList, i4, z4);
    }

    public final void onItemClicked(View view) {
        if (this.mSplitToWorkspaceController.handleSecondAppSelectionForSplit(view)) {
            return;
        }
        super.getItemOnClickListener().onClick(view);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        OverviewCommandHelper overviewCommandHelper = this.mTISBindHelper.getOverviewCommandHelper();
        if (overviewCommandHelper != null) {
            overviewCommandHelper.clearPendingCommands();
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseActivity, android.app.Activity
    public void onPause() {
        LauncherUnfoldAnimationController launcherUnfoldAnimationController = this.mLauncherUnfoldAnimationController;
        if (launcherUnfoldAnimationController != null) {
            launcherUnfoldAnimationController.onPause();
        }
        super.onPause();
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        LauncherUnfoldAnimationController launcherUnfoldAnimationController = this.mLauncherUnfoldAnimationController;
        if (launcherUnfoldAnimationController != null) {
            launcherUnfoldAnimationController.onResume();
        }
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (isInState(LauncherState.OVERVIEW_SPLIT_SELECT)) {
            bundle.putIBinder("launcher.pending_split_select_info", new ObjectWrapper(new PendingSplitSelectInfo(this.mSplitSelectStateController.getInitialTaskId(), this.mSplitSelectStateController.getActiveSplitStagePosition(), this.mSplitSelectStateController.getSplitEvent())));
            bundle.putInt("launcher.state", LauncherState.OVERVIEW.ordinal);
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void onScreenOnChanged(boolean z4) {
        super.onScreenOnChanged(z4);
        if (z4) {
            return;
        }
        ((RecentsView) getOverviewPanel()).finishRecentsAnimation(true, null);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i4) {
        super.onTrimMemory(i4);
        ((RecentsModel) RecentsModel.INSTANCE.get(this)).onTrimMemory(i4);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final void onUiChangedWhileSleeping() {
        Executors.UI_HELPER_EXECUTOR.execute(new b1.e(this, 1));
    }

    @Override // com.android.launcher3.Launcher
    public final void onWidgetsTransition(float f4) {
        super.onWidgetsTransition(f4);
        onTaskbarInAppDisplayProgressUpdate(f4, 2);
        if (this.mEnableWidgetDepth) {
            this.mDepthController.widgetDepth.setValue(Utilities.mapToRange(f4, 0.0f, 1.0f, 0.0f, getDeviceProfile().bottomSheetDepth, y0.e.f12937a));
        }
    }

    @Override // com.android.launcher3.BaseActivity
    public final void registerBackDispatcher() {
        if (FeatureFlags.ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION.get()) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackAnimationCallback() { // from class: com.android.launcher3.uioverrides.QuickstepLauncher.2
                OnBackAnimationCallback mActiveOnBackAnimationCallback;

                public final void onBackCancelled() {
                    OnBackAnimationCallback onBackAnimationCallback = this.mActiveOnBackAnimationCallback;
                    if (onBackAnimationCallback == null) {
                        return;
                    }
                    onBackAnimationCallback.onBackCancelled();
                    this.mActiveOnBackAnimationCallback = null;
                }

                public final void onBackInvoked() {
                    if (this.mActiveOnBackAnimationCallback == null) {
                        this.mActiveOnBackAnimationCallback = QuickstepLauncher.this.getOnBackAnimationCallback();
                    }
                    this.mActiveOnBackAnimationCallback.onBackInvoked();
                    this.mActiveOnBackAnimationCallback = null;
                    TestLogging.recordEvent("Main", "onBackInvoked");
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    OnBackAnimationCallback onBackAnimationCallback = this.mActiveOnBackAnimationCallback;
                    if (onBackAnimationCallback == null) {
                        return;
                    }
                    onBackAnimationCallback.onBackProgressed(backEvent);
                }

                public final void onBackStarted(BackEvent backEvent) {
                    OnBackAnimationCallback onBackAnimationCallback = this.mActiveOnBackAnimationCallback;
                    if (onBackAnimationCallback != null) {
                        onBackAnimationCallback.onBackCancelled();
                    }
                    OnBackAnimationCallback onBackAnimationCallback2 = QuickstepLauncher.this.getOnBackAnimationCallback();
                    this.mActiveOnBackAnimationCallback = onBackAnimationCallback2;
                    onBackAnimationCallback2.onBackStarted(backEvent);
                }
            });
        } else {
            super.registerBackDispatcher();
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final void runOnBindToTouchInteractionService(Runnable runnable) {
        this.mTISBindHelper.runOnBindToTouchInteractionService(runnable);
    }

    @Override // com.android.launcher3.BaseActivity
    public final void setResumed() {
        DesktopVisibilityController desktopVisibilityController;
        if (!DesktopTaskView.DESKTOP_MODE_SUPPORTED || (desktopVisibilityController = this.mDesktopVisibilityController) == null || !desktopVisibilityController.areFreeformTasksVisible() || desktopVisibilityController.isRecentsGestureInProgress()) {
            super.setResumed();
        }
    }

    public final void setTaskbarUIController(LauncherTaskbarUIController launcherTaskbarUIController) {
        this.mTaskbarUIController = launcherTaskbarUIController;
    }

    @Override // com.android.launcher3.Launcher
    public void setupViews() {
        super.setupViews();
        this.mActionsView = (OverviewActionsView) findViewById(R.id.overview_actions_view);
        RecentsView recentsView = (RecentsView) getOverviewPanel();
        SplitSelectStateController splitSelectStateController = new SplitSelectStateController(this, this.mHandler, getStateManager(), this.mDepthController, getStatsLogManager(), (SystemUiProxy) SystemUiProxy.INSTANCE.get(this), (RecentsModel) RecentsModel.INSTANCE.get(this));
        this.mSplitSelectStateController = splitSelectStateController;
        recentsView.init(this.mActionsView, splitSelectStateController);
        this.mSplitWithKeyboardShortcutController = new SplitWithKeyboardShortcutController(this, this.mSplitSelectStateController);
        this.mSplitToWorkspaceController = new SplitToWorkspaceController(this, this.mSplitSelectStateController);
        this.mActionsView.updateDimension(getDeviceProfile(), recentsView.getLastComputedTaskSize());
        this.mActionsView.updateVerticalMargin(DisplayController.getNavigationMode(this));
        QuickstepTransitionManager buildAppTransitionManager = buildAppTransitionManager();
        this.mAppTransitionManager = buildAppTransitionManager;
        buildAppTransitionManager.registerRemoteAnimations();
        this.mAppTransitionManager.registerRemoteTransitions();
        this.mTISBindHelper = new TISBindHelper(this, new b1.f(this, 2));
        this.mDepthController = new DepthController(this);
        DesktopVisibilityController desktopVisibilityController = new DesktopVisibilityController(this);
        this.mDesktopVisibilityController = desktopVisibilityController;
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED) {
            desktopVisibilityController.registerSystemUiListener();
            this.mSplitSelectStateController.initSplitFromDesktopController(this);
        }
        this.mHotseatPredictionController = new HotseatPredictionController(this);
        this.mEnableWidgetDepth = SystemProperties.getBoolean("ro.launcher.depth.widget", true);
        getWorkspace().addOverlayCallback(new InterfaceC1363c() { // from class: b1.j
            @Override // q1.InterfaceC1363c
            public final void onOverlayScrollChanged(float f4) {
                QuickstepLauncher.this.onTaskbarInAppDisplayProgressUpdate(f4, 0);
            }
        });
    }

    @Override // com.android.launcher3.Launcher
    public final void showAllAppsFromIntent(boolean z4) {
        TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY);
        super.showAllAppsFromIntent(z4);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public final void startActivityForResult(Intent intent, int i4, Bundle bundle) {
        if (i4 == -1) {
            super.startActivityForResult(intent, i4, bundle);
            return;
        }
        this.mPendingActivityRequestCode = i4;
        StartActivityParams startActivityParams = new StartActivityParams(this, i4);
        startActivityParams.intent = intent;
        startActivityParams.options = bundle;
        startActivity(ProxyActivityStarter.getLaunchIntent(this, startActivityParams));
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.views.ActivityContext
    public final RunnableList startActivitySafely(View view, Intent intent, ItemInfo itemInfo) {
        this.mHotseatPredictionController.setPauseUIUpdate(this.mTaskbarUIController == null);
        RunnableList startActivitySafely = super.startActivitySafely(view, intent, itemInfo);
        if (startActivitySafely == null) {
            this.mHotseatPredictionController.setPauseUIUpdate(false);
        } else {
            startActivitySafely.add(new b1.e(this, 0));
        }
        return startActivitySafely;
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7, Bundle bundle) {
        if (i4 == -1) {
            super.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
            return;
        }
        this.mPendingActivityRequestCode = i4;
        StartActivityParams startActivityParams = new StartActivityParams(this, i4);
        startActivityParams.intentSender = intentSender;
        startActivityParams.fillInIntent = intent;
        startActivityParams.flagsMask = i5;
        startActivityParams.flagsValues = i6;
        startActivityParams.extraFlags = i7;
        startActivityParams.options = bundle;
        startActivity(ProxyActivityStarter.getLaunchIntent(this, startActivityParams));
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void startSplitSelection(final SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        final RecentsView recentsView = (RecentsView) getOverviewPanel();
        this.mSplitSelectStateController.findLastActiveTasksAndRunCallback(Collections.singletonList(splitConfigurationOptions$SplitSelectSource.itemInfo.getComponentKey()), new Consumer() { // from class: b1.m
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                QuickstepLauncher.n(QuickstepLauncher.this, splitConfigurationOptions$SplitSelectSource, recentsView, (List) obj);
            }
        });
    }

    @Override // com.android.launcher3.Launcher
    public final boolean supportsAdaptiveIconAnimation() {
        return this.mAppTransitionManager.hasControlRemoteAppTransitionPermission();
    }

    @Override // com.android.launcher3.BaseActivity
    public final void tryClearAccessibilityFocus(View view) {
        view.clearAccessibilityFocus();
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public final void onStateSetEnd(LauncherState launcherState) {
        super.onStateSetEnd(launcherState);
        handlePendingActivityRequest();
        int i4 = launcherState.ordinal;
        if (i4 == 2) {
            RecentsView recentsView = (RecentsView) getOverviewPanel();
            AccessibilityManagerCompat.sendCustomAccessibilityEvent(recentsView.getPageAt(recentsView.getCurrentPage()), 8, null);
        } else if (i4 == 4) {
            TaskView currentPageTaskView = ((RecentsView) getOverviewPanel()).getCurrentPageTaskView();
            if (currentPageTaskView != null) {
                currentPageTaskView.launchTask(new b1.f(this, 0));
            } else {
                getStateManager().goToState(LauncherState.NORMAL);
            }
        } else if (i4 != 7) {
            if (i4 != 8) {
                return;
            }
            getStateManager().goToState(LauncherState.OVERVIEW);
            getDragLayer().performHapticFeedback(1);
        } else {
            Workspace workspace = getWorkspace();
            getStateManager().goToState(LauncherState.NORMAL);
            if (workspace.getNextPage() != 0) {
                workspace.post(new b1.e(workspace, 3));
            }
        }
    }
}
