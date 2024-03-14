.class public Lcom/android/quickstep/LauncherBackAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANCEL_TRANSITION_DURATION:I = 0xe9

.field private static final MAX_SCRIM_ALPHA_DARK:F = 0.8f

.field private static final MAX_SCRIM_ALPHA_LIGHT:F = 0.2f

.field private static final MIN_WINDOW_SCALE:F = 0.85f

.field private static final SCRIM_FADE_DURATION:I = 0xe9

.field private static final UPDATE_SYSUI_FLAGS_THRESHOLD:F = 0.2f


# instance fields
.field private mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private mAnimatorSetInProgress:Z

.field private mBackCallback:Landroid/window/IOnBackInvokedCallback;

.field private mBackInProgress:Z

.field private mBackProgress:F

.field private mBackTarget:Landroid/view/RemoteAnimationTarget;

.field private final mCancelInterpolator:Landroid/view/animation/Interpolator;

.field private final mCancelRect:Landroid/graphics/RectF;

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private final mInitialTouchPos:Landroid/graphics/PointF;

.field private final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private mOverridingStatusBarFlags:Z

.field private mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private mScrimAlpha:F

.field private mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mScrimLayer:Landroid/view/SurfaceControl;

.field private mSpringAnimationInProgress:Z

.field private final mStartRect:Landroid/graphics/Rect;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mTransformMatrix:Landroid/graphics/Matrix;

.field private final mWindowMaxDeltaY:I

.field private final mWindowScaleEndCornerRadius:F

.field private final mWindowScaleMarginX:I

.field private final mWindowScaleStartCornerRadius:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704d4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float v1, p2

    :cond_0
    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704d6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704d5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    const p2, 0x7f0c001c

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->lambda$resetPositionAnimated$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private applyTransform(Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->lambda$startTransitionAnimations$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/LauncherBackAnimationController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    return p0
.end method

.method private customizeStatusBarAppearance(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mOverridingStatusBarFlags:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mOverridingStatusBarFlags:Z

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mOverridingStatusBarFlags:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/internal/view/AppearanceRegion;

    if-nez p1, :cond_2

    const/16 v0, 0x8

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SystemUiProxy;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    return-void
.end method

.method private finishAnimation()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mOverridingStatusBarFlags:Z

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ShellBackPreview"

    const-string v3, "Failed call onBackAnimationFinished"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public static bridge synthetic g(Lcom/android/quickstep/LauncherBackAnimationController;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    return-void
.end method

.method public static bridge synthetic h(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method public static bridge synthetic i(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/LauncherBackAnimationController;->customizeStatusBarAppearance(Z)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->resetPositionAnimated()V

    return-void
.end method

.method private synthetic lambda$resetPositionAnimated$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->updateCancelProgress(F)V

    return-void
.end method

.method private synthetic lambda$startTransitionAnimations$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlpha:F

    mul-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->resetScrim()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->startBack(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransition()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->tryFinishBackAnimation()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->updateBackProgress(FLandroid/window/BackEvent;)V

    return-void
.end method

.method private resetPositionAnimated()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/quickstep/O;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/O;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$3;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetScrim()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->removeScrimLayer()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlpha:F

    return-void
.end method

.method private startBack(Landroid/window/BackMotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->addScrimLayer()V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private startTransition()V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const v1, 0x176274

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    sget-object v3, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v2, v1, v0, v1}, Lw/f;->a(FFFF)F

    move-result v8

    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    filled-new-array {v0}, [Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-boolean v9, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Landroid/view/RemoteAnimationTarget;ZLandroid/graphics/RectF;FZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    return-void
.end method

.method private startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$4;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    new-instance p1, Lcom/android/quickstep/LauncherBackAnimationController$5;

    invoke-direct {p1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$5;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/quickstep/O;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/O;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$6;

    invoke-direct {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$6;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xe9

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private tryFinishBackAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    :cond_0
    return-void
.end method

.method private updateBackProgress(FLandroid/window/BackEvent;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const v2, -0x41e66668    # -0.14999998f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    div-float v3, v1, v0

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/window/BackEvent;->getTouchY()F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v5, v4}, Lw/f;->a(FFFF)F

    move-result v1

    invoke-virtual {p2}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result p2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    sub-float p2, v0, v2

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    add-float/2addr v2, p2

    add-float/2addr v3, v1

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v0, p2, p1, p2}, Lw/f;->a(FFFF)F

    move-result p2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    const p2, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/quickstep/LauncherBackAnimationController;->customizeStatusBarAppearance(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateCancelProgress(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v4, v2, p1, v2}, Lw/f;->a(FFFF)F

    move-result v2

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v5, v4, p1, v4}, Lw/f;->a(FFFF)F

    move-result v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {v6, v5, p1, v5}, Lw/f;->a(FFFF)F

    move-result v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v2, v1, v0, v1}, Lw/f;->a(FFFF)F

    move-result v0

    invoke-static {v1, v0, p1, v0}, Lw/f;->a(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    return-void
.end method


# virtual methods
.method public addScrimLayer()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "Back to launcher background scrim"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "LauncherBackAnimationController"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    if-eqz v1, :cond_1

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    :goto_1
    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlpha:F

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public registerBackCallbacks(Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance p1, Lcom/android/quickstep/LauncherBackAnimationController$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    return-void
.end method

.method public removeScrimLayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mScrimLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method public unregisterBackCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->clearBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method
