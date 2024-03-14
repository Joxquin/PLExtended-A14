.class public Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field private final mEndRadius:F

.field private final mEndRect:Landroid/graphics/Rect;

.field protected mOutline:Landroid/graphics/Rect;

.field protected mOutlineRadius:F

.field private final mStartRadius:F

.field private final mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    iput p2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    iput-object p3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static a(Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    iget-object v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object p0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    new-array p2, v3, [F

    sub-float/2addr v0, p3

    aput v0, p2, v2

    const/4 p3, 0x0

    aput p3, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array p2, v3, [F

    aput p3, p2, v2

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p3

    new-instance v0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;-><init>(Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;Landroid/view/View;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lcom/android/launcher3/anim/i;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher3/anim/i;-><init>(Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
