.class public Lcom/android/quickstep/TouchInteractionService$TISBinder;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "SourceFile"


# instance fields
.field private mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

.field private final mTis:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic b(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewShown$5(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$8(ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onTaskbarToggled$2(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic e(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewHidden$6(ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private executeForTaskbarManager(Ljava/util/function/Consumer;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/T1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/T1;-><init>(Landroid/os/Binder;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeForTouchInteractionService(Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$enterStageSplitFromRunningApp$17(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$setSwipeUpProxy$25(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(IZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onRotationProposal$19(IZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$9(ZZ)V

    return-void
.end method

.method public static synthetic j(IILcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemBarAttributesChanged$21(IILcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$executeForTaskbarManager$24(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemUiStateChanged$14(I)V

    return-void
.end method

.method private static synthetic lambda$disable$20(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->disableNavBarElements(IIIZ)V

    return-void
.end method

.method private static synthetic lambda$enterStageSplitFromRunningApp$17(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->j(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->enterStageSplitFromRunningApp(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$executeForTaskbarManager$23(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->k(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$executeForTaskbarManager$24(Ljava/util/function/Consumer;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/U1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/U1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onActiveNavBarRegionChanges$15(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private synthetic lambda$onActiveNavBarRegionChanges$16(Landroid/graphics/Region;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/U1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/U1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onAssistantAvailable$7(ZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onLongPressHomeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$8(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p3}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantAvailable(Z)V

    invoke-static {p3}, Lcom/android/quickstep/TouchInteractionService;->n(Lcom/android/quickstep/TouchInteractionService;)V

    new-instance p1, Lcom/android/quickstep/f2;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/android/quickstep/f2;-><init>(IZ)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$9(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/g2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/g2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onAssistantOverrideInvoked$12(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/util/AssistUtils;->newInstance(Landroid/content/Context;)Lcom/android/quickstep/util/AssistUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/AssistUtils;->tryStartAssistOverride(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TouchInteractionService"

    const-string p1, "Failed to invoke Assist override"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onAssistantVisibilityChanged$10(FLcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantVisibility(F)V

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->n(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private synthetic lambda$onAssistantVisibilityChanged$11(F)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/W1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/W1;-><init>(FI)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 16

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v2 .. v15}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V

    invoke-static/range {p13 .. p13}, Lcom/android/quickstep/TouchInteractionService;->m(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-static/range {p13 .. p13}, Lcom/android/quickstep/TouchInteractionService;->p(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private synthetic lambda$onInitialize$1(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V
    .locals 15

    new-instance v14, Lcom/android/quickstep/b2;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/quickstep/b2;-><init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V

    move-object v0, p0

    invoke-direct {p0, v14}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onNavButtonsDarkIntensityChanged$22(FLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onNavButtonsDarkIntensityChanged(F)V

    return-void
.end method

.method private static synthetic lambda$onOverviewHidden$6(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/android/quickstep/TouchInteractionService;->i(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onOverviewShown$5(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "recentapps"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->i(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->i(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onOverviewToggle$4(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->i(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    return-void
.end method

.method private static synthetic lambda$onRotationProposal$19(IZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onRotationProposal(IZ)V

    return-void
.end method

.method private static synthetic lambda$onSystemBarAttributesChanged$21(IILcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemBarAttributesChanged(II)V

    return-void
.end method

.method private static synthetic lambda$onSystemUiStateChanged$13(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 2

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    invoke-static {v0, p1}, Lcom/android/quickstep/TouchInteractionService;->o(ILcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$14(I)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/e2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/e2;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onTaskbarToggled$2(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->k(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->toggleTaskbarStash()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTaskbarToggled$3()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/h2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/h2;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$preloadOverviewForSUWAllSet$18(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->q(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private static synthetic lambda$setSwipeUpProxy$25(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$preloadOverviewForSUWAllSet$18(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$16(Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$11(F)V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewToggle$4(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic q(FLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$10(FLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic r(ZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$7(ZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic s(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantOverrideInvoked$12(ILcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic t(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$executeForTaskbarManager$23(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$1(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onTaskbarToggled$3()V

    return-void
.end method

.method public static synthetic w(FLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onNavButtonsDarkIntensityChanged$22(FLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic x(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemUiStateChanged$13(ILcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic y(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$disable$20(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic z(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$15(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/d2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/quickstep/d2;-><init>(IIIZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public enterStageSplitFromRunningApp(Z)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/f2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/f2;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->i(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->k(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    return-object p0
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/T1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/T1;-><init>(Landroid/os/Binder;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantAvailable(ZZ)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/a2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/a2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantOverrideInvoked(I)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/e2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/e2;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/c2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/c2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v4

    const-string v1, "extra_shell_pip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_0
    const-string v3, "com.android.wm.shell.pip.IPip"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/android/wm/shell/pip/IPip;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/android/wm/shell/pip/IPip;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/wm/shell/pip/a;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/pip/a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v5, v3

    :goto_1
    const-string v1, "extra_shell_bubbles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v6, v2

    goto :goto_3

    :cond_2
    const-string v3, "com.android.wm.shell.bubbles.IBubbles"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v6, v3, Lcom/android/wm/shell/bubbles/IBubbles;

    if-eqz v6, :cond_3

    check-cast v3, Lcom/android/wm/shell/bubbles/IBubbles;

    goto :goto_2

    :cond_3
    new-instance v3, Lz1/a;

    invoke-direct {v3, v1}, Lz1/a;-><init>(Landroid/os/IBinder;)V

    :goto_2
    move-object v6, v3

    :goto_3
    const-string v1, "extra_shell_split_screen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v7, v2

    goto :goto_5

    :cond_4
    const-string v3, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v7, v3, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v7, :cond_5

    check-cast v3, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/android/wm/shell/splitscreen/a;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/splitscreen/a;-><init>(Landroid/os/IBinder;)V

    :goto_4
    move-object v7, v3

    :goto_5
    const-string v1, "extra_shell_one_handed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v8, v2

    goto :goto_7

    :cond_6
    const-string v3, "com.android.wm.shell.onehanded.IOneHanded"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_7

    instance-of v8, v3, Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v8, :cond_7

    check-cast v3, Lcom/android/wm/shell/onehanded/IOneHanded;

    goto :goto_6

    :cond_7
    new-instance v3, LE1/a;

    invoke-direct {v3, v1}, LE1/a;-><init>(Landroid/os/IBinder;)V

    :goto_6
    move-object v8, v3

    :goto_7
    const-string v1, "extra_shell_shell_transitions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v9, v2

    goto :goto_9

    :cond_8
    const-string v3, "com.android.wm.shell.transition.IShellTransitions"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_9

    instance-of v9, v3, Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v9, :cond_9

    check-cast v3, Lcom/android/wm/shell/transition/IShellTransitions;

    goto :goto_8

    :cond_9
    new-instance v3, LG1/a;

    invoke-direct {v3, v1}, LG1/a;-><init>(Landroid/os/IBinder;)V

    :goto_8
    move-object v9, v3

    :goto_9
    const-string v1, "extra_shell_starting_window"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v10, v2

    goto :goto_b

    :cond_a
    const-string v3, "com.android.wm.shell.startingsurface.IStartingWindow"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_b

    instance-of v10, v3, Lcom/android/wm/shell/startingsurface/IStartingWindow;

    if-eqz v10, :cond_b

    check-cast v3, Lcom/android/wm/shell/startingsurface/IStartingWindow;

    goto :goto_a

    :cond_b
    new-instance v3, LF1/a;

    invoke-direct {v3, v1}, LF1/a;-><init>(Landroid/os/IBinder;)V

    :goto_a
    move-object v10, v3

    :goto_b
    const-string v1, "unlock_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    move-result-object v12

    const-string v1, "extra_shell_recent_tasks"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v11, v2

    goto :goto_d

    :cond_c
    const-string v3, "com.android.wm.shell.recents.IRecentTasks"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_d

    instance-of v11, v3, Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v11, :cond_d

    check-cast v3, Lcom/android/wm/shell/recents/IRecentTasks;

    goto :goto_c

    :cond_d
    new-instance v3, Lcom/android/wm/shell/recents/a;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/recents/a;-><init>(Landroid/os/IBinder;)V

    :goto_c
    move-object v11, v3

    :goto_d
    const-string v1, "extra_shell_back_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v13, v2

    goto :goto_f

    :cond_e
    const-string v3, "com.android.wm.shell.back.IBackAnimation"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_f

    instance-of v13, v3, Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz v13, :cond_f

    check-cast v3, Lcom/android/wm/shell/back/IBackAnimation;

    goto :goto_e

    :cond_f
    new-instance v3, Ly1/a;

    invoke-direct {v3, v1}, Ly1/a;-><init>(Landroid/os/IBinder;)V

    :goto_e
    move-object v13, v3

    :goto_f
    const-string v1, "extra_shell_desktop_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v14, v2

    goto :goto_11

    :cond_10
    const-string v3, "com.android.wm.shell.desktopmode.IDesktopMode"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_11

    instance-of v14, v3, Lcom/android/wm/shell/desktopmode/IDesktopMode;

    if-eqz v14, :cond_11

    check-cast v3, Lcom/android/wm/shell/desktopmode/IDesktopMode;

    goto :goto_10

    :cond_11
    new-instance v3, LC1/a;

    invoke-direct {v3, v1}, LC1/a;-><init>(Landroid/os/IBinder;)V

    :goto_10
    move-object v14, v3

    :goto_11
    const-string v1, "extra_unfold_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_12

    move-object v15, v2

    goto :goto_13

    :cond_12
    const-string v3, "com.android.systemui.unfold.progress.IUnfoldAnimation"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_13

    instance-of v15, v3, Lcom/android/systemui/unfold/progress/IUnfoldAnimation;

    if-eqz v15, :cond_13

    check-cast v3, Lcom/android/systemui/unfold/progress/IUnfoldAnimation;

    goto :goto_12

    :cond_13
    new-instance v3, Lv1/a;

    invoke-direct {v3, v1}, Lv1/a;-><init>(Landroid/os/IBinder;)V

    :goto_12
    move-object v15, v3

    :goto_13
    const-string v1, "extra_shell_drag_and_drop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v16, v2

    goto :goto_15

    :cond_14
    const-string v1, "com.android.wm.shell.draganddrop.IDragAndDrop"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v2, v1, Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    if-eqz v2, :cond_15

    check-cast v1, Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    goto :goto_14

    :cond_15
    new-instance v1, LD1/a;

    invoke-direct {v1, v0}, LD1/a;-><init>(Landroid/os/IBinder;)V

    :goto_14
    move-object/from16 v16, v1

    :goto_15
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/X1;

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/quickstep/X1;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->r()V

    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/W1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/W1;-><init>(FI)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNavigationBarSurface(Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/V1;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/V1;-><init>(ZZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/f2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/f2;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOverviewTargetChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onOverviewToggle()V
    .locals 2

    const-string v0, "Main"

    const-string v1, "onOverviewToggle"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/h2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/h2;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/Y1;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/Y1;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/Z1;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/Z1;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/i2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/i2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskbarToggled()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_KEYBOARD_TASKBAR_TOGGLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/R1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/quickstep/R1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preloadOverviewForSUWAllSet()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/h2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/quickstep/h2;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setGestureBlockedTaskId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->h(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setGestureBlockingTaskId(I)V

    return-void
.end method

.method public setOverviewTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSwipeUpProxy(Ljava/util/function/Function;)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/quickstep/O1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/quickstep/O1;-><init>(I)V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->l(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)V

    return-void
.end method
