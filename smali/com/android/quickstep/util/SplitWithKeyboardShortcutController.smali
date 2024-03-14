.class public Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private final mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mSplitPlaceholderInset:I

.field private final mSplitPlaceholderSize:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    new-instance p2, Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mSplitPlaceholderSize:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mSplitPlaceholderInset:I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->lambda$enterStageSplit$0(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->lambda$enterStageSplit$1(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mSplitPlaceholderInset:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mSplitPlaceholderSize:I

    return p0
.end method

.method private synthetic lambda$enterStageSplit$0(Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$enterStageSplit$1(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/util/P;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/P;-><init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public enterStageSplit(Z)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/quickstep/RecentsAnimationCallbacks;

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationCallbacks;-><init>(Lcom/android/quickstep/SystemUiProxy;Z)V

    new-instance v1, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;-><init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;ZI)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/O;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/quickstep/util/O;-><init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    return-void
.end method
