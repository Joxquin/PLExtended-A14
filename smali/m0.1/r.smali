.class public final Lm0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/t;
.implements Ln0/a;


# instance fields
.field public final a:Lcom/airbnb/lottie/a;

.field public final b:Ln0/f;

.field public c:Lr0/m;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/r;->a:Lcom/airbnb/lottie/a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p3, Lr0/l;->a:Lq0/m;

    invoke-interface {p1}, Lq0/m;->a()Ln0/f;

    move-result-object p1

    iput-object p1, p0, Lm0/r;->b:Ln0/f;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    return-void
.end method

.method public static d(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, p1, v0

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lm0/r;->a:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final i(Lr0/m;)Lr0/m;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lr0/m;->a:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    return-object v1

    :cond_0
    iget-object v3, v0, Lm0/r;->b:Ln0/f;

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    iget-object v5, v1, Lr0/m;->a:Ljava/util/List;

    iget-boolean v6, v1, Lr0/m;->c:Z

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ltz v7, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lp0/a;

    add-int/lit8 v12, v7, -0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Lm0/r;->d(II)I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp0/a;

    if-nez v7, :cond_2

    if-nez v6, :cond_2

    iget-object v14, v1, Lr0/m;->b:Landroid/graphics/PointF;

    goto :goto_1

    :cond_2
    iget-object v14, v13, Lp0/a;->c:Landroid/graphics/PointF;

    :goto_1
    if-nez v7, :cond_3

    if-nez v6, :cond_3

    move-object v13, v14

    goto :goto_2

    :cond_3
    iget-object v13, v13, Lp0/a;->b:Landroid/graphics/PointF;

    :goto_2
    iget-object v11, v11, Lp0/a;->a:Landroid/graphics/PointF;

    iget-boolean v15, v1, Lr0/m;->c:Z

    if-nez v15, :cond_4

    if-nez v7, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v8

    if-ne v7, v15, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    move v7, v9

    :goto_3
    invoke-virtual {v13, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v11, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v7, :cond_5

    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    :goto_4
    move v7, v12

    goto :goto_0

    :cond_6
    iget-object v5, v0, Lm0/r;->c:Lr0/m;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lr0/m;->a:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v10, :cond_9

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v9

    :goto_5
    if-ge v7, v10, :cond_8

    new-instance v11, Lp0/a;

    invoke-direct {v11}, Lp0/a;-><init>()V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    new-instance v7, Lr0/m;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v7, v10, v9, v5}, Lr0/m;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v7, v0, Lm0/r;->c:Lr0/m;

    :cond_9
    iget-object v0, v0, Lm0/r;->c:Lr0/m;

    iput-boolean v6, v0, Lr0/m;->c:Z

    iget-object v4, v1, Lr0/m;->b:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v4}, Lr0/m;->a(FF)V

    iget-object v4, v0, Lr0/m;->a:Ljava/util/List;

    iget-boolean v5, v1, Lr0/m;->c:Z

    move v6, v9

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v9, v7, :cond_f

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp0/a;

    add-int/lit8 v10, v9, -0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Lm0/r;->d(II)I

    move-result v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp0/a;

    add-int/lit8 v11, v9, -0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v11, v12}, Lm0/r;->d(II)I

    move-result v11

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lp0/a;

    if-nez v9, :cond_a

    if-nez v5, :cond_a

    iget-object v12, v1, Lr0/m;->b:Landroid/graphics/PointF;

    goto :goto_7

    :cond_a
    iget-object v12, v10, Lp0/a;->c:Landroid/graphics/PointF;

    :goto_7
    if-nez v9, :cond_b

    if-nez v5, :cond_b

    move-object v13, v12

    goto :goto_8

    :cond_b
    iget-object v13, v10, Lp0/a;->b:Landroid/graphics/PointF;

    :goto_8
    iget-object v14, v7, Lp0/a;->a:Landroid/graphics/PointF;

    iget-object v11, v11, Lp0/a;->c:Landroid/graphics/PointF;

    iget-boolean v15, v1, Lr0/m;->c:Z

    if-nez v15, :cond_c

    if-nez v9, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v8

    if-ne v9, v15, :cond_c

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v13, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v13

    iget-object v7, v7, Lp0/a;->c:Landroid/graphics/PointF;

    if-eqz v13, :cond_e

    invoke-virtual {v14, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    if-nez v8, :cond_e

    iget v8, v12, Landroid/graphics/PointF;->x:F

    iget v10, v11, Landroid/graphics/PointF;->x:F

    sub-float v10, v8, v10

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v14

    iget v15, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v15, v8

    iget v8, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v13

    move-object v13, v2

    float-to-double v1, v10

    move-object/from16 p0, v13

    float-to-double v13, v14

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v13, v15

    move v2, v9

    float-to-double v8, v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v1, v3, v1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v12, Landroid/graphics/PointF;->x:F

    iget v10, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v9, v1, v9}, Lw/f;->a(FFFF)F

    move-result v10

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v12, v1, v12}, Lw/f;->a(FFFF)F

    move-result v1

    iget v11, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v11, v9, v8, v9}, Lw/f;->a(FFFF)F

    move-result v11

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v12, v8, v12}, Lw/f;->a(FFFF)F

    move-result v7

    sub-float v8, v10, v9

    const v13, 0x3f0d4952    # 0.5519f

    mul-float/2addr v8, v13

    sub-float v8, v10, v8

    sub-float v14, v1, v12

    mul-float/2addr v14, v13

    sub-float v14, v1, v14

    sub-float v9, v11, v9

    mul-float/2addr v9, v13

    sub-float v9, v11, v9

    sub-float v12, v7, v12

    mul-float/2addr v12, v13

    sub-float v12, v7, v12

    add-int/lit8 v13, v6, -0x1

    move-object v15, v4

    check-cast v15, Ljava/util/ArrayList;

    move/from16 v16, v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v13, v3}, Lm0/r;->d(II)I

    move-result v3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/a;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp0/a;

    move/from16 v17, v5

    iget-object v5, v3, Lp0/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v5, v10, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v3, Lp0/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v3, v10, v1}, Landroid/graphics/PointF;->set(FF)V

    if-nez v2, :cond_d

    invoke-virtual {v0, v10, v1}, Lr0/m;->a(FF)V

    :cond_d
    iget-object v1, v13, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v1, v8, v14}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/a;

    iget-object v3, v13, Lp0/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v3, v9, v12}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v13, Lp0/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v3, v11, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v1, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v1, v11, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_a

    :cond_e
    move-object/from16 p0, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move v2, v9

    add-int/lit8 v1, v6, -0x1

    move-object v3, v4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v1, v5}, Lm0/r;->d(II)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/a;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/a;

    iget-object v5, v10, Lp0/a;->c:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v9, v1, Lp0/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v9, v8, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, v10, Lp0/a;->c:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lp0/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v1, v8, v5}, Landroid/graphics/PointF;->set(FF)V

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    iget-object v3, v3, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v5}, Landroid/graphics/PointF;->set(FF)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v2, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_6

    :cond_f
    return-object v0
.end method
