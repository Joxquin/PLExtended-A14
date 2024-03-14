.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mBubblesShowingOnHome:Z

.field private mBubblesShowingOnOverview:Z

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

.field private mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIsStashed:Z

.field private mIsSysuiLocked:Z

.field private mRequestedExpandedState:Z

.field private mRequestedStashState:Z

.field private mStashedHeight:I

.field private mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

.field private mUnstashedHeight:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->onIsStashedChanged()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarInsetsController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static g(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, LZ0/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LZ0/m;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBubbleBarTranslationYForHotseat()F
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    int-to-float v0, v0

    neg-float v1, v1

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    int-to-float v2, p0

    add-float/2addr v1, v2

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr v1, p0

    return v1
.end method

.method private updateStashedAndExpandedState()V
    .locals 14

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isHiddenForNoBubbles()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    if-eq v2, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    iget v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mStashedHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v11, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v7, v9}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    filled-new-array {v3, v7}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v3

    filled-new-array {v3}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getBubbleBarTranslationY()F

    move-result v3

    iget-object v11, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v11, v10}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    filled-new-array {v11, v3}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v3

    filled-new-array {v3}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v3

    filled-new-array {v3}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v13, v9

    move v9, v8

    move v8, v13

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v11, 0x12c

    invoke-virtual {v4, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    long-to-float v3, v11

    mul-float/2addr v8, v3

    float-to-long v7, v8

    invoke-virtual {v5, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    mul-float v7, v3, v9

    float-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-float/2addr v10, v9

    mul-float/2addr v10, v3

    float-to-long v7, v10

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    filled-new-array {v4, v5, v6}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v2, LZ0/m;

    invoke-direct {v2, p0, v1}, LZ0/m;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    if-eq v0, v1, :cond_5

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final animateToInitialState(Z)V
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object p1

    filled-new-array {p1}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getBubbleBarTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v1

    filled-new-array {p1, v2, v1}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final getBubbleBarTranslationY()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getBubbleBarTranslationYForHotseat()F

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    neg-int p0, p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public final getTouchableHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mStashedHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    :goto_0
    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarScale()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getStashedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mStashedHeight:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getUnstashedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    return-void
.end method

.method public final isBubblesShowingOnHome()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    return p0
.end method

.method public final isBubblesShowingOnOverview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    return p0
.end method

.method public final isStashed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    return p0
.end method

.method public final onSysuiLockedStateChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsSysuiLocked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsSysuiLocked:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->hasBubbles()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->animateToInitialState(Z)V

    :cond_0
    return-void
.end method

.method public final setBubblesShowingOnHome(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->hasBubbles()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->showBubbleBar(Z)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getBubbleBarTranslationYForHotseat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v0, LZ0/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LZ0/m;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setBubblesShowingOnOverview(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showBubbleBar(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->updateStashedAndExpandedState()V

    return-void
.end method

.method public final stashBubbleBar()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->updateStashedAndExpandedState()V

    return-void
.end method
