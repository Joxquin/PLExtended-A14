.class public Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# static fields
.field private static final LINE_ANIMATE_DURATION:I

.field private static final LINE_FADE_DELAY:I

.field private static final NUM_PAGES:Landroid/util/Property;

.field private static final PAINT_ALPHA:Landroid/util/Property;

.field private static final TOTAL_SCROLL:Landroid/util/Property;


# instance fields
.field private mActiveAlpha:I

.field private mAnimators:[Landroid/animation/ValueAnimator;

.field private mCurrentScroll:I

.field private final mDelayedLineFadeHandler:Landroid/os/Handler;

.field private mHideLineRunnable:LQ0/b;

.field private final mLineHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNumPagesFloat:F

.field private mShouldAutoHide:Z

.field private mToAlpha:I

.field private mTotalScroll:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;

    const-string v1, "paint_alpha"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;

    const-string v1, "num_pages"

    const/4 v2, 0x1

    const-class v4, Ljava/lang/Float;

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;

    const-string v1, "total_scroll"

    const/4 v2, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    .line 4
    iput-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 8
    new-instance p3, LQ0/b;

    invoke-direct {p3, p0}, LQ0/b;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V

    iput-object p3, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:LQ0/b;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    const p2, 0x7f070591

    .line 13
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    const p2, 0x7f0402c9

    .line 14
    invoke-static {p2, p1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0xa5

    goto :goto_0

    :cond_0
    const/16 p2, 0xb2

    .line 15
    :goto_0
    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 16
    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static a(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    sget-object v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v0}, [I

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return-void
.end method

.method private setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aput-object p1, v0, p2

    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, p2

    sget v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v2, v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    int-to-float v7, v2

    int-to-float v8, v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final pauseAnimations()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 0

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 4

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    aput-object p1, p0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setScroll(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    sget-object v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    :goto_0
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    iget p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-nez p1, :cond_2

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    goto :goto_1

    :cond_2
    if-eq p1, p2, :cond_3

    sget-object p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    iget-boolean p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:LQ0/b;

    sget p2, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final setShouldAutoHide(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:LQ0/b;

    sget v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final skipAnimationsToEnd()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
