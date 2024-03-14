.class public final Lcom/android/launcher3/graphics/PreloadIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "SourceFile"


# static fields
.field private static final INTERNAL_STATE:Landroid/util/Property;

.field private static final PROGRESS_STROKE_SCALE:F

.field private static final SMALL_SCALE:F


# instance fields
.field private mCurrentAnim:Landroid/animation/ObjectAnimator;

.field private final mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mIndicatorColor:I

.field private mInternalStateProgress:F

.field private final mInvalidateRunnable:LK0/f;

.field private final mIsDarkMode:Z

.field private mIsStartable:Z

.field private final mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private mPlateColor:I

.field private mProgressColor:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mRanFinishAnimation:Z

.field private final mScaledProgressPath:Landroid/graphics/Path;

.field private final mScaledTrackPath:Landroid/graphics/Path;

.field private final mShapePath:Landroid/graphics/Path;

.field private final mSystemAccentColor:I

.field private final mSystemBackgroundColor:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTrackColor:I

.field private mTrackLength:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V3:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v0, 0x3f333333    # 0.7f

    :goto_0
    sput v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->SMALL_SCALE:F

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3d6147ae    # 0.055f

    goto :goto_1

    :cond_1
    const v0, 0x3d99999a    # 0.075f

    :goto_1
    sput v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->PROGRESS_STROKE_SCALE:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZLandroid/graphics/Path;)V
    .locals 6

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, LK0/f;

    invoke-direct {v0, p0}, LK0/f;-><init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInvalidateRunnable:LK0/f;

    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v1, v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iput-object p5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance p5, Landroid/graphics/Path;

    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    iput-object p5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    new-instance p5, Landroid/graphics/Path;

    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    iput-object p5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    new-instance p5, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p5, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V3:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xff

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    new-array p5, v0, [F

    sget-object v0, LE/a;->a:Ljava/lang/ThreadLocal;

    sget-object v0, LD/p;->k:LD/p;

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, p5}, LD/a;->b(ILD/p;[F[F)V

    invoke-static {p2}, LD/b;->b(I)F

    move-result p2

    const/4 v0, 0x2

    aput p2, p5, v0

    const/4 v0, 0x0

    aget v2, p5, v0

    const/4 v3, 0x1

    aget v4, p5, v3

    if-eqz p4, :cond_1

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {p2, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_0
    invoke-static {v2, v4, p2}, LD/a;->d(FFF)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressColor:I

    aget p2, p5, v0

    if-eqz p4, :cond_2

    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x42b40000    # 90.0f

    :goto_1
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p2, v4, v2}, LD/a;->d(FFF)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackColor:I

    aget p2, p5, v0

    if-eqz p4, :cond_3

    const/high16 p5, 0x42100000    # 36.0f

    goto :goto_2

    :cond_3
    const/high16 p5, 0x41c00000    # 24.0f

    :goto_2
    if-eqz p4, :cond_5

    instance-of v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    goto :goto_3

    :cond_4
    const/16 v2, 0x14

    :goto_3
    int-to-float v2, v2

    goto :goto_4

    :cond_5
    const/high16 v2, 0x42a00000    # 80.0f

    :goto_4
    invoke-static {p2, p5, v2}, LD/a;->d(FFF)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPlateColor:I

    aget p2, p3, v0

    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    aget p2, p3, v3

    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    iput-boolean p4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsDarkMode:Z

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result p2

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_5

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v1, p2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    if-eq p2, p1, :cond_7

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    :cond_7
    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method

.method public static newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 7

    new-instance v6, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x1

    aget v0, v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const v0, 0x1010435

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    aget v2, v1, v0

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    :goto_0
    move v2, v0

    const v0, 0x7f04048a

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    const v1, 0x7f04048b

    invoke-static {v1, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v3

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v4

    const/16 v0, 0x64

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(ILandroid/content/Context;)Landroid/graphics/Path;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZLandroid/graphics/Path;)V

    return-object v6
.end method

.method private setInternalProgress(F)V
    .locals 9

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v4, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_0
    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    sub-float v3, p1, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    sget-object v8, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private updateInternalState(FZLcom/android/launcher3/j;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    sub-float/2addr p1, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-static {p3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;-><init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/launcher3/j;->run()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V3:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPlateColor:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V3:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackColor:I

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    :goto_2
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v3, 0x44

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScaleMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget v2, Lcom/android/launcher3/graphics/PreloadIconDrawable;->SMALL_SCALE:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    sub-float/2addr v3, v2

    goto :goto_3

    :cond_a
    sget v3, Lcom/android/launcher3/graphics/PreloadIconDrawable;->SMALL_SCALE:F

    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final hasNotCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final maybePerformFinishedAnimation(Lcom/android/launcher3/graphics/PreloadIconDrawable;Lcom/android/launcher3/j;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressColor:I

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressColor:I

    iget v0, p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackColor:I

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackColor:I

    iget v0, p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPlateColor:I

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPlateColor:I

    iget p1, p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    :cond_0
    iget p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZLcom/android/launcher3/j;)V

    return-void
.end method

.method public final newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 9

    new-instance v8, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    iget v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    filled-new-array {v0, v5}, [I

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsDarkMode:Z

    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;-><init>(Landroid/graphics/Bitmap;ILcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZLandroid/graphics/Path;)V

    return-object v8
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d99999a    # 0.075f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->PROGRESS_STROKE_SCALE:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    iget p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 2

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZLcom/android/launcher3/j;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateFilter()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DOWNLOAD_APP_UX_V2:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x99

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    :goto_1
    return-void
.end method
