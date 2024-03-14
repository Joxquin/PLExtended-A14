.class public Lcom/android/launcher3/taskbar/bubbles/BubbleView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private mAnimatingToDotScale:F

.field private final mAppIcon:Landroid/widget/ImageView;

.field private mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

.field private final mBubbleIcon:Landroid/widget/ImageView;

.field private final mBubbleSize:I

.field private mDotColor:I

.field private mDotIsAnimating:Z

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field private final mSuppressionFlags:Ljava/util/EnumSet;

.field private mTempBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    const-class p2, Lcom/android/launcher3/taskbar/bubbles/BubbleView$SuppressionFlag;

    .line 6
    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mSuppressionFlags:Ljava/util/EnumSet;

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mTempBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0048

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    const p1, 0x7f0a01d3

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a008f

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    .line 13
    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 16
    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/BubbleView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static r(Lcom/android/launcher3/taskbar/bubbles/BubbleView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotScale:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public static s(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotScale:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotIsAnimating:Z

    return-void
.end method

.method private shouldDrawDot()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getInfo()Lcom/android/wm/shell/common/bubbles/d;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/common/bubbles/d;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotIsAnimating:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public static t(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Outline;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    invoke-virtual {p1, p0, p0, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->shouldDrawDot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotColor:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mTempBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotScale:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method public final getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    return-object p0
.end method

.method public final setBehindStack(ZZ)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleView$SuppressionFlag;->BEHIND_STACK:Lcom/android/launcher3/taskbar/bubbles/BubbleView$SuppressionFlag;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->updateDotVisibility(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    instance-of p2, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getBadge()Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p2, 0x8

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getBadge()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getDotColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotColor:I

    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getDotPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    return-void
.end method

.method public final setOverflow(Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    const-string v0, "BubbleView{"

    const-string v1, "}"

    invoke-static {v0, p0, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDotVisibility(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->shouldDrawDot()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->shouldDrawDot()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotIsAnimating:Z

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAnimatingToDotScale:F

    cmpl-float v0, v0, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->shouldDrawDot()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iput v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAnimatingToDotScale:F

    cmpl-float v0, v1, v2

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LZ0/o;

    invoke-direct {v1, p0, p1}, LZ0/o;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LZ0/p;

    invoke-direct {v1, p0, p1}, LZ0/p;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_4
    :goto_3
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotIsAnimating:Z

    goto :goto_4

    :cond_5
    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mDotScale:F

    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAnimatingToDotScale:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_4
    return-void
.end method
