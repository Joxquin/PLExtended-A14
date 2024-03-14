.class public final Lcom/android/launcher3/graphics/IconShape$Squircle;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source "SourceFile"


# instance fields
.field private final mRadiusRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p14, 0x3f800000    # 1.0f

    sub-float/2addr p14, p0

    mul-float/2addr p1, p14

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    mul-float/2addr p3, p14

    mul-float/2addr p4, p0

    add-float/2addr p4, p3

    mul-float/2addr p5, p14

    mul-float/2addr p6, p0

    add-float/2addr p6, p5

    mul-float/2addr p7, p14

    mul-float/2addr p8, p0

    add-float/2addr p8, p7

    mul-float/2addr p9, p14

    mul-float/2addr p10, p0

    add-float/2addr p10, p9

    mul-float/2addr p14, p11

    mul-float/2addr p0, p12

    add-float/2addr p0, p14

    sub-float p1, p4, p0

    sub-float p3, p1, p6

    invoke-virtual {p13, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p3, p10

    const/4 p5, 0x0

    invoke-virtual {p13, p3, p5}, Landroid/graphics/Path;->rLineTo(FF)V

    sub-float p3, p2, p10

    invoke-static {p3, p1, p6, p8, p13}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    add-float p7, p0, p0

    invoke-virtual {p13, p5, p7}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr p4, p0

    invoke-static {p3, p4, p6, p8, p13}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    add-float p3, p10, p10

    invoke-virtual {p13, p3, p5}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr p2, p10

    neg-float p3, p6

    neg-float p6, p8

    invoke-static {p2, p4, p3, p6, p13}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    neg-float p4, p0

    sub-float/2addr p4, p0

    invoke-virtual {p13, p5, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-static {p2, p1, p3, p6, p13}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    invoke-virtual {p13}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static addLeftCurve(FFFFLandroid/graphics/Path;)V
    .locals 7

    sub-float v1, p0, p3

    sub-float v2, p1, p2

    sub-float v5, p0, p2

    sub-float v4, p1, p3

    move-object v0, p4

    move v3, v5

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method private static addRightCurve(FFFFLandroid/graphics/Path;)V
    .locals 7

    sub-float v1, p0, p2

    add-float v2, p1, p3

    sub-float v3, p0, p3

    add-float v6, p1, p2

    move-object v0, p4

    move v4, v6

    move v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method


# virtual methods
.method public final addToPath(FFFLandroid/graphics/Path;)V
    .locals 1

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    mul-float/2addr p0, p3

    sub-float p0, p3, p0

    sub-float v0, p2, p3

    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    neg-float p3, p3

    neg-float p0, p0

    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addLeftCurve(FFFFLandroid/graphics/Path;)V

    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/launcher3/graphics/IconShape$Squircle;->addRightCurve(FFFFLandroid/graphics/Path;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    move-object v3, p0

    iget v0, v3, Lcom/android/launcher3/graphics/IconShape$Squircle;->mRadiusRatio:F

    mul-float/2addr v0, v6

    sub-float v8, v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    const v0, 0x3f0d4a4e

    mul-float v9, p3, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v10, v0, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v11, v0, p3

    new-instance v13, LK0/c;

    move-object v0, v13

    move-object v1, p0

    move v3, v5

    move v5, v7

    move/from16 v7, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, LK0/c;-><init>(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFLandroid/graphics/Path;)V

    return-object v13
.end method
