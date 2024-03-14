.class public final Lcom/android/launcher3/views/ArrowTipView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# static fields
.field public static final TEXT_ALPHA:Landroid/util/IntProperty;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private final mArrowMinOffset:I

.field private mArrowView:Landroid/view/View;

.field private final mArrowViewPaintColor:I

.field private final mArrowWidth:I

.field private mCloseAnimator:Landroid/animation/AnimatorSet;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPointingUp:Z

.field private mOpenAnimator:Landroid/animation/AnimatorSet;

.field private mTextAlpha:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/views/ArrowTipView;

    new-instance v0, Lcom/android/launcher3/views/ArrowTipView$1;

    invoke-direct {v0}, Lcom/android/launcher3/views/ArrowTipView$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/ArrowTipView;->TEXT_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 4

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p3, v0}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    .line 5
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    .line 6
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/views/ActivityContext;

    iput-object p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 7
    iput-boolean p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700a4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07014e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    .line 10
    sget-object p2, Lcom/android/launcher3/R$styleable;->ArrowTipView:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-nez p3, :cond_1

    .line 13
    :cond_0
    new-instance p3, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f14001a

    invoke-direct {p3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, p3

    :cond_1
    const p3, 0x7f060031

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    .line 15
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowViewPaintColor:I

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0d0046

    .line 17
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f0a0098

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    .line 20
    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 22
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    sget-object p3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-static {p0, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 23
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 24
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 25
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    sget-object p3, Ly0/e;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    sget-object p3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v0

    invoke-static {p0, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 27
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 28
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 29
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Ly0/e;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/launcher3/views/ArrowTipView$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/ArrowTipView$2;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/ArrowTipView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/ArrowTipView;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    sub-float v2, p1, v0

    int-to-float v3, p2

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    add-float/2addr v0, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float v2, p3

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz p3, :cond_2

    add-int v0, p4, p2

    if-le v0, p5, :cond_3

    goto :goto_1

    :cond_2
    sub-int p5, p6, p2

    if-gez p5, :cond_3

    :goto_1
    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    :cond_3
    iget-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz p3, :cond_4

    int-to-float p2, p4

    goto :goto_2

    :cond_4
    sub-int/2addr p6, p2

    int-to-float p2, p6

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/views/ArrowTipView;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public static e(Lcom/android/launcher3/views/ArrowTipView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ArrowTipView;->mTextAlpha:I

    return p0
.end method

.method public static f(Lcom/android/launcher3/views/ArrowTipView;I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mTextAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mTextAlpha:I

    const p1, 0x7f0a0372

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/views/ArrowTipView;->mTextAlpha:I

    invoke-virtual {v0, p0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private showAtLocation(IIILjava/lang/String;Z)Lcom/android/launcher3/views/ArrowTipView;
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07056b

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07056c

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v1

    if-ge v5, v2, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot display tip on a small screen of size: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ArrowTipView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0x7f0a0372

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    if-gez p4, :cond_1

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 17
    :cond_1
    new-instance p4, Lcom/android/launcher3/views/i;

    move-object v1, p4

    move-object v2, p0

    move v3, p1

    move v6, p3

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/views/i;-><init>(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p5, :cond_2

    .line 19
    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/launcher3/views/h;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher3/views/h;-><init>(Lcom/android/launcher3/views/ArrowTipView;I)V

    const-wide/16 p4, 0x2710

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-object p0
.end method

.method private updateArrowTipInView()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    sget v5, Lcom/android/launcher3/graphics/TriangleShape;->d:I

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v4, v2, v6

    invoke-virtual {v5, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v4, v2, v6

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :goto_0
    new-instance v4, Lcom/android/launcher3/graphics/TriangleShape;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/launcher3/graphics/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowViewPaintColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/CornerPathEffect;

    int-to-float v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final handleClose(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/views/h;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/views/h;-><init>(Lcom/android/launcher3/views/ArrowTipView;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_2
    return-void
.end method

.method public final isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setCustomCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mCloseAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final setCustomOpenAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final show(Ljava/lang/String;III)V
    .locals 5

    const v0, 0x7f0a0372

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v0, -0x1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sub-int p3, v2, p3

    :cond_0
    const v2, 0x800005

    const/4 v4, 0x2

    if-ne p2, v2, :cond_1

    iget p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    div-int/2addr p3, v4

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    const p1, 0x800003

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p3, p2

    iget p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    div-int/2addr p2, v4

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    new-instance p1, Lcom/android/launcher3/views/j;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher3/views/j;-><init>(Lcom/android/launcher3/views/ArrowTipView;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher3/views/h;

    invoke-direct {p2, p0, v4}, Lcom/android/launcher3/views/h;-><init>(Lcom/android/launcher3/views/ArrowTipView;I)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/launcher3/views/ArrowTipView;->mOpenAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;
    .locals 7

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int v4, p3, p4

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(IIILjava/lang/String;Z)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method public final showAtLocation(Ljava/lang/String;II)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p3

    move-object v4, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(IIILjava/lang/String;Z)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method public final showAtLocation(Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p3

    move-object v4, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(IIILjava/lang/String;Z)Lcom/android/launcher3/views/ArrowTipView;

    return-void
.end method
