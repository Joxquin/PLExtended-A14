.class public final Lm0/j;
.super Lm0/b;
.source "SourceFile"


# instance fields
.field public final A:Ln0/q;

.field public B:Ln0/x;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Lq/j;

.field public final u:Lq/j;

.field public final v:Landroid/graphics/RectF;

.field public final w:Lcom/airbnb/lottie/model/content/GradientType;

.field public final x:I

.field public final y:Ln0/k;

.field public final z:Ln0/q;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/f;)V
    .locals 12

    iget-object v0, p3, Lr0/f;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v5, v0

    iget-object v0, p3, Lr0/f;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_1
    move-object v6, v0

    iget v7, p3, Lr0/f;->j:F

    iget-object v8, p3, Lr0/f;->d:Lq0/d;

    iget-object v9, p3, Lr0/f;->g:Lq0/b;

    iget-object v10, p3, Lr0/f;->k:Ljava/util/List;

    iget-object v11, p3, Lr0/f;->l:Lq0/b;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v11}, Lm0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLq0/d;Lq0/b;Ljava/util/List;Lq0/b;)V

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Lm0/j;->t:Lq/j;

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Lm0/j;->u:Lq/j;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm0/j;->v:Landroid/graphics/RectF;

    iget-object v0, p3, Lr0/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lm0/j;->r:Ljava/lang/String;

    iget-object v0, p3, Lr0/f;->b:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object v0, p0, Lm0/j;->w:Lcom/airbnb/lottie/model/content/GradientType;

    iget-boolean v0, p3, Lr0/f;->m:Z

    iput-boolean v0, p0, Lm0/j;->s:Z

    iget-object p1, p1, Lcom/airbnb/lottie/a;->d:Lk0/m;

    invoke-virtual {p1}, Lk0/m;->b()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lm0/j;->x:I

    iget-object p1, p3, Lr0/f;->c:Lq0/c;

    invoke-virtual {p1}, Lq0/c;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/k;

    iput-object v0, p0, Lm0/j;->y:Ln0/k;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lr0/f;->e:Lq0/f;

    invoke-virtual {p1}, Lq0/f;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/q;

    iput-object v0, p0, Lm0/j;->z:Ln0/q;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p3, Lr0/f;->f:Lq0/f;

    invoke-virtual {p1}, Lq0/f;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/q;

    iput-object p3, p0, Lm0/j;->A:Ln0/q;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    return-void
.end method


# virtual methods
.method public final d([I)[I
    .locals 3

    iget-object p0, p0, Lm0/j;->B:Ln0/x;

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
    .locals 2

    invoke-super {p0, p1, p2}, Lm0/b;->e(Lx0/c;Ljava/lang/Object;)V

    sget-object v0, Lk0/G;->L:[Ljava/lang/Integer;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lm0/j;->B:Ln0/x;

    iget-object v0, p0, Lm0/b;->f:Ls0/b;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput-object p2, p0, Lm0/j;->B:Ln0/x;

    goto :goto_0

    :cond_1
    new-instance v1, Ln0/x;

    invoke-direct {v1, p1, p2}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object v1, p0, Lm0/j;->B:Ln0/x;

    invoke-virtual {v1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/j;->B:Ln0/x;

    invoke-virtual {v0, p0}, Ls0/b;->d(Ln0/f;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lm0/j;->s:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lm0/j;->v:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lm0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->d:Lcom/airbnb/lottie/model/content/GradientType;

    iget-object v3, v0, Lm0/j;->w:Lcom/airbnb/lottie/model/content/GradientType;

    iget-object v4, v0, Lm0/j;->y:Ln0/k;

    iget-object v5, v0, Lm0/j;->A:Ln0/q;

    iget-object v6, v0, Lm0/j;->z:Ln0/q;

    if-ne v3, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lm0/j;->j()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, Lm0/j;->t:Lq/j;

    invoke-virtual {v7, v2, v3}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/LinearGradient;

    if-eqz v8, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/d;

    iget-object v8, v4, Lr0/d;->b:[I

    invoke-virtual {v0, v8}, Lm0/j;->d([I)[I

    move-result-object v14

    iget-object v15, v4, Lr0/d;->a:[F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    new-instance v8, Landroid/graphics/LinearGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v8}, Lq/j;->f(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lm0/j;->j()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, Lm0/j;->u:Lq/j;

    invoke-virtual {v7, v2, v3}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RadialGradient;

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/d;

    iget-object v8, v4, Lr0/d;->b:[I

    invoke-virtual {v0, v8}, Lm0/j;->d([I)[I

    move-result-object v13

    iget-object v14, v4, Lr0/d;->a:[F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v10

    float-to-double v8, v4

    sub-float/2addr v5, v11

    float-to-double v4, v5

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v12, v4

    new-instance v8, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v8}, Lq/j;->f(JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lm0/b;->i:Ll0/a;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, Lm0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/j;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Lm0/j;->z:Ln0/q;

    iget v0, v0, Ln0/f;->d:F

    iget v1, p0, Lm0/j;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lm0/j;->A:Ln0/q;

    iget v2, v2, Ln0/f;->d:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object p0, p0, Lm0/j;->y:Ln0/k;

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
