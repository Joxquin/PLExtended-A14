.class public final Lcom/android/launcher3/graphics/IconShape$RoundedSquare;
.super Lcom/android/launcher3/graphics/IconShape;
.source "SourceFile"


# instance fields
.field private final mRadiusRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape;-><init>()V

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    return-void
.end method


# virtual methods
.method public final addToPath(FFFLandroid/graphics/Path;)V
    .locals 8

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float v6, p3, p0

    sub-float v1, p1, p3

    sub-float v2, p2, p3

    add-float v3, p1, p3

    add-float v4, p2, p3

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p4

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float/2addr v1, p0

    invoke-direct {v0, v1, p4, p2, p3}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p5, p0}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->b(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float v6, p4, p0

    sub-float v1, p2, p4

    sub-float v2, p3, p4

    add-float v3, p2, p4

    add-float v4, p3, p4

    move-object v0, p1

    move v5, v6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
