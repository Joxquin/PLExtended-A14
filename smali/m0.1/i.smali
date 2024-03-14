.class public final Lm0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/f;
.implements Ln0/a;
.implements Lm0/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ls0/b;

.field public final d:Lq/j;

.field public final e:Lq/j;

.field public final f:Landroid/graphics/Path;

.field public final g:Ll0/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/List;

.field public final j:Lcom/airbnb/lottie/model/content/GradientType;

.field public final k:Ln0/k;

.field public final l:Ln0/l;

.field public final m:Ln0/q;

.field public final n:Ln0/q;

.field public o:Ln0/x;

.field public p:Ln0/x;

.field public final q:Lcom/airbnb/lottie/a;

.field public final r:I

.field public s:Ln0/f;

.field public t:F

.field public final u:Ln0/i;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Lm0/i;->d:Lq/j;

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Lm0/i;->e:Lq/j;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm0/i;->f:Landroid/graphics/Path;

    new-instance v1, Ll0/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ll0/a;-><init>(I)V

    iput-object v1, p0, Lm0/i;->g:Ll0/a;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lm0/i;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm0/i;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lm0/i;->t:F

    iput-object p2, p0, Lm0/i;->c:Ls0/b;

    iget-object v1, p3, Lr0/e;->g:Ljava/lang/String;

    iput-object v1, p0, Lm0/i;->a:Ljava/lang/String;

    iget-boolean v1, p3, Lr0/e;->h:Z

    iput-boolean v1, p0, Lm0/i;->b:Z

    iput-object p1, p0, Lm0/i;->q:Lcom/airbnb/lottie/a;

    iget-object v1, p3, Lr0/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object v1, p0, Lm0/i;->j:Lcom/airbnb/lottie/model/content/GradientType;

    iget-object v1, p3, Lr0/e;->b:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p1, Lcom/airbnb/lottie/a;->d:Lk0/m;

    invoke-virtual {p1}, Lk0/m;->b()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lm0/i;->r:I

    iget-object p1, p3, Lr0/e;->c:Lq0/c;

    invoke-virtual {p1}, Lq0/c;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/k;

    iput-object v0, p0, Lm0/i;->k:Ln0/k;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lr0/e;->d:Lq0/d;

    invoke-virtual {p1}, Lq0/d;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/l;

    iput-object v0, p0, Lm0/i;->l:Ln0/l;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lr0/e;->e:Lq0/f;

    invoke-virtual {p1}, Lq0/f;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/q;

    iput-object v0, p0, Lm0/i;->m:Ln0/q;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lr0/e;->f:Lq0/f;

    invoke-virtual {p1}, Lq0/f;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/q;

    iput-object p3, p0, Lm0/i;->n:Ln0/q;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2}, Ls0/b;->m()Lr0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ls0/b;->m()Lr0/a;

    move-result-object p1

    iget-object p1, p1, Lr0/a;->a:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    iput-object p1, p0, Lm0/i;->s:Ln0/f;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Lm0/i;->s:Ln0/f;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    :cond_0
    invoke-virtual {p2}, Ls0/b;->n()Lu0/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ln0/i;

    invoke-virtual {p2}, Ls0/b;->n()Lu0/j;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Ln0/i;-><init>(Ln0/a;Ls0/b;Lu0/j;)V

    iput-object p1, p0, Lm0/i;->u:Ln0/i;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lm0/i;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lm0/i;->i:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/n;

    invoke-interface {v2}, Lm0/n;->g()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lm0/i;->q:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/d;

    instance-of v1, v0, Lm0/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm0/i;->i:Ljava/util/List;

    check-cast v0, Lm0/n;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d([I)[I
    .locals 3

    iget-object p0, p0, Lm0/i;->p:Ln0/x;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lk0/G;->d:Ljava/lang/Integer;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lm0/i;->l:Ln0/l;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lk0/G;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    iget-object v2, p0, Lm0/i;->c:Ls0/b;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lm0/i;->o:Ln0/x;

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_1
    if-nez p1, :cond_2

    iput-object v1, p0, Lm0/i;->o:Ln0/x;

    goto/16 :goto_0

    :cond_2
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Lm0/i;->o:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/i;->o:Ln0/x;

    invoke-virtual {v2, p0}, Ls0/b;->d(Ln0/f;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lk0/G;->L:[Ljava/lang/Integer;

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lm0/i;->p:Ln0/x;

    if-eqz p2, :cond_4

    invoke-virtual {v2, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_4
    if-nez p1, :cond_5

    iput-object v1, p0, Lm0/i;->p:Ln0/x;

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lm0/i;->d:Lq/j;

    invoke-virtual {p2}, Lq/j;->a()V

    iget-object p2, p0, Lm0/i;->e:Lq/j;

    invoke-virtual {p2}, Lq/j;->a()V

    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Lm0/i;->p:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/i;->p:Ln0/x;

    invoke-virtual {v2, p0}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lk0/G;->j:Ljava/lang/Float;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lm0/i;->s:Ln0/f;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_7
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Lm0/i;->s:Ln0/f;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/i;->s:Ln0/f;

    invoke-virtual {v2, p0}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lk0/G;->e:Ljava/lang/Integer;

    iget-object p0, p0, Lm0/i;->u:Ln0/i;

    if-ne p2, v0, :cond_9

    if-eqz p0, :cond_9

    iget-object p0, p0, Ln0/i;->b:Ln0/g;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lk0/G;->G:Ljava/lang/Float;

    if-ne p2, v0, :cond_a

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Ln0/i;->c(Lx0/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lk0/G;->H:Ljava/lang/Float;

    if-ne p2, v0, :cond_b

    if-eqz p0, :cond_b

    iget-object p0, p0, Ln0/i;->d:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lk0/G;->I:Ljava/lang/Float;

    if-ne p2, v0, :cond_c

    if-eqz p0, :cond_c

    iget-object p0, p0, Ln0/i;->e:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lk0/G;->J:Ljava/lang/Float;

    if-ne p2, v0, :cond_d

    if-eqz p0, :cond_d

    iget-object p0, p0, Ln0/i;->f:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lm0/i;->b:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lm0/i;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lm0/i;->i:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm0/n;

    invoke-interface {v5}, Lm0/n;->g()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lm0/i;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->d:Lcom/airbnb/lottie/model/content/GradientType;

    iget-object v5, v0, Lm0/i;->j:Lcom/airbnb/lottie/model/content/GradientType;

    const/4 v6, 0x0

    iget-object v7, v0, Lm0/i;->k:Ln0/k;

    iget-object v8, v0, Lm0/i;->n:Ln0/q;

    iget-object v9, v0, Lm0/i;->m:Ln0/q;

    if-ne v5, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lm0/i;->j()I

    move-result v4

    int-to-long v4, v4

    iget-object v10, v0, Lm0/i;->d:Lq/j;

    invoke-virtual {v10, v4, v5}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/LinearGradient;

    if-eqz v11, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v9}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr0/d;

    iget-object v11, v7, Lr0/d;->b:[I

    invoke-virtual {v0, v11}, Lm0/i;->d([I)[I

    move-result-object v17

    iget-object v7, v7, Lr0/d;->a:[F

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v11

    move/from16 v16, v8

    move-object/from16 v18, v7

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v4, v5, v11}, Lq/j;->f(JLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lm0/i;->j()I

    move-result v4

    int-to-long v4, v4

    iget-object v10, v0, Lm0/i;->e:Lq/j;

    invoke-virtual {v10, v4, v5}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RadialGradient;

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr0/d;

    iget-object v11, v7, Lr0/d;->b:[I

    invoke-virtual {v0, v11}, Lm0/i;->d([I)[I

    move-result-object v16

    iget-object v7, v7, Lr0/d;->a:[F

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v13

    float-to-double v11, v9

    sub-float/2addr v8, v14

    float-to-double v8, v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    cmpg-float v9, v8, v6

    if-gtz v9, :cond_5

    const v8, 0x3a83126f    # 0.001f

    :cond_5
    move v15, v8

    new-instance v11, Landroid/graphics/RadialGradient;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v11

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v4, v5, v11}, Lq/j;->f(JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v11, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lm0/i;->g:Ll0/a;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, Lm0/i;->o:Ln0/x;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_6
    iget-object v4, v0, Lm0/i;->s:Ln0/f;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_7
    iget v5, v0, Lm0/i;->t:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_8

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_8
    :goto_2
    iput v4, v0, Lm0/i;->t:F

    :cond_9
    iget-object v4, v0, Lm0/i;->u:Ln0/i;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v1}, Ln0/i;->a(Ll0/a;)V

    :cond_a
    move/from16 v4, p3

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget-object v0, v0, Lm0/i;->l:Ln0/l;

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v4, v0

    mul-float/2addr v4, v5

    float-to-int v0, v4

    sget-object v4, Lw0/f;->a:Landroid/graphics/PointF;

    const/16 v4, 0xff

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ll0/a;->setAlpha(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lw0/f;->d(Lp0/e;ILjava/util/List;Lp0/e;Lm0/l;)V

    return-void
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Lm0/i;->m:Ln0/q;

    iget v0, v0, Ln0/f;->d:F

    iget v1, p0, Lm0/i;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lm0/i;->n:Ln0/q;

    iget v2, v2, Ln0/f;->d:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object p0, p0, Lm0/i;->k:Ln0/k;

    iget p0, p0, Ln0/f;->d:F

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, p0

    :cond_2
    return v0
.end method
