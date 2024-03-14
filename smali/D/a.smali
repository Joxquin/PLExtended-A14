.class public final LD/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LD/a;->a:F

    iput p2, p0, LD/a;->b:F

    iput p3, p0, LD/a;->c:F

    iput p4, p0, LD/a;->d:F

    iput p5, p0, LD/a;->e:F

    iput p6, p0, LD/a;->f:F

    return-void
.end method

.method public static a(I)LD/a;
    .locals 10

    const/4 v0, 0x7

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v1, v1, [F

    sget-object v2, LD/p;->k:LD/p;

    invoke-static {p0, v2, v0, v1}, LD/a;->b(ILD/p;[F[F)V

    new-instance p0, LD/a;

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    aget v5, v1, v3

    aget v6, v0, v2

    const/4 v1, 0x4

    aget v7, v0, v1

    const/4 v1, 0x5

    aget v8, v0, v1

    const/4 v1, 0x6

    aget v9, v0, v1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, LD/a;-><init>(FFFFFF)V

    return-object p0
.end method

.method public static b(ILD/p;[F[F)V
    .locals 18

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, LD/b;->c(I)F

    move-result v1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, LD/b;->c(I)F

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, LD/b;->c(I)F

    move-result v3

    sget-object v4, LD/b;->d:[[F

    const/4 v5, 0x0

    aget-object v6, v4, v5

    aget v7, v6, v5

    mul-float/2addr v7, v1

    const/4 v8, 0x1

    aget v9, v6, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v6, v3

    add-float/2addr v6, v9

    aput v6, p3, v5

    aget-object v9, v4, v8

    aget v10, v9, v5

    mul-float/2addr v10, v1

    aget v11, v9, v8

    mul-float/2addr v11, v2

    add-float/2addr v11, v10

    aget v9, v9, v7

    mul-float/2addr v9, v3

    add-float/2addr v9, v11

    aput v9, p3, v8

    aget-object v4, v4, v7

    aget v10, v4, v5

    mul-float/2addr v1, v10

    aget v10, v4, v8

    mul-float/2addr v2, v10

    add-float/2addr v2, v1

    aget v1, v4, v7

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    aput v3, p3, v7

    sget-object v1, LD/b;->a:[[F

    aget-object v2, v1, v5

    aget v4, v2, v5

    mul-float/2addr v4, v6

    aget v10, v2, v8

    mul-float/2addr v10, v9

    add-float/2addr v10, v4

    aget v2, v2, v7

    mul-float/2addr v2, v3

    add-float/2addr v2, v10

    aget-object v4, v1, v8

    aget v10, v4, v5

    mul-float/2addr v10, v6

    aget v11, v4, v8

    mul-float/2addr v11, v9

    add-float/2addr v11, v10

    aget v4, v4, v7

    mul-float/2addr v4, v3

    add-float/2addr v4, v11

    aget-object v1, v1, v7

    aget v10, v1, v5

    mul-float/2addr v6, v10

    aget v10, v1, v8

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    aget v1, v1, v7

    mul-float/2addr v3, v1

    add-float/2addr v3, v9

    iget-object v1, v0, LD/p;->g:[F

    aget v6, v1, v5

    mul-float/2addr v6, v2

    aget v2, v1, v8

    mul-float/2addr v2, v4

    aget v1, v1, v7

    mul-float/2addr v1, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, LD/p;->h:F

    mul-float/2addr v3, v4

    float-to-double v9, v3

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    const-wide v13, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v3, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v9, v4

    float-to-double v9, v9

    div-double/2addr v9, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v4

    float-to-double v7, v10

    div-double/2addr v7, v11

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    const/high16 v8, 0x43c80000    # 400.0f

    mul-float/2addr v6, v8

    mul-float/2addr v6, v3

    const v10, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v10

    div-float/2addr v6, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, v9

    add-float/2addr v9, v10

    div-float/2addr v2, v9

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v8

    mul-float/2addr v1, v7

    add-float/2addr v7, v10

    div-float/2addr v1, v7

    const-wide/high16 v7, 0x4026000000000000L    # 11.0

    float-to-double v9, v6

    mul-double/2addr v9, v7

    const-wide/high16 v7, -0x3fd8000000000000L    # -12.0

    float-to-double v13, v2

    mul-double/2addr v13, v7

    add-double/2addr v13, v9

    float-to-double v7, v1

    add-double/2addr v13, v7

    double-to-float v3, v13

    const/high16 v9, 0x41300000    # 11.0f

    div-float/2addr v3, v9

    add-float v9, v6, v2

    float-to-double v9, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v13

    sub-double/2addr v9, v7

    double-to-float v7, v9

    const/high16 v8, 0x41100000    # 9.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float v9, v6, v8

    mul-float/2addr v2, v8

    add-float/2addr v9, v2

    const/high16 v10, 0x41a80000    # 21.0f

    mul-float/2addr v10, v1

    add-float/2addr v10, v9

    div-float/2addr v10, v8

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v6, v9

    add-float/2addr v6, v2

    add-float/2addr v6, v1

    div-float/2addr v6, v8

    float-to-double v1, v7

    float-to-double v8, v3

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v1, v2

    const v8, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v8

    const/4 v9, 0x0

    cmpg-float v9, v1, v9

    const/high16 v15, 0x43b40000    # 360.0f

    if-gez v9, :cond_0

    add-float/2addr v1, v15

    goto :goto_0

    :cond_0
    cmpl-float v9, v1, v15

    if-ltz v9, :cond_1

    sub-float/2addr v1, v15

    :cond_1
    :goto_0
    mul-float/2addr v8, v1

    div-float/2addr v8, v2

    iget v2, v0, LD/p;->b:F

    mul-float/2addr v6, v2

    iget v2, v0, LD/p;->a:F

    div-float/2addr v6, v2

    float-to-double v4, v6

    iget v6, v0, LD/p;->j:F

    iget v9, v0, LD/p;->d:F

    mul-float/2addr v6, v9

    float-to-double v11, v6

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float v11, v6, v9

    div-float v5, v4, v5

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float/2addr v11, v5

    add-float/2addr v2, v6

    mul-float/2addr v11, v2

    iget v5, v0, LD/p;->i:F

    mul-float/2addr v11, v5

    float-to-double v12, v1

    const-wide v16, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v6, v12, v16

    if-gez v6, :cond_2

    add-float/2addr v15, v1

    goto :goto_1

    :cond_2
    move v15, v1

    :goto_1
    float-to-double v12, v15

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    const-wide v14, 0x400e666666666666L    # 3.8

    add-double/2addr v12, v14

    double-to-float v6, v12

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v6, v12

    const v12, 0x45706276

    mul-float/2addr v6, v12

    iget v12, v0, LD/p;->e:F

    mul-float/2addr v6, v12

    iget v12, v0, LD/p;->c:F

    mul-float/2addr v6, v12

    mul-float/2addr v3, v3

    mul-float/2addr v7, v7

    add-float/2addr v7, v3

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    mul-float/2addr v6, v3

    const v3, 0x3e9c28f6    # 0.305f

    add-float/2addr v10, v3

    div-float/2addr v6, v10

    iget v0, v0, LD/p;->f:F

    float-to-double v12, v0

    const-wide v14, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v14, v12

    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v0, v12

    float-to-double v6, v6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v0, v3

    float-to-double v6, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v0

    mul-float/2addr v5, v3

    mul-float/2addr v0, v9

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v2, v4

    const v6, 0x3be56042    # 0.007f

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    div-float/2addr v2, v6

    const v6, 0x3cbac711    # 0.0228f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x422f7048

    mul-float/2addr v6, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    aput v1, p3, v7

    const/4 v1, 0x1

    aput v3, p3, v1

    if-eqz p2, :cond_3

    aput v4, p2, v7

    aput v11, p2, v1

    const/4 v1, 0x2

    aput v5, p2, v1

    const/4 v1, 0x3

    aput v0, p2, v1

    const/4 v0, 0x4

    aput v2, p2, v0

    const/4 v0, 0x5

    aput v9, p2, v0

    const/4 v0, 0x6

    aput v6, p2, v0

    :cond_3
    return-void
.end method

.method public static c(FFF)LD/a;
    .locals 12

    sget-object v0, LD/p;->k:LD/p;

    iget v1, v0, LD/p;->d:F

    float-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    iget v3, v0, LD/p;->a:F

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    iget v4, v0, LD/p;->i:F

    mul-float/2addr v4, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, p1, v1

    iget v0, v0, LD/p;->d:F

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, p0

    const v2, 0x3be56042    # 0.007f

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v9, v1, v2

    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v3, v4

    mul-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float/2addr v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v10, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v11, v1, v0

    new-instance v0, LD/a;

    move-object v5, v0

    move v6, p2

    move v7, p1

    move v8, p0

    invoke-direct/range {v5 .. v11}, LD/a;-><init>(FFFFFF)V

    return-object v0
.end method

.method public static d(FFF)I
    .locals 21

    move/from16 v0, p0

    sget-object v1, LD/p;->k:LD/p;

    move/from16 v2, p1

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-lez v3, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    const/4 v5, 0x1

    move v7, v3

    move v6, v5

    const/4 v8, 0x0

    move v5, v2

    :goto_1
    sub-float v9, v7, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3ecccccd    # 0.4f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x447a0000    # 1000.0f

    move v12, v3

    move v11, v10

    const/4 v13, 0x0

    :goto_2
    sub-float v14, v12, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3c23d70a    # 0.01f

    cmpl-float v14, v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    if-lez v14, :cond_6

    sub-float v14, v9, v12

    div-float/2addr v14, v15

    add-float/2addr v14, v12

    invoke-static {v14, v5, v0}, LD/a;->c(FFF)LD/a;

    move-result-object v4

    sget-object v15, LD/p;->k:LD/p;

    invoke-virtual {v4, v15}, LD/a;->e(LD/p;)I

    move-result v4

    invoke-static {v4}, LD/b;->b(I)F

    move-result v15

    sub-float v16, p2, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3e4ccccd    # 0.2f

    cmpg-float v17, v16, v17

    if-gez v17, :cond_2

    invoke-static {v4}, LD/a;->a(I)LD/a;

    move-result-object v4

    iget v3, v4, LD/a;->c:F

    move/from16 v18, v5

    iget v5, v4, LD/a;->b:F

    invoke-static {v3, v5, v0}, LD/a;->c(FFF)LD/a;

    move-result-object v3

    iget v5, v3, LD/a;->d:F

    move/from16 v19, v0

    iget v0, v4, LD/a;->d:F

    sub-float/2addr v0, v5

    iget v5, v4, LD/a;->e:F

    move/from16 v20, v9

    iget v9, v3, LD/a;->e:F

    sub-float/2addr v5, v9

    iget v9, v4, LD/a;->f:F

    iget v3, v3, LD/a;->f:F

    sub-float/2addr v9, v3

    mul-float/2addr v0, v0

    mul-float/2addr v5, v5

    add-float/2addr v5, v0

    mul-float/2addr v9, v9

    add-float/2addr v9, v5

    move-object v0, v4

    float-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    move v5, v10

    const-wide v9, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v9, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v3, v9

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    move-object v13, v0

    move v11, v3

    move/from16 v10, v16

    goto :goto_3

    :cond_2
    move/from16 v19, v0

    move/from16 v18, v5

    move/from16 v20, v9

    move v5, v10

    :cond_3
    move v10, v5

    :goto_3
    const/4 v0, 0x0

    cmpl-float v3, v10, v0

    if-nez v3, :cond_4

    cmpl-float v3, v11, v0

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    cmpg-float v3, v15, p2

    if-gez v3, :cond_5

    move v3, v0

    move v12, v14

    move/from16 v5, v18

    move/from16 v0, v19

    move/from16 v9, v20

    goto/16 :goto_2

    :cond_5
    move v3, v0

    move v9, v14

    move/from16 v5, v18

    move/from16 v0, v19

    goto/16 :goto_2

    :cond_6
    move/from16 v19, v0

    move v0, v3

    move/from16 v18, v5

    :goto_4
    if-eqz v6, :cond_8

    if-eqz v13, :cond_7

    invoke-virtual {v13, v1}, LD/a;->e(LD/p;)I

    move-result v0

    goto :goto_8

    :cond_7
    sub-float v3, v2, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    goto :goto_6

    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    if-nez v13, :cond_9

    move v5, v7

    move/from16 v2, v18

    goto :goto_5

    :cond_9
    move-object v8, v13

    move/from16 v5, v18

    :goto_5
    sub-float v3, v2, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    move v7, v5

    move v5, v3

    :goto_6
    move v3, v0

    move/from16 v0, v19

    goto/16 :goto_1

    :cond_a
    if-nez v8, :cond_b

    invoke-static/range {p2 .. p2}, LD/b;->a(F)I

    move-result v0

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v1}, LD/a;->e(LD/p;)I

    move-result v0

    goto :goto_8

    :cond_c
    :goto_7
    invoke-static/range {p2 .. p2}, LD/b;->a(F)I

    move-result v0

    :goto_8
    return v0
.end method


# virtual methods
.method public final e(LD/p;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LD/a;->b:F

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    iget v4, v0, LD/a;->c:F

    if-eqz v3, :cond_1

    float-to-double v9, v4

    cmpl-double v3, v9, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v3, v9

    div-float/2addr v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    float-to-double v2, v2

    iget v9, v1, LD/p;->f:F

    float-to-double v9, v9

    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v11, v9

    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v2, v9

    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x40490fdb    # (float)Math.PI

    iget v0, v0, LD/a;->a:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v0, v3

    float-to-double v9, v0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    add-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v13, 0x400e666666666666L    # 3.8

    add-double/2addr v11, v13

    double-to-float v0, v11

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    float-to-double v3, v4

    div-double/2addr v3, v7

    iget v7, v1, LD/p;->d:F

    float-to-double v7, v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v7

    iget v7, v1, LD/p;->j:F

    float-to-double v7, v7

    div-double/2addr v11, v7

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v1, LD/p;->a:F

    mul-float/2addr v4, v3

    const v3, 0x45706276

    mul-float/2addr v0, v3

    iget v3, v1, LD/p;->e:F

    mul-float/2addr v0, v3

    iget v3, v1, LD/p;->c:F

    mul-float/2addr v0, v3

    iget v3, v1, LD/p;->b:F

    div-float/2addr v4, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3e9c28f6    # 0.305f

    add-float/2addr v8, v4

    const/high16 v9, 0x41b80000    # 23.0f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    mul-float/2addr v0, v9

    const/high16 v9, 0x41300000    # 11.0f

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    add-float/2addr v9, v0

    const/high16 v0, 0x42d80000    # 108.0f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v9

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v8, v3

    const/high16 v0, 0x43e60000    # 460.0f

    mul-float/2addr v4, v0

    const v0, 0x43e18000    # 451.0f

    mul-float/2addr v0, v7

    add-float/2addr v0, v4

    const/high16 v2, 0x43900000    # 288.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v0

    const v0, 0x44af6000    # 1403.0f

    div-float/2addr v2, v0

    const v3, 0x445ec000    # 891.0f

    mul-float/2addr v3, v7

    sub-float v3, v4, v3

    const v9, 0x43828000    # 261.0f

    mul-float/2addr v9, v8

    sub-float/2addr v3, v9

    div-float/2addr v3, v0

    const/high16 v9, 0x435c0000    # 220.0f

    mul-float/2addr v7, v9

    sub-float/2addr v4, v7

    const v7, 0x45c4e000    # 6300.0f

    mul-float/2addr v8, v7

    sub-float/2addr v4, v8

    div-float/2addr v4, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v7, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v11, v0

    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    sub-double v11, v13, v11

    div-double/2addr v7, v11

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    double-to-float v0, v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v7, 0x42c80000    # 100.0f

    iget v8, v1, LD/p;->h:F

    div-float/2addr v7, v8

    mul-float/2addr v2, v7

    float-to-double v11, v0

    const-wide v5, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v0, v11

    mul-float/2addr v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v11, v0

    mul-double/2addr v11, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v9, v0

    sub-double v8, v13, v9

    div-double/2addr v11, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v7

    float-to-double v8, v0

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    mul-float/2addr v3, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v8, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v10, v0

    sub-double/2addr v13, v10

    div-double/2addr v8, v13

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v0, v8

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v7

    float-to-double v7, v0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v4, v0

    iget-object v0, v1, LD/p;->g:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    div-float/2addr v2, v5

    const/4 v5, 0x1

    aget v6, v0, v5

    div-float/2addr v3, v6

    const/4 v6, 0x2

    aget v0, v0, v6

    div-float/2addr v4, v0

    sget-object v0, LD/b;->b:[[F

    aget-object v7, v0, v1

    aget v8, v7, v1

    mul-float/2addr v8, v2

    aget v9, v7, v5

    mul-float/2addr v9, v3

    add-float/2addr v9, v8

    aget v7, v7, v6

    mul-float/2addr v7, v4

    add-float/2addr v7, v9

    aget-object v8, v0, v5

    aget v9, v8, v1

    mul-float/2addr v9, v2

    aget v10, v8, v5

    mul-float/2addr v10, v3

    add-float/2addr v10, v9

    aget v8, v8, v6

    mul-float/2addr v8, v4

    add-float/2addr v8, v10

    aget-object v0, v0, v6

    aget v1, v0, v1

    mul-float/2addr v2, v1

    aget v1, v0, v5

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    aget v0, v0, v6

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-double v9, v7

    float-to-double v11, v8

    float-to-double v13, v4

    invoke-static/range {v9 .. v14}, LE/a;->c(DDD)I

    move-result v0

    return v0
.end method
