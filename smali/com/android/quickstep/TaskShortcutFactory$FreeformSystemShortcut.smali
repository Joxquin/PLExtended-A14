.class public Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FreeformSystemShortcut"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;

.field private final mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public constructor <init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p5, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/android/quickstep/views/RecentsView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/s1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/s1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onClick$1(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/r1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/r1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startActivity$2(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setIgnoreResetTask(I)V

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p1

    add-int/lit8 p1, p1, 0x32

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    return-object p0
.end method

.method private overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object p1

    invoke-static {p3, p2}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->wrapStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/IRemoteCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2, p4, p5}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FreeformSystemShortcut"

    const-string p2, "Failed to override pending app transition (multi-thumbnail future): "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startActivity()V
    .locals 11

    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v7, Lcom/android/quickstep/t1;

    invoke-direct {v7, p0, v4}, Lcom/android/quickstep/t1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v1, v8

    aget v1, v1, v2

    add-int/2addr v3, v8

    add-int/2addr v5, v1

    invoke-direct {v6, v8, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getDimAlpha()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x1000000

    invoke-static {v2, v3, v5, v8, v9}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v2, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    new-instance v8, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;

    iget-object v3, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iget v10, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    move-object v5, p0

    move-object v6, v8

    move-object v8, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->lambda$startActivity$2(I)V

    return-void
.end method

.method public static synthetic w(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->lambda$onClick$1(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->startActivity()V

    return-void
.end method

.method public static synthetic y(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->lambda$onClick$0(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    new-instance v0, Lcom/android/quickstep/r1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/r1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;I)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method
