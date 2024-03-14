.class public Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"


# static fields
.field private static final TRACE_LAYOUTS:Z

.field private static final TRACE_RELAYOUT_CLASS:Ljava/lang/String;


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

.field private mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

.field private mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

.field private mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

.field private mEnableWidgetDepth:Z

.field private mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

.field private mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

.field private mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

.field private mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

.field private mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

.field private mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

.field private mViewCapture:LA0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.trace_layouts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->TRACE_LAYOUTS:Z

    const-string v0, "persist.debug.trace_request_layout_class"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->TRACE_RELAYOUT_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    return-void
.end method

.method public static getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ObjectWrapper;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    const/high16 v2, -0x80000000

    if-eq v0, v1, :cond_2

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private handlePendingActivityRequest()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, v2}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static n(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v12, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->intent:Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v13, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    iget-object v14, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v15, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    move/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v8

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    sget-object v3, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    invoke-interface {v3}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v3, v4, v1, v9}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/quickstep/views/FloatingTaskView;->addStagingAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setFirstFloatingTaskView(Lcom/android/quickstep/views/FloatingTaskView;)V

    new-instance v3, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/views/FloatingTaskView;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SplitAnimationController;->getShowSplitInstructionsAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    :goto_1
    return-void
.end method

.method private onStateOrResumeChanging(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    if-ne v0, v5, :cond_4

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isUserActive()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v4, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->setLauncherKeepClearAreaHeight(ZI)V

    :cond_5
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_6

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    :cond_6
    return-void
.end method

.method private onTaskbarInAppDisplayProgressUpdate(FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->updateRegisteredViewsIfNeeded()V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/uioverrides/QuickstepLauncher;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    return-void
.end method

.method public static t(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/animation/AnimatorSet;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitAnimationController;->createPlaceholderDismissAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public static bridge synthetic v(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method


# virtual methods
.method public final areFreeformTasksVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 4

    const-string v0, "QuickstepLauncher"

    const-string v1, "Bind extra container items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v2, -0x66

    iget-object v3, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    if-ne v1, v2, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const-class p1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/16 v2, -0x67

    if-ne v1, v2, :cond_1

    const-string v1, "Bind extra container item is hotseat prediction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x6f

    if-ne v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/PopupDataProvider;->setRecommendedWidgets(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onModelItemsRemoved(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public buildAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final canStartHomeSafely()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TISBindHelper;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewCommandHelper;->canStartHomeSafely()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final closeOpenViews(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    const-string p0, "homekey"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    return-void
.end method

.method public collectStateHandlers(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->collectStateHandlers(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 1

    const/16 v0, -0x65

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0, p4, p5}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onDeferredDrop(II)V

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    return-void
.end method

.method public final createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    new-instance v0, Lcom/android/launcher3/QuickstepAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepAccessibilityDelegate;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method public final createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 3

    const-class v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    const v1, 0x7f13025b

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory;

    new-instance v1, Lb1/k;

    invoke-direct {v1, p0}, Lb1/k;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    new-instance v2, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_HOST_IN_BACKGROUND:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V

    :goto_0
    return-object v0
.end method

.method public final createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method public final createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public final createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 4

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb1/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lb1/f;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lb1/f;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;-><init>(Lcom/android/launcher3/Launcher;Lb1/f;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lb1/f;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;-><init>(Lcom/android/launcher3/Launcher;Lb1/f;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/util/TouchController;

    return-object p0
.end method

.method public final dispatchDeviceProfileChanged()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->toSmallString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const-string v3, "QuickstepLauncher#DeviceProfileChanged"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setLauncherAppIconSize(I)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TISBindHelper;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "QuickstepLauncher#onDeviceProfileChanged"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/statehandlers/DepthController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/views/RecentsView;

    const-string p4, "\nQuickstepLauncher:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tmOrientationState: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v0, "recentsNull"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    :goto_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    if-eqz p2, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tRingAppearAnimation\t"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/QuickstepTransitionManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method public final enableHotseatEdu(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->enableHotseatEdu(Z)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->enableHotseatEdu(Z)V

    return-void
.end method

.method public final enterStageSplitFromRunningApp(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->enterStageSplit(Z)V

    return-void
.end method

.method public final finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    sget-object p1, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public final finishSplitSelectRecovery()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    return-void
.end method

.method public final getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method public final getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    const/4 v3, 0x1

    if-lez p0, :cond_1

    iget-object p0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v3, v1, v2}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_3

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :goto_1
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    :cond_4
    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object p0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-static {p2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_5
    return-object v0
.end method

.method public final getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    return-object p0
.end method

.method public final getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object p0
.end method

.method public final getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    return-object p0
.end method

.method public final getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    return-object p0
.end method

.method public final getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lb1/i;

    invoke-direct {v0, p0}, Lb1/i;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method public final getNormalOverviewScaleAndOffset()[F
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    new-array p0, v0, [F

    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [F

    fill-array-data p0, :array_1

    :goto_0
    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x0
    .end array-data
.end method

.method public final getPendingSplitSelectInfo()Lcom/android/launcher3/util/PendingSplitSelectInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    return-object p0
.end method

.method public final getSplitToWorkspaceController()Lcom/android/quickstep/util/SplitToWorkspaceController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    return-object p0
.end method

.method public final getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v2, Lcom/android/launcher3/model/WellbeingModel;->SHORTCUT_FACTORY:Lcom/android/launcher3/model/k1;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    filled-new-array {v1, v2, v3}, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    new-instance v3, Lcom/android/launcher3/popup/q;

    invoke-direct {v3, v2}, Lcom/android/launcher3/popup/q;-><init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-object p0
.end method

.method public final getUnfoldTransitionProgressProvider()Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    return-object p0
.end method

.method public final handleGestureContract(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final handleSplitAnimationGoingToHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitAnimationController;->playPlaceholderDismissAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-void
.end method

.method public final hasPendingSplitSelectInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchAppPair(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->getAppPairsController()Lcom/android/quickstep/util/AppPairsController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/AppPairsController;->launchAppPair(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public final launchSplitTasks(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/quickstep/util/GroupTask;)V
    .locals 10

    iget-object v0, p2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb1/l;

    invoke-direct {v1, p0, p2, p1}, Lb1/l;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/GroupTask;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v3, 0x0

    iget-object p1, p2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v6, 0x0

    new-instance v7, Lb1/f;

    const/4 p1, 0x3

    invoke-direct {v7, p0, p1}, Lb1/f;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V

    const/4 v8, 0x1

    iget-object p0, p2, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez p0, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    move v9, p0

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/util/SplitSelectStateController;->launchExistingSplitPair(Lcom/android/quickstep/views/GroupedTaskView;IIILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public final logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    if-eqz v0, :cond_3

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->logLaunchedAppRankingInfo(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public final makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 8

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lb1/h;

    invoke-direct {v7, v0}, Lb1/h;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method public final onActivityFlagsChanged(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setActivityStarted(Z)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    and-int/lit8 p1, p1, 0x55

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    :cond_3
    return-void
.end method

.method public final onAllAppsTransition(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "launcher.pending_split_select_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/PendingSplitSelectInfo;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    new-instance p1, Lcom/android/systemui/unfold/config/a;

    invoke-direct {p1}, Lcom/android/systemui/unfold/config/a;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/unfold/config/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const-string v4, "mainExecutor"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mainHandler"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "singleThreadBgExecutor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "displayManager"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lt1/a;

    invoke-direct {v2}, Lt1/a;-><init>()V

    new-instance v4, LW2/b;

    invoke-direct {v4, p1}, LW2/b;-><init>(Ljava/lang/Object;)V

    new-instance p1, LW2/b;

    const-string v5, "launcher"

    invoke-direct {p1, v5}, LW2/b;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lx1/b;

    invoke-direct {v5, p1}, Lx1/b;-><init>(LW2/b;)V

    new-instance p1, Lt1/c;

    invoke-direct {p1, v2}, Lt1/c;-><init>(Lt1/a;)V

    new-instance v6, LW2/b;

    invoke-direct {v6, v0}, LW2/b;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lv1/e;

    invoke-direct {v0, p1, v6}, Lv1/e;-><init>(Ld3/a;LW2/b;)V

    new-instance p1, Lt1/b;

    invoke-direct {p1, v2, v4, v5, v0}, Lt1/b;-><init>(Lt1/a;Ld3/a;Ld3/a;Lv1/e;)V

    sget-object v0, LW2/a;->c:Ljava/lang/Object;

    instance-of v0, p1, LW2/a;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, LW2/a;

    invoke-direct {v0, p1}, LW2/a;-><init>(Lt1/b;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p1}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    new-instance v0, Lb1/g;

    invoke-direct {v0}, Lb1/g;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/SystemUiProxy;->setUnfoldAnimationListener(Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    new-instance v0, Lw1/d;

    invoke-direct {v0, v3, p0, v1}, Lw1/d;-><init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lt1/e;Lw1/d;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    :cond_3
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CONTINUOUS_VIEW_TREE_CAPTURE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LA0/g;->j:LA0/x;

    invoke-static {p0}, LA0/d;->a(Landroid/content/Context;)LA0/x;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, LA0/x;->a(Landroid/view/View;Ljava/lang/String;)LA0/l;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mViewCapture:LA0/l;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    sget-boolean p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->TRACE_LAYOUTS:Z

    invoke-static {p0}, Landroid/view/View;->setTraceLayoutSteps(Z)V

    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->TRACE_RELAYOUT_CLASS:Ljava/lang/String;

    invoke-static {p0}, Landroid/view/View;->setTracedRequestLayoutClassClass(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AnalogClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "TextClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.widget.TextClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.widget.AnalogClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Landroid/widget/TextClock;

    invoke-direct {p1, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-direct {p2, p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-virtual {p1, p0}, Landroid/widget/TextClock;->setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V

    return-object p1

    :pswitch_1
    new-instance p1, Landroid/widget/AnalogClock;

    invoke-direct {p1, p3, p4}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    if-nez p2, :cond_5

    new-instance p2, Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-direct {p2, p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6115e5ed -> :sswitch_3
        0x1cee1d36 -> :sswitch_2
        0x380bfac1 -> :sswitch_1
        0x6a06c0de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeferredResumed()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDeferredResumed()V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->handlePendingActivityRequest()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setUnfoldAnimationListener(Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->unregisterSystemUiListener()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAsyncClockEventDelegate:Lcom/android/quickstep/util/AsyncClockEventDelegate;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->onDestroy()V

    :cond_4
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->destroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mViewCapture:LA0/l;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, LA0/l;->close()V

    :cond_5
    return-void
.end method

.method public final onDeviceProfileInitiated()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->setLauncherAppIconSize(I)V

    return-void
.end method

.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState(Z)V

    :cond_0
    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-eqz p0, :cond_1

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    :cond_1
    return-void
.end method

.method public final onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onEnterAnimationComplete()V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method public final onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 2

    new-instance v0, Lb1/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lb1/e;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method

.method public final onItemClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SplitToWorkspaceController;->handleSecondAppSelectionForSplit(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TISBindHelper;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewCommandHelper;->clearPendingCommands()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onResume()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/PendingSplitSelectInfo;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitEvent()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher3/util/PendingSplitSelectInfo;-><init>(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    new-instance p0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    const-string v0, "launcher.pending_split_select_info"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    iget p0, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v0, "launcher.state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onScreenOnChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onScreenOnChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    .line 3
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->handlePendingActivityRequest()V

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 4
    iget p1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-eqz p0, :cond_5

    .line 10
    new-instance p0, Lb1/e;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lb1/e;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    .line 12
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    new-instance v0, Lb1/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb1/f;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    .line 16
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 17
    invoke-static {p0, v1, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onTrimMemory(I)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    return-void
.end method

.method public final onUiChangedWhileSleeping()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb1/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lb1/e;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onWidgetsTransition(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onWidgetsTransition(F)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mEnableWidgetDepth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    iget-object v0, v0, Lcom/android/quickstep/util/BaseDepthController;->widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    sget-object v6, Ly0/e;->a:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    :cond_0
    return-void
.end method

.method public final registerBackDispatcher()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->registerBackDispatcher()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TISBindHelper;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setResumed()V
    .locals 2

    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isRecentsGestureInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    return-void
.end method

.method public final setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-void
.end method

.method public setupViews()V
    .locals 10

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    new-instance v9, Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v6

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/quickstep/SystemUiProxy;

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/quickstep/RecentsModel;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsModel;)V

    iput-object v9, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0, v1, v9}, Lcom/android/quickstep/views/RecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    new-instance v1, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    new-instance v1, Lcom/android/quickstep/util/SplitToWorkspaceController;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SplitToWorkspaceController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->buildAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteAnimations()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteTransitions()V

    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v1, Lb1/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lb1/f;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    new-instance v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    sget-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->registerSystemUiListener()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController;->initSplitFromDesktopController(Lcom/android/launcher3/Launcher;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    const-string v0, "ro.launcher.depth.widget"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mEnableWidgetDepth:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lb1/j;

    invoke-direct {v1, p0}, Lb1/j;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->addOverlayCallback(Lq1/c;)V

    return-void
.end method

.method public final showAllAppsFromIntent(Z)V
    .locals 1

    const-string v0, "homekey"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance v0, Lcom/android/launcher3/util/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/util/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, v0, Lcom/android/launcher3/util/StartActivityParams;->intent:Landroid/content/Intent;

    iput-object p3, v0, Lcom/android/launcher3/util/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    goto :goto_1

    :cond_1
    new-instance p2, Lb1/e;

    invoke-direct {p2, p0, v2}, Lb1/e;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    :goto_1
    return-object p1
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance v0, Lcom/android/launcher3/util/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/util/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, v0, Lcom/android/launcher3/util/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    iput-object p3, v0, Lcom/android/launcher3/util/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iput p4, v0, Lcom/android/launcher3/util/StartActivityParams;->flagsMask:I

    iput p5, v0, Lcom/android/launcher3/util/StartActivityParams;->flagsValues:I

    iput p6, v0, Lcom/android/launcher3/util/StartActivityParams;->extraFlags:I

    iput-object p7, v0, Lcom/android/launcher3/util/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/Launcher;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v2, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lb1/m;

    invoke-direct {v3, p0, p1, v0}, Lb1/m;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTasksAndRunCallback(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final supportsAdaptiveIconAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result p0

    return p0
.end method

.method public final tryClearAccessibilityFocus(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    return-void
.end method
