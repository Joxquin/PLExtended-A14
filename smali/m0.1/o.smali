.class public final Lm0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/n;
.implements Ln0/a;
.implements Lm0/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/airbnb/lottie/a;

.field public final d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public final e:Z

.field public final f:Z

.field public final g:Ln0/j;

.field public final h:Ln0/f;

.field public final i:Ln0/j;

.field public final j:Ln0/j;

.field public final k:Ln0/j;

.field public final l:Ln0/j;

.field public final m:Ln0/j;

.field public final n:Lm0/c;

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/i;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm0/o;->a:Landroid/graphics/Path;

    new-instance v0, Lm0/c;

    invoke-direct {v0}, Lm0/c;-><init>()V

    iput-object v0, p0, Lm0/o;->n:Lm0/c;

    iput-object p1, p0, Lm0/o;->c:Lcom/airbnb/lottie/a;

    iget-object p1, p3, Lr0/i;->a:Ljava/lang/String;

    iput-object p1, p0, Lm0/o;->b:Ljava/lang/String;

    iget-object p1, p3, Lr0/i;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iput-object p1, p0, Lm0/o;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iget-boolean v0, p3, Lr0/i;->j:Z

    iput-boolean v0, p0, Lm0/o;->e:Z

    iget-boolean v0, p3, Lr0/i;->k:Z

    iput-boolean v0, p0, Lm0/o;->f:Z

    iget-object v0, p3, Lr0/i;->c:Lq0/b;

    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ln0/j;

    iput-object v1, p0, Lm0/o;->g:Ln0/j;

    iget-object v1, p3, Lr0/i;->d:Lq0/m;

    invoke-interface {v1}, Lq0/m;->a()Ln0/f;

    move-result-object v1

    iput-object v1, p0, Lm0/o;->h:Ln0/f;

    iget-object v2, p3, Lr0/i;->e:Lq0/b;

    invoke-virtual {v2}, Lq0/b;->a()Ln0/f;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ln0/j;

    iput-object v3, p0, Lm0/o;->i:Ln0/j;

    iget-object v3, p3, Lr0/i;->g:Lq0/b;

    invoke-virtual {v3}, Lq0/b;->a()Ln0/f;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ln0/j;

    iput-object v4, p0, Lm0/o;->k:Ln0/j;

    iget-object v4, p3, Lr0/i;->i:Lq0/b;

    invoke-virtual {v4}, Lq0/b;->a()Ln0/f;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ln0/j;

    iput-object v5, p0, Lm0/o;->m:Ln0/j;

    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, v5, :cond_0

    iget-object v6, p3, Lr0/i;->f:Lq0/b;

    invoke-virtual {v6}, Lq0/b;->a()Ln0/f;

    move-result-object v6

    check-cast v6, Ln0/j;

    iput-object v6, p0, Lm0/o;->j:Ln0/j;

    iget-object p3, p3, Lr0/i;->h:Lq0/b;

    invoke-virtual {p3}, Lq0/b;->a()Ln0/f;

    move-result-object p3

    check-cast p3, Ln0/j;

    iput-object p3, p0, Lm0/o;->l:Ln0/j;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, Lm0/o;->j:Ln0/j;

    iput-object p3, p0, Lm0/o;->l:Ln0/j;

    :goto_0
    invoke-virtual {p2, v0}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2, v1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2, v2}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2, v3}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2, v4}, Ls0/b;->d(Ln0/f;)V

    if-ne p1, v5, :cond_1

    iget-object p3, p0, Lm0/o;->j:Ln0/j;

    invoke-virtual {p2, p3}, Ls0/b;->d(Ln0/f;)V

    iget-object p3, p0, Lm0/o;->l:Ln0/j;

    invoke-virtual {p2, p3}, Ls0/b;->d(Ln0/f;)V

    :cond_1
    invoke-virtual {v0, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v2, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v3, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v4, p0}, Ln0/f;->a(Ln0/a;)V

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lm0/o;->j:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Lm0/o;->l:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/o;->o:Z

    iget-object p0, p0, Lm0/o;->c:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/d;

    instance-of v1, v0, Lm0/v;

    if-eqz v1, :cond_0

    check-cast v0, Lm0/v;

    iget-object v1, v0, Lm0/v;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lm0/o;->n:Lm0/c;

    iget-object v1, v1, Lm0/c;->a:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lm0/v;->d(Ln0/a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lk0/G;->w:Ljava/lang/Float;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lm0/o;->g:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lk0/G;->x:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lm0/o;->i:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lk0/G;->n:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lm0/o;->h:Ln0/f;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lk0/G;->y:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lm0/o;->j:Ln0/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lk0/G;->z:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lm0/o;->k:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lk0/G;->A:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lm0/o;->l:Ln0/j;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lk0/G;->B:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    iget-object p0, p0, Lm0/o;->m:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final g()Landroid/graphics/Path;
    .locals 39

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lm0/o;->o:Z

    iget-object v9, v0, Lm0/o;->a:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lm0/o;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lm0/o;->o:Z

    return-object v9

    :cond_1
    iget-object v1, v0, Lm0/o;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v10, v0, Lm0/o;->h:Ln0/f;

    iget-object v3, v0, Lm0/o;->m:Ln0/j;

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, v0, Lm0/o;->k:Ln0/j;

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v11, 0x4056800000000000L    # 90.0

    const-wide/16 v13, 0x0

    iget-object v8, v0, Lm0/o;->i:Ln0/j;

    iget-object v15, v0, Lm0/o;->g:Ln0/j;

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/16 v18, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v13, v2

    :goto_0
    sub-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    int-to-double v1, v1

    div-double/2addr v6, v1

    double-to-float v6, v6

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v13, v3, v4

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-double v7, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-float v3, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-float v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v5, v6

    add-double/2addr v11, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    const/4 v1, 0x0

    move-wide/from16 v21, v5

    :goto_1
    int-to-double v5, v1

    cmpg-double v2, v5, v19

    if-gez v2, :cond_5

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-float v15, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-float v6, v5

    cmpl-float v2, v13, v18

    if-eqz v2, :cond_4

    move-wide/from16 v23, v7

    float-to-double v7, v4

    move/from16 v25, v1

    float-to-double v0, v3

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v16

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v7, v6

    move-object v1, v10

    move-wide/from16 v26, v11

    float-to-double v10, v15

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    sub-double v7, v7, v16

    double-to-float v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v5, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v14, v13

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v8, v10

    mul-float/2addr v2, v8

    mul-float/2addr v0, v8

    mul-float/2addr v5, v8

    mul-float/2addr v8, v7

    sub-float/2addr v3, v2

    sub-float/2addr v4, v0

    add-float/2addr v5, v15

    add-float v0, v8, v6

    move-object v2, v9

    move-wide/from16 v10, v21

    move v12, v6

    move v6, v0

    move-wide/from16 v21, v23

    move v7, v15

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    move/from16 v25, v1

    move-object v1, v10

    move-wide/from16 v26, v11

    move-wide/from16 v10, v21

    move v12, v6

    move-wide/from16 v21, v7

    invoke-virtual {v9, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v2, v26, v10

    add-int/lit8 v0, v25, 0x1

    move v4, v12

    move-wide/from16 v7, v21

    move-wide/from16 v21, v10

    move-object v10, v1

    move-wide v11, v2

    move v3, v15

    move v1, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_5
    move-object v1, v10

    invoke-virtual {v1}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    :goto_3
    move-object v2, v9

    goto/16 :goto_12

    :cond_6
    move-object v1, v10

    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v13, v2

    :goto_4
    sub-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    float-to-double v12, v0

    div-double/2addr v6, v12

    double-to-float v2, v6

    move-object/from16 v14, p0

    iget-boolean v6, v14, Lm0/o;->f:Z

    if-eqz v6, :cond_8

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v2, v6

    :cond_8
    move v15, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v15, v2

    float-to-int v6, v0

    int-to-float v6, v6

    sub-float/2addr v0, v6

    cmpl-float v19, v0, v18

    if-eqz v19, :cond_9

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    mul-float/2addr v6, v8

    float-to-double v6, v6

    add-double/2addr v10, v6

    :cond_9
    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v5, v14, Lm0/o;->j:Ln0/j;

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v5, v14, Lm0/o;->l:Ln0/j;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    move/from16 v20, v5

    goto :goto_5

    :cond_a
    move/from16 v20, v18

    :goto_5
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v4

    move/from16 v21, v3

    goto :goto_6

    :cond_b
    move/from16 v21, v18

    :goto_6
    if-eqz v19, :cond_c

    invoke-static {v7, v6, v0, v6}, Lw/f;->a(FFFF)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move/from16 v25, v3

    mul-double v2, v22, v4

    double-to-float v2, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v3, v22, v4

    double-to-float v3, v3

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v4, v15, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v10, v4

    goto :goto_7

    :cond_c
    float-to-double v2, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v2, v2, v22

    double-to-float v3, v2

    invoke-virtual {v9, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v3

    float-to-double v2, v8

    add-double/2addr v10, v2

    move v2, v4

    move v3, v5

    move/from16 v25, v18

    :goto_7
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v22, v4, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v26, v10

    move v10, v4

    move v11, v5

    :goto_8
    int-to-double v4, v10

    cmpg-double v24, v4, v22

    if-gez v24, :cond_17

    if-eqz v11, :cond_d

    move/from16 v24, v7

    goto :goto_9

    :cond_d
    move/from16 v24, v6

    :goto_9
    cmpl-float v28, v25, v18

    if-eqz v28, :cond_e

    sub-double v29, v22, v12

    cmpl-double v29, v4, v29

    if-nez v29, :cond_e

    mul-float v29, v15, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    move/from16 v12, v29

    goto :goto_a

    :cond_e
    move v12, v8

    :goto_a
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    if-eqz v28, :cond_f

    sub-double v33, v22, v31

    cmpl-double v13, v4, v33

    if-nez v13, :cond_f

    move/from16 v28, v6

    move/from16 v24, v7

    move/from16 v13, v25

    goto :goto_b

    :cond_f
    move/from16 v28, v6

    move/from16 v13, v24

    move/from16 v24, v7

    :goto_b
    float-to-double v6, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v13, v33, v6

    double-to-float v13, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v6, v6, v33

    double-to-float v14, v6

    cmpl-float v6, v20, v18

    if-nez v6, :cond_10

    cmpl-float v6, v21, v18

    if-nez v6, :cond_10

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v33, v9

    move/from16 v36, v14

    move/from16 v35, v15

    move/from16 v14, v24

    move-object v9, v1

    move v15, v8

    move/from16 v1, v28

    goto/16 :goto_11

    :cond_10
    float-to-double v6, v3

    move/from16 v34, v8

    move-object/from16 v33, v9

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v6, v6, v16

    double-to-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    move-object v9, v1

    move v7, v2

    float-to-double v1, v14

    move/from16 v36, v14

    move/from16 v35, v15

    float-to-double v14, v13

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v16

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz v11, :cond_11

    move/from16 v2, v20

    goto :goto_c

    :cond_11
    move/from16 v2, v21

    :goto_c
    if-eqz v11, :cond_12

    move/from16 v15, v21

    goto :goto_d

    :cond_12
    move/from16 v15, v20

    :goto_d
    if-eqz v11, :cond_13

    move/from16 v37, v28

    goto :goto_e

    :cond_13
    move/from16 v37, v24

    :goto_e
    if-eqz v11, :cond_14

    move/from16 v38, v24

    goto :goto_f

    :cond_14
    move/from16 v38, v28

    :goto_f
    mul-float v37, v37, v2

    const v2, 0x3ef4e26d    # 0.47829f

    mul-float v37, v37, v2

    mul-float v8, v8, v37

    mul-float v37, v37, v6

    mul-float v38, v38, v15

    mul-float v38, v38, v2

    mul-float v14, v14, v38

    mul-float v38, v38, v1

    if-eqz v19, :cond_16

    if-nez v10, :cond_15

    mul-float/2addr v8, v0

    mul-float v37, v37, v0

    goto :goto_10

    :cond_15
    sub-double v1, v22, v31

    cmpl-double v1, v4, v1

    if-nez v1, :cond_16

    mul-float/2addr v14, v0

    mul-float v38, v38, v0

    :cond_16
    :goto_10
    sub-float v1, v7, v8

    sub-float v4, v3, v37

    add-float v5, v13, v14

    add-float v6, v36, v38

    move-object/from16 v2, v33

    move v3, v1

    move/from16 v1, v28

    move/from16 v14, v24

    move v7, v13

    move/from16 v15, v34

    move/from16 v8, v36

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_11
    float-to-double v2, v12

    add-double v26, v26, v2

    xor-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v6, v1

    move-object v1, v9

    move v2, v13

    move v7, v14

    move v8, v15

    move-object/from16 v9, v33

    move/from16 v15, v35

    move/from16 v3, v36

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v14, p0

    goto/16 :goto_8

    :cond_17
    move-object/from16 v33, v9

    move-object v9, v1

    invoke-virtual {v9}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v2, v33

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lm0/o;->n:Lm0/c;

    invoke-virtual {v1, v2}, Lm0/c;->a(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm0/o;->o:Z

    return-object v2
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/o;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lw0/f;->d(Lp0/e;ILjava/util/List;Lp0/e;Lm0/l;)V

    return-void
.end method
