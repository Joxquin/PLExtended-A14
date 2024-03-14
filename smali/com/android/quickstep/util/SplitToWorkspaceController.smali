.class public Lcom/android/quickstep/util/SplitToWorkspaceController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private final mDP:Lcom/android/launcher3/DeviceProfile;

.field private final mHalfDividerSize:I

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mDP:Lcom/android/launcher3/DeviceProfile;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mHalfDividerSize:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/SplitToWorkspaceController;)Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/SplitToWorkspaceController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private shouldIgnoreSecondSplitLaunch()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_DESKTOP_TO_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startWorkspaceAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 12

    iget-object v0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {v0}, Lcom/android/quickstep/util/AnimUtils;->getDeviceSplitToConfirmTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object v0

    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-interface {v0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v7, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mHalfDividerSize:I

    iget-object v3, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mDP:Lcom/android/launcher3/DeviceProfile;

    iget-object v4, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v4

    move-object v5, v8

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingTaskView;->addConfirmAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1, p2, p3, v9}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, v9

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingTaskView;->addConfirmAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    new-instance p2, Lcom/android/quickstep/util/SplitToWorkspaceController$1;

    invoke-direct {p2, p0, v11, p1}, Lcom/android/quickstep/util/SplitToWorkspaceController$1;-><init>(Lcom/android/quickstep/util/SplitToWorkspaceController;Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/quickstep/views/FloatingTaskView;)V

    invoke-virtual {v7, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public handleSecondAppSelectionForSplit(Landroid/view/View;)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitToWorkspaceController;->shouldIgnoreSecondSplitLaunch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_0
    iget-object v4, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v4, v2, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/quickstep/util/SplitToWorkspaceController;->startWorkspaceAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public handleSecondWidgetSelectionForSplit(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitToWorkspaceController;->shouldIgnoreSecondSplitLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/quickstep/util/SplitToWorkspaceController;->mController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1, p2}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/quickstep/util/SplitToWorkspaceController;->startWorkspaceAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0
.end method
