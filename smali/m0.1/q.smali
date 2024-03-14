.class public final Lm0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/f;
.implements Lm0/n;
.implements Lm0/k;
.implements Ln0/a;
.implements Lm0/l;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Lcom/airbnb/lottie/a;

.field public final d:Ls0/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ln0/j;

.field public final h:Ln0/j;

.field public final i:Ln0/w;

.field public j:Lm0/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lm0/q;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm0/q;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lm0/q;->c:Lcom/airbnb/lottie/a;

    iput-object p2, p0, Lm0/q;->d:Ls0/b;

    iget-object p1, p3, Lr0/k;->a:Ljava/lang/String;

    iput-object p1, p0, Lm0/q;->e:Ljava/lang/String;

    iget-boolean p1, p3, Lr0/k;->e:Z

    iput-boolean p1, p0, Lm0/q;->f:Z

    iget-object p1, p3, Lr0/k;->b:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/j;

    iput-object v0, p0, Lm0/q;->g:Ln0/j;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p3, Lr0/k;->c:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln0/j;

    iput-object v0, p0, Lm0/q;->h:Ln0/j;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p3, Lr0/k;->d:Lq0/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ln0/w;

    invoke-direct {p3, p1}, Ln0/w;-><init>(Lq0/l;)V

    iput-object p3, p0, Lm0/q;->i:Ln0/w;

    invoke-virtual {p3, p2}, Ln0/w;->a(Ls0/b;)V

    invoke-virtual {p3, p0}, Ln0/w;->b(Ln0/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lm0/q;->j:Lm0/e;

    invoke-virtual {p0, p1, p2, p3}, Lm0/e;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lm0/q;->c:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lm0/q;->j:Lm0/e;

    invoke-virtual {p0, p1, p2}, Lm0/e;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final d(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lm0/q;->j:Lm0/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/d;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lm0/e;

    iget-object v2, p0, Lm0/q;->c:Lcom/airbnb/lottie/a;

    iget-object v3, p0, Lm0/q;->d:Ls0/b;

    const-string v4, "Repeater"

    iget-boolean v5, p0, Lm0/q;->f:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lm0/e;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Ljava/lang/String;ZLjava/util/List;Lq0/l;)V

    iput-object p1, p0, Lm0/q;->j:Lm0/e;

    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm0/q;->i:Ln0/w;

    invoke-virtual {v0, p1, p2}, Ln0/w;->c(Lx0/c;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lk0/G;->u:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lm0/q;->g:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lk0/G;->v:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lm0/q;->h:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    iget-object v0, p0, Lm0/q;->g:Ln0/j;

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lm0/q;->h:Ln0/j;

    invoke-virtual {v1}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lm0/q;->i:Ln0/w;

    iget-object v3, v2, Ln0/w;->m:Ln0/f;

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v5, v2, Ln0/w;->n:Ln0/f;

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v4, v0

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    iget-object v6, p0, Lm0/q;->a:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    int-to-float v7, v4

    add-float v8, v7, v1

    invoke-virtual {v2, v8}, Ln0/w;->e(F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v8, p3

    div-float/2addr v7, v0

    sget-object v9, Lw0/f;->a:Landroid/graphics/PointF;

    sub-float v9, v5, v3

    mul-float/2addr v9, v7

    add-float/2addr v9, v3

    mul-float/2addr v9, v8

    iget-object v7, p0, Lm0/q;->j:Lm0/e;

    float-to-int v8, v9

    invoke-virtual {v7, p1, v6, v8}, Lm0/e;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lm0/q;->j:Lm0/e;

    invoke-virtual {v0}, Lm0/e;->g()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lm0/q;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lm0/q;->g:Ln0/j;

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lm0/q;->h:Ln0/j;

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v4, p0, Lm0/q;->a:Landroid/graphics/Matrix;

    int-to-float v5, v2

    add-float/2addr v5, v3

    iget-object v6, p0, Lm0/q;->i:Ln0/w;

    invoke-virtual {v6, v5}, Ln0/w;->e(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/q;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lw0/f;->d(Lp0/e;ILjava/util/List;Lp0/e;Lm0/l;)V

    return-void
.end method
