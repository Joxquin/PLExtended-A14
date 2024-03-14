.class public final Lm0/u;
.super Lm0/b;
.source "SourceFile"


# instance fields
.field public final r:Ls0/b;

.field public final s:Ljava/lang/String;

.field public final t:Z

.field public final u:Ln0/g;

.field public v:Ln0/x;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/q;)V
    .locals 12

    iget-object v0, p3, Lr0/q;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

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

    iget-object v0, p3, Lr0/q;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

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

    iget v7, p3, Lr0/q;->i:F

    iget-object v8, p3, Lr0/q;->e:Lq0/d;

    iget-object v9, p3, Lr0/q;->f:Lq0/b;

    iget-object v10, p3, Lr0/q;->c:Ljava/util/List;

    iget-object v11, p3, Lr0/q;->b:Lq0/b;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v11}, Lm0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLq0/d;Lq0/b;Ljava/util/List;Lq0/b;)V

    iput-object p2, p0, Lm0/u;->r:Ls0/b;

    iget-object p1, p3, Lr0/q;->a:Ljava/lang/String;

    iput-object p1, p0, Lm0/u;->s:Ljava/lang/String;

    iget-boolean p1, p3, Lr0/q;->j:Z

    iput-boolean p1, p0, Lm0/u;->t:Z

    iget-object p1, p3, Lr0/q;->d:Lq0/a;

    invoke-virtual {p1}, Lq0/a;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/g;

    iput-object p3, p0, Lm0/u;->u:Ln0/g;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    return-void
.end method


# virtual methods
.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lm0/b;->e(Lx0/c;Ljava/lang/Object;)V

    sget-object v0, Lk0/G;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lm0/u;->u:Ln0/g;

    if-ne p2, v0, :cond_0

    invoke-virtual {v1, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lk0/G;->K:Landroid/graphics/ColorFilter;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lm0/u;->v:Ln0/x;

    iget-object v0, p0, Lm0/u;->r:Ls0/b;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_1
    const/4 p2, 0x0

    if-nez p1, :cond_2

    iput-object p2, p0, Lm0/u;->v:Ln0/x;

    goto :goto_0

    :cond_2
    new-instance v2, Ln0/x;

    invoke-direct {v2, p1, p2}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object v2, p0, Lm0/u;->v:Ln0/x;

    invoke-virtual {v2, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v0, v1}, Ls0/b;->d(Ln0/f;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-boolean v0, p0, Lm0/u;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm0/u;->u:Ln0/g;

    invoke-virtual {v0}, Ln0/f;->b()Lx0/a;

    move-result-object v1

    invoke-virtual {v0}, Ln0/f;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ln0/g;->l(Lx0/a;F)I

    move-result v0

    iget-object v1, p0, Lm0/b;->i:Ll0/a;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lm0/u;->v:Ln0/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lm0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/u;->s:Ljava/lang/String;

    return-object p0
.end method
