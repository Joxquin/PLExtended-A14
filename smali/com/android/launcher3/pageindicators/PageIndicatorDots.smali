.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# static fields
.field private static final CURRENT_POSITION:Landroid/util/FloatProperty;

.field private static final DOT_GAP_FACTOR:I

.field private static final PAGINATION_ALPHA:Landroid/util/IntProperty;

.field private static final PAGINATION_FADE_DELAY:I

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mActivePage:I

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAreScreensBinding:Z

.field private final mCircleGap:F

.field private mCurrentPosition:F

.field private final mDelayedPaginationFadeHandler:Landroid/os/Handler;

.field private final mDotRadius:F

.field private mEntryAnimationRadiusFactors:[F

.field private mFinalPosition:F

.field private final mHidePaginationRunnable:LQ0/a;

.field private final mIsRtl:Z

.field private mNumPages:I

.field private mPaginationPaint:Landroid/graphics/Paint;

.field private mShouldAutoHide:Z

.field private mToAlpha:I

.field private mTotalScroll:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_FADE_DELAY:I

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->DOT_GAP_FACTOR:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;

    invoke-direct {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;

    invoke-direct {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    .line 5
    new-instance p2, LQ0/a;

    invoke-direct {p2, p0}, LQ0/a;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mHidePaginationRunnable:LQ0/a;

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    .line 7
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    const p3, 0x7f04023c

    .line 9
    invoke-static {p3, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07042b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07042a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    .line 14
    sget p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->DOT_GAP_FACTOR:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    .line 15
    new-instance p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animatePaginationToAlpha(I)V

    return-void
.end method

.method private animatePaginationToAlpha(I)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_ALPHA:Landroid/util/IntProperty;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    if-ge p1, v1, :cond_2

    const-wide/16 v1, 0xa7

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x53

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    return-void
.end method

.method private animateToPosition(F)V
    .locals 3

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-lez v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_1
    add-float/2addr p1, v1

    :goto_0
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    return p0
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 9

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v6, v3

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v4, v5

    sget-object v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    mul-float/2addr v1, v6

    add-float/2addr v1, v4

    iput v1, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    mul-float/2addr v0, v6

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v5, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    add-float/2addr v2, v6

    iput v2, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    mul-float/2addr v0, v6

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->left:F

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget v1, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v1

    iput p0, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    iput p0, v5, Landroid/graphics/RectF;->left:F

    :cond_1
    return-object v5
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private hideAfterDelay()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mHidePaginationRunnable:LQ0/a;

    sget v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_FADE_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-void
.end method

.method public static bridge synthetic l(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mTotalScroll:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iget v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    const/16 v5, 0xff

    const/16 v6, 0x80

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v3

    neg-float v0, v0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v4, v4

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne v2, v7, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    aget v7, v7, v2

    mul-float/2addr v4, v7

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_5

    int-to-float v6, v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    :cond_5
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    if-ge v2, v6, :cond_6

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final pauseAnimations()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public final playEntryAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x409ccccd    # 4.9f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots$4;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$4;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    mul-int/lit16 v5, v3, 0x96

    add-int/lit16 v5, v5, 0x12c

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final prepareEntryAnimation()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    :cond_0
    return-void
.end method

.method public final setAreScreensBinding(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAreScreensBinding:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAreScreensBinding:Z

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setPaintColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setScroll(II)V
    .locals 5

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    iget p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAreScreensBinding:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animatePaginationToAlpha(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_4

    sub-int p1, p2, p1

    :cond_4
    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mTotalScroll:I

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    sub-int/2addr v0, v1

    div-int/2addr p2, v0

    if-nez p2, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    div-int v0, p1, p2

    :goto_0
    mul-int v2, v0, p2

    add-int v3, v2, p2

    const v4, 0x3dcccccd    # 0.1f

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float p1, p1

    int-to-float v2, v2

    add-float/2addr v2, p2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_6

    int-to-float p1, v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_1

    :cond_6
    int-to-float v2, v3

    sub-float/2addr v2, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    add-int/2addr v0, v1

    int-to-float p1, v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_1

    :cond_7
    int-to-float p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final setShouldAutoHide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final skipAnimationsToEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public final stopAllAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
