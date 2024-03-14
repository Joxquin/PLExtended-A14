.class public final Lcom/android/launcher3/popup/RoundedArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(FFFFFFFFZZI)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 3
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p11

    .line 4
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move v0, p3

    .line 7
    invoke-static {p1, p2, p3, v3}, Lcom/android/launcher3/popup/RoundedArrowDrawable;->addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v4, v0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p4

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    move/from16 v4, p7

    neg-float v4, v4

    move/from16 v5, p6

    neg-float v5, v5

    add-float v5, v5, p8

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    .line 10
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 11
    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz p10, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-eqz p9, :cond_1

    move v4, v5

    :cond_1
    mul-float/2addr v1, v6

    mul-float/2addr v2, v6

    .line 13
    invoke-virtual {v0, v7, v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 14
    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 20
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/popup/RoundedArrowDrawable;->addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V

    .line 22
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p4, :cond_0

    const/high16 p3, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 p3, -0x3d4c0000    # -90.0f

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p1, p4

    mul-float/2addr p2, p4

    .line 23
    invoke-virtual {p0, p3, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static addDownPointingRoundedTriangleToPath(FFFLandroid/graphics/Path;)V
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v8, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    div-float v4, v0, v4

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v1

    float-to-double v9, v2

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    div-double/2addr v9, v13

    sub-double v9, v6, v9

    double-to-float v1, v9

    div-float v4, v2, v4

    float-to-double v4, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    double-to-float v9, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v4

    sub-double/2addr v6, v13

    double-to-float v4, v6

    div-float v5, v0, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, p0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v9, v5

    invoke-virtual {v8, v9, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v4, v5, v2

    sub-float v7, v1, v2

    add-float/2addr v5, v2

    add-float v9, v1, v2

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v3, v6

    sub-float v11, v0, v3

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v4

    move v2, v7

    move v3, v5

    move v4, v9

    move v5, v6

    move v6, v11

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/RoundedArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
