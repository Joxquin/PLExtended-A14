.class public final Ls0/c;
.super Ls0/b;
.source "SourceFile"


# instance fields
.field public D:Ln0/f;

.field public final E:Ljava/util/List;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/RectF;

.field public final H:Landroid/graphics/Paint;

.field public I:Ljava/lang/Boolean;

.field public J:Ljava/lang/Boolean;

.field public K:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/e;Ljava/util/List;Lk0/m;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Ls0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls0/c;->E:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ls0/c;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ls0/c;->G:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ls0/c;->H:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls0/c;->K:Z

    const/4 v1, 0x0

    iget-object p2, p2, Ls0/e;->s:Lq0/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lq0/b;->a()Ln0/f;

    move-result-object p2

    iput-object p2, p0, Ls0/c;->D:Ln0/f;

    invoke-virtual {p0, p2}, Ls0/b;->d(Ln0/f;)V

    iget-object p2, p0, Ls0/c;->D:Ln0/f;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ls0/c;->D:Ln0/f;

    :goto_0
    new-instance p2, Lq/j;

    iget-object v2, p4, Lk0/m;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Lq/j;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_a

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/e;

    iget-object v6, v5, Ls0/e;->e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eq v6, v0, :cond_5

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unknown layer type "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Ls0/e;->e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lw0/c;->b(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_2

    :cond_1
    new-instance v6, Ls0/j;

    invoke-direct {v6, p1, v5}, Ls0/j;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    goto :goto_2

    :cond_2
    new-instance v6, Ls0/g;

    invoke-direct {v6, p1, v5, p0}, Ls0/g;-><init>(Lcom/airbnb/lottie/a;Ls0/e;Ls0/c;)V

    goto :goto_2

    :cond_3
    new-instance v6, Ls0/f;

    invoke-direct {v6, p1, v5}, Ls0/f;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    goto :goto_2

    :cond_4
    new-instance v6, Ls0/d;

    invoke-direct {v6, p1, v5}, Ls0/d;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    goto :goto_2

    :cond_5
    new-instance v6, Ls0/h;

    invoke-direct {v6, p1, v5}, Ls0/h;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    goto :goto_2

    :cond_6
    new-instance v6, Ls0/c;

    iget-object v8, p4, Lk0/m;->c:Ljava/util/Map;

    iget-object v9, v5, Ls0/e;->g:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v6, p1, v5, v8, p4}, Ls0/c;-><init>(Lcom/airbnb/lottie/a;Ls0/e;Ljava/util/List;Lk0/m;)V

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    iget-object v8, v6, Ls0/b;->q:Ls0/e;

    iget-wide v8, v8, Ls0/e;->d:J

    invoke-virtual {p2, v8, v9, v6}, Lq/j;->f(JLjava/lang/Object;)V

    if-eqz v3, :cond_8

    iput-object v6, v3, Ls0/b;->t:Ls0/b;

    move-object v3, v1

    goto :goto_3

    :cond_8
    iget-object v8, p0, Ls0/c;->E:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, v5, Ls0/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v0, :cond_9

    if-eq v4, v7, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_a
    :goto_4
    invoke-virtual {p2}, Lq/j;->g()I

    move-result p0

    if-ge v4, p0, :cond_d

    invoke-virtual {p2, v4}, Lq/j;->e(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls0/b;

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Ls0/b;->q:Ls0/e;

    iget-wide p3, p1, Ls0/e;->f:J

    invoke-virtual {p2, p3, p4}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/b;

    if-eqz p1, :cond_c

    iput-object p1, p0, Ls0/b;->u:Ls0/b;

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ls0/c;->E:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    iget-object v1, p0, Ls0/c;->F:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-object v3, p0, Ls0/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3, v0}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ls0/b;->e(Lx0/c;Ljava/lang/Object;)V

    sget-object v0, Lk0/G;->E:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Ls0/c;->D:Ln0/f;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ln0/x;

    invoke-direct {v0, p1, p2}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object v0, p0, Ls0/c;->D:Ln0/f;

    invoke-virtual {v0, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/c;->D:Ln0/f;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Ls0/c;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Ls0/b;->q:Ls0/e;

    iget v2, v1, Ls0/e;->o:I

    int-to-float v2, v2

    iget v3, v1, Ls0/e;->p:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    iget-boolean v2, v2, Lcom/airbnb/lottie/a;->v:Z

    iget-object v3, p0, Ls0/c;->E:Ljava/util/List;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    if-eq p3, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    iget-object v7, p0, Ls0/c;->H:Landroid/graphics/Paint;

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v8, Lw0/h;->a:Lw0/g;

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v2, :cond_2

    move p3, v4

    :cond_2
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_2
    if-ltz v2, :cond_6

    iget-boolean v4, p0, Ls0/c;->K:Z

    if-nez v4, :cond_3

    iget-object v4, v1, Ls0/e;->c:Ljava/lang/String;

    const-string v7, "__container"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls0/b;

    invoke-virtual {v4, p1, p2, p3}, Ls0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public final r(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ls0/c;->E:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Ls0/b;->h(Lp0/e;ILjava/util/List;Lp0/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Z)V
    .locals 1

    invoke-super {p0, p1}, Ls0/b;->s(Z)V

    iget-object p0, p0, Ls0/c;->E:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->s(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 4

    invoke-super {p0, p1}, Ls0/b;->t(F)V

    iget-object v0, p0, Ls0/c;->D:Ln0/f;

    iget-object v1, p0, Ls0/b;->q:Ls0/e;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    iget-object p1, p1, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iget v2, p1, Lk0/m;->l:F

    iget p1, p1, Lk0/m;->k:F

    sub-float/2addr v2, p1

    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v2, p1

    iget-object p1, v1, Ls0/e;->b:Lk0/m;

    iget p1, p1, Lk0/m;->k:F

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, v1, Ls0/e;->b:Lk0/m;

    iget v3, v3, Lk0/m;->m:F

    mul-float/2addr v0, v3

    sub-float/2addr v0, p1

    div-float p1, v0, v2

    :cond_0
    iget-object v0, p0, Ls0/c;->D:Ln0/f;

    if-nez v0, :cond_1

    iget-object v0, v1, Ls0/e;->b:Lk0/m;

    iget v2, v0, Lk0/m;->l:F

    iget v0, v0, Lk0/m;->k:F

    sub-float/2addr v2, v0

    iget v0, v1, Ls0/e;->n:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    :cond_1
    iget v0, v1, Ls0/e;->m:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, v1, Ls0/e;->c:Ljava/lang/String;

    const-string v2, "__container"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, Ls0/e;->m:F

    div-float/2addr p1, v0

    :cond_2
    iget-object p0, p0, Ls0/c;->E:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/b;

    invoke-virtual {v1, p1}, Ls0/b;->t(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final u()Z
    .locals 5

    iget-object v0, p0, Ls0/c;->J:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    iget-object v0, p0, Ls0/c;->E:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/b;

    instance-of v4, v3, Ls0/g;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ls0/b;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Ls0/c;->J:Ljava/lang/Boolean;

    return v2

    :cond_0
    instance-of v4, v3, Ls0/c;

    if-eqz v4, :cond_1

    check-cast v3, Ls0/c;

    invoke-virtual {v3}, Ls0/c;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Ls0/c;->J:Ljava/lang/Boolean;

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ls0/c;->J:Ljava/lang/Boolean;

    :cond_3
    iget-object p0, p0, Ls0/c;->J:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
