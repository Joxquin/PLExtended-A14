.class public final Ln0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Ln0/f;

.field public g:Ln0/f;

.field public h:Ln0/f;

.field public i:Ln0/f;

.field public j:Ln0/f;

.field public k:Ln0/j;

.field public l:Ln0/j;

.field public m:Ln0/f;

.field public n:Ln0/f;


# direct methods
.method public constructor <init>(Lq0/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln0/w;->a:Landroid/graphics/Matrix;

    iget-object v0, p1, Lq0/l;->a:Lq0/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lq0/e;->a()Ln0/f;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ln0/w;->f:Ln0/f;

    iget-object v0, p1, Lq0/l;->b:Lq0/m;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lq0/m;->a()Ln0/f;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ln0/w;->g:Ln0/f;

    iget-object v0, p1, Lq0/l;->c:Lq0/g;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lq0/g;->a()Ln0/f;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ln0/w;->h:Ln0/f;

    iget-object v0, p1, Lq0/l;->d:Lq0/b;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Ln0/w;->i:Ln0/f;

    iget-object v0, p1, Lq0/l;->f:Lq0/b;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    check-cast v0, Ln0/j;

    :goto_4
    iput-object v0, p0, Ln0/w;->k:Ln0/j;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln0/w;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln0/w;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln0/w;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ln0/w;->e:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Ln0/w;->b:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln0/w;->c:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln0/w;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln0/w;->e:[F

    :goto_5
    iget-object v0, p1, Lq0/l;->g:Lq0/b;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    check-cast v0, Ln0/j;

    :goto_6
    iput-object v0, p0, Ln0/w;->l:Ln0/j;

    iget-object v0, p1, Lq0/l;->e:Lq0/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lq0/d;->a()Ln0/f;

    move-result-object v0

    iput-object v0, p0, Ln0/w;->j:Ln0/f;

    :cond_7
    iget-object v0, p1, Lq0/l;->h:Lq0/b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    iput-object v0, p0, Ln0/w;->m:Ln0/f;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Ln0/w;->m:Ln0/f;

    :goto_7
    iget-object p1, p1, Lq0/l;->i:Lq0/b;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    iput-object p1, p0, Ln0/w;->n:Ln0/f;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Ln0/w;->n:Ln0/f;

    :goto_8
    return-void
.end method


# virtual methods
.method public final a(Ls0/b;)V
    .locals 1

    iget-object v0, p0, Ln0/w;->j:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->m:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->n:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->f:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->g:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->h:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->i:Ln0/f;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object v0, p0, Ln0/w;->k:Ln0/j;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    iget-object p0, p0, Ln0/w;->l:Ln0/j;

    invoke-virtual {p1, p0}, Ls0/b;->d(Ln0/f;)V

    return-void
.end method

.method public final b(Ln0/a;)V
    .locals 1

    iget-object v0, p0, Ln0/w;->j:Ln0/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_0
    iget-object v0, p0, Ln0/w;->m:Ln0/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_1
    iget-object v0, p0, Ln0/w;->n:Ln0/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_2
    iget-object v0, p0, Ln0/w;->f:Ln0/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_3
    iget-object v0, p0, Ln0/w;->g:Ln0/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_4
    iget-object v0, p0, Ln0/w;->h:Ln0/f;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_5
    iget-object v0, p0, Ln0/w;->i:Ln0/f;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_6
    iget-object v0, p0, Ln0/w;->k:Ln0/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_7
    iget-object p0, p0, Ln0/w;->l:Ln0/j;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Ln0/f;->a(Ln0/a;)V

    :cond_8
    return-void
.end method

.method public final c(Lx0/c;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lk0/G;->f:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Ln0/w;->f:Ln0/f;

    if-nez p2, :cond_0

    new-instance p2, Ln0/x;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->f:Ln0/f;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lk0/G;->g:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Ln0/w;->g:Ln0/f;

    if-nez p2, :cond_2

    new-instance p2, Ln0/x;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->g:Ln0/f;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lk0/G;->h:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Ln0/w;->g:Ln0/f;

    instance-of v1, v0, Ln0/t;

    if-eqz v1, :cond_4

    check-cast v0, Ln0/t;

    iget-object p0, v0, Ln0/t;->m:Lx0/c;

    iput-object p1, v0, Ln0/t;->m:Lx0/c;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lk0/G;->i:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Ln0/w;->g:Ln0/f;

    instance-of v1, v0, Ln0/t;

    if-eqz v1, :cond_5

    check-cast v0, Ln0/t;

    iget-object p0, v0, Ln0/t;->n:Lx0/c;

    iput-object p1, v0, Ln0/t;->n:Lx0/c;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lk0/G;->o:Lx0/d;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Ln0/w;->h:Ln0/f;

    if-nez p2, :cond_6

    new-instance p2, Ln0/x;

    new-instance v0, Lx0/d;

    invoke-direct {v0}, Lx0/d;-><init>()V

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->h:Ln0/f;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lk0/G;->p:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Ln0/w;->i:Ln0/f;

    if-nez p2, :cond_8

    new-instance p2, Ln0/x;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->i:Ln0/f;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lk0/G;->c:Ljava/lang/Integer;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Ln0/w;->j:Ln0/f;

    if-nez p2, :cond_a

    new-instance p2, Ln0/x;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->j:Ln0/f;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lk0/G;->C:Ljava/lang/Float;

    const/high16 v2, 0x42c80000    # 100.0f

    if-ne p2, v0, :cond_d

    iget-object p2, p0, Ln0/w;->m:Ln0/f;

    if-nez p2, :cond_c

    new-instance p2, Ln0/x;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->m:Ln0/f;

    goto :goto_0

    :cond_c
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_d
    sget-object v0, Lk0/G;->D:Ljava/lang/Float;

    if-ne p2, v0, :cond_f

    iget-object p2, p0, Ln0/w;->n:Ln0/f;

    if-nez p2, :cond_e

    new-instance p2, Ln0/x;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ln0/w;->n:Ln0/f;

    goto :goto_0

    :cond_e
    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_f
    sget-object v0, Lk0/G;->q:Ljava/lang/Float;

    if-ne p2, v0, :cond_11

    iget-object p2, p0, Ln0/w;->k:Ln0/j;

    if-nez p2, :cond_10

    new-instance p2, Ln0/j;

    new-instance v0, Lx0/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ln0/j;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Ln0/w;->k:Ln0/j;

    :cond_10
    iget-object p0, p0, Ln0/w;->k:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lk0/G;->r:Ljava/lang/Float;

    if-ne p2, v0, :cond_13

    iget-object p2, p0, Ln0/w;->l:Ln0/j;

    if-nez p2, :cond_12

    new-instance p2, Ln0/j;

    new-instance v0, Lx0/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ln0/j;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Ln0/w;->l:Ln0/j;

    :cond_12
    iget-object p0, p0, Ln0/w;->l:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Landroid/graphics/Matrix;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Ln0/w;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v0, Ln0/w;->g:Ln0/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v4, v3

    if-nez v5, :cond_0

    iget v5, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_1

    :cond_0
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v2, v0, Ln0/w;->i:Ln0/f;

    if-eqz v2, :cond_3

    instance-of v4, v2, Ln0/x;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_2
    check-cast v2, Ln0/j;

    invoke-virtual {v2}, Ln0/j;->l()F

    move-result v2

    :goto_0
    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v2, v0, Ln0/w;->k:Ln0/j;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_9

    iget-object v5, v0, Ln0/w;->l:Ln0/j;

    const/high16 v6, 0x42b40000    # 90.0f

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ln0/j;->l()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v5, v7

    :goto_1
    iget-object v7, v0, Ln0/w;->l:Ln0/j;

    if-nez v7, :cond_5

    move v6, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ln0/j;->l()F

    move-result v7

    neg-float v7, v7

    add-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    :goto_2
    invoke-virtual {v2}, Ln0/j;->l()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v2, v7

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/16 v9, 0x9

    iget-object v10, v0, Ln0/w;->e:[F

    if-ge v8, v9, :cond_6

    aput v3, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    aput v5, v10, v7

    const/4 v8, 0x1

    aput v6, v10, v8

    neg-float v11, v6

    const/4 v12, 0x3

    aput v11, v10, v12

    const/4 v13, 0x4

    aput v5, v10, v13

    const/16 v14, 0x8

    aput v4, v10, v14

    iget-object v15, v0, Ln0/w;->b:Landroid/graphics/Matrix;

    invoke-virtual {v15, v10}, Landroid/graphics/Matrix;->setValues([F)V

    move v8, v7

    :goto_4
    if-ge v8, v9, :cond_7

    aput v3, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    aput v4, v10, v7

    aput v2, v10, v12

    aput v4, v10, v13

    aput v4, v10, v14

    iget-object v2, v0, Ln0/w;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->setValues([F)V

    move v8, v7

    :goto_5
    if-ge v8, v9, :cond_8

    aput v3, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    aput v5, v10, v7

    const/4 v7, 0x1

    aput v11, v10, v7

    aput v6, v10, v12

    aput v5, v10, v13

    aput v4, v10, v14

    iget-object v5, v0, Ln0/w;->d:Landroid/graphics/Matrix;

    invoke-virtual {v5, v10}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v2, v15}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_9
    iget-object v2, v0, Ln0/w;->h:Ln0/f;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx0/d;

    iget v5, v2, Lx0/d;->a:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_a

    iget v6, v2, Lx0/d;->b:F

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_b

    :cond_a
    iget v2, v2, Lx0/d;->b:F

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    iget-object v0, v0, Ln0/w;->f:Ln0/f;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_c

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_d

    :cond_c
    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_d
    return-object v1
.end method

.method public final e(F)Landroid/graphics/Matrix;
    .locals 8

    iget-object v0, p0, Ln0/w;->g:Ln0/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Ln0/w;->h:Ln0/f;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx0/d;

    :goto_1
    iget-object v3, p0, Ln0/w;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget v0, v2, Lx0/d;->a:F

    float-to-double v4, v0

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iget v2, v2, Lx0/d;->b:F

    float-to-double v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Ln0/w;->i:Ln0/f;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Ln0/w;->f:Ln0/f;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    mul-float/2addr v0, p1

    const/4 p0, 0x0

    if-nez v1, :cond_5

    move p1, p0

    goto :goto_3

    :cond_5
    iget p1, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p0, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v3, v0, p1, p0}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    return-object v3
.end method
