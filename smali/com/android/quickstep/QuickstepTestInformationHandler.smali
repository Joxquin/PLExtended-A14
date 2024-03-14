.class public Lcom/android/quickstep/QuickstepTestInformationHandler;
.super Lcom/android/launcher3/testing/TestInformationHandler;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/testing/TestInformationHandler;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic A(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$4(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$0(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$1(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method private enableBlockingTimeout(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->enableBlockingTimeoutDuringTests(Z)V

    return-void
.end method

.method private enableManualTaskbarStashing(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->enableManualStashingDuringTests(Z)V

    return-void
.end method

.method private enableTransientTaskbar(Z)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->enableTransientTaskbarForTests(Z)V

    return-void
.end method

.method private getTISBinderUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/android/quickstep/e0;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/quickstep/e0;-><init>(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private synthetic lambda$call$0(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableManualTaskbarStashing(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    return-void
.end method

.method private synthetic lambda$call$1(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableManualTaskbarStashing(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    return-void
.end method

.method private synthetic lambda$call$2(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableManualTaskbarStashing(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->unstashTaskbarIfStashed()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableManualTaskbarStashing(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    return-void
.end method

.method private static synthetic lambda$call$3(Landroid/os/Bundle;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStashedTaskbarScale()F

    move-result p1

    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private static synthetic lambda$call$4(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarAllAppsTopPadding()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$5(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarAllAppsScroll()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$call$6(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableBlockingTimeout(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    return-void
.end method

.method private synthetic lambda$call$7(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableBlockingTimeout(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    return-void
.end method

.method private static synthetic lambda$getTISBinderUIProperty$10(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$runOnTISBinder$8(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$runOnTISBinder$9(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)Lcom/android/quickstep/util/TISBindHelper;
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    iget-object p0, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/quickstep/b0;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/b0;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic s(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$5(Lcom/android/quickstep/TouchInteractionService$TISBinder;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$2(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/QuickstepTestInformationHandler;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)Lcom/android/quickstep/util/TISBindHelper;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$runOnTISBinder$9(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)Lcom/android/quickstep/util/TISBindHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$6(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$7(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic x(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$runOnTISBinder$8(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic y(Landroid/os/Bundle;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$call$3(Landroid/os/Bundle;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/QuickstepTestInformationHandler;->lambda$getTISBinderUIProperty$10(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "disable-block-timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "get-grid-task-size-rect-for-tablet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "shell-drag-ready"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "unstash-taskbar-if-stashed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "home-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "stashed-taskbar-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "get-overview-page-spacing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "disable-taskbar-stashing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "has-touch-interaction-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "background-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "enable-taskbar-stashing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "enable-block-timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_c
    const-string v1, "get-focused-task-height-for-tablet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move v1, v2

    goto :goto_1

    :sswitch_d
    const-string v1, "disable-transient-taskbar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    move v1, v3

    goto :goto_1

    :sswitch_e
    const-string v1, "enable-transient-taskbar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    move v1, v4

    goto :goto_1

    :sswitch_f
    const-string v1, "taskbar-all-apps-top-padding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    move v1, v5

    goto :goto_1

    :sswitch_10
    const-string v1, "taskbar-apps-list-scroll-y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    move v1, v7

    goto :goto_1

    :sswitch_11
    const-string v1, "taskbar-stash-handle-scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    move v1, v6

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v8, 0x0

    const-string v9, "response"

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v3, p0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p1, :cond_12

    return-object v8

    :cond_12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    sget-object p2, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object p3, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    invoke-virtual {p2, p3, p0, p1, v1}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    :pswitch_2
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->isDragAndDropReady()Z

    move-result p0

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_3
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v5, p0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    :pswitch_4
    iget-object p1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1, p0}, Lcom/android/quickstep/util/LayoutUtils;->getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_5
    iget-object p0, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07053b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_6
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_7
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v7, p0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    :pswitch_8
    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_9
    iget-object p1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object p2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    invoke-static {p1, p0, p2}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result p0

    int-to-float p0, p0

    float-to-int p0, p0

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_a
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v6, p0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    :pswitch_b
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v4, p0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    :pswitch_c
    iget-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p1, :cond_13

    return-object v8

    :cond_13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    sget-object p2, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object p3, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    invoke-virtual {p2, p3, p0, p1, v1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_d
    invoke-direct {p0, v6}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableTransientTaskbar(Z)V

    return-object v0

    :pswitch_e
    invoke-direct {p0, v7}, Lcom/android/quickstep/QuickstepTestInformationHandler;->enableTransientTaskbar(Z)V

    return-object v0

    :pswitch_f
    new-instance p1, Lcom/android/quickstep/g0;

    invoke-direct {p1, v6}, Lcom/android/quickstep/g0;-><init>(I)V

    new-instance p2, Lcom/android/quickstep/h0;

    invoke-direct {p2, v6}, Lcom/android/quickstep/h0;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/QuickstepTestInformationHandler;->getTISBinderUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_10
    new-instance p1, Lcom/android/quickstep/g0;

    invoke-direct {p1, v7}, Lcom/android/quickstep/g0;-><init>(I)V

    new-instance p2, Lcom/android/quickstep/h0;

    invoke-direct {p2, v7}, Lcom/android/quickstep/h0;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/QuickstepTestInformationHandler;->getTISBinderUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_11
    new-instance p1, Lcom/android/quickstep/f0;

    invoke-direct {p1, v2, v0}, Lcom/android/quickstep/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->runOnTISBinder(Ljava/util/function/Consumer;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77e87c84 -> :sswitch_11
        -0x6f73b294 -> :sswitch_10
        -0x51016497 -> :sswitch_f
        -0x4adf5d9f -> :sswitch_e
        -0x45030f7a -> :sswitch_d
        -0x1505958b -> :sswitch_c
        -0xf02b2a9 -> :sswitch_b
        -0xe38432a -> :sswitch_a
        0x1ae46cdb -> :sswitch_9
        0x23b480f9 -> :sswitch_8
        0x2bc69611 -> :sswitch_7
        0x358667a2 -> :sswitch_6
        0x429e2a7f -> :sswitch_5
        0x482f264a -> :sswitch_4
        0x66c861d4 -> :sswitch_3
        0x67f3b387 -> :sswitch_2
        0x7e5a8e7f -> :sswitch_1
        0x7f9875fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object p0, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    throw p0
.end method

.method public isLauncherInitialized()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public runOnTISBinder(Ljava/util/function/Consumer;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/c0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/quickstep/c0;-><init>(Lcom/android/quickstep/QuickstepTestInformationHandler;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/quickstep/d0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/d0;-><init>(Lcom/android/quickstep/util/TISBindHelper;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
