.class public final Ls0/j;
.super Ls0/b;
.source "SourceFile"


# instance fields
.field public final D:Ljava/lang/StringBuilder;

.field public final E:Landroid/graphics/RectF;

.field public final F:Landroid/graphics/Matrix;

.field public final G:Ls0/i;

.field public final H:Ls0/i;

.field public final I:Ljava/util/Map;

.field public final J:Lq/j;

.field public final K:Ln0/v;

.field public final L:Lcom/airbnb/lottie/a;

.field public final M:Lk0/m;

.field public final N:Ln0/g;

.field public O:Ln0/x;

.field public final P:Ln0/g;

.field public Q:Ln0/x;

.field public final R:Ln0/j;

.field public S:Ln0/x;

.field public final T:Ln0/j;

.field public U:Ln0/x;

.field public V:Ln0/x;

.field public W:Ln0/x;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/e;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ls0/b;-><init>(Lcom/airbnb/lottie/a;Ls0/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ls0/j;->D:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ls0/j;->E:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls0/j;->F:Landroid/graphics/Matrix;

    new-instance v0, Ls0/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls0/i;-><init>(I)V

    iput-object v0, p0, Ls0/j;->G:Ls0/i;

    new-instance v0, Ls0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls0/i;-><init>(I)V

    iput-object v0, p0, Ls0/j;->H:Ls0/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls0/j;->I:Ljava/util/Map;

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Ls0/j;->J:Lq/j;

    iput-object p1, p0, Ls0/j;->L:Lcom/airbnb/lottie/a;

    iget-object p1, p2, Ls0/e;->b:Lk0/m;

    iput-object p1, p0, Ls0/j;->M:Lk0/m;

    new-instance p1, Ln0/v;

    iget-object v0, p2, Ls0/e;->q:Lq0/j;

    iget-object v0, v0, Lq0/n;->a:Ljava/util/List;

    invoke-direct {p1, v0}, Ln0/v;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Ls0/j;->K:Ln0/v;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    iget-object p1, p2, Ls0/e;->r:Lq0/k;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lq0/k;->a:Lq0/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lq0/a;->a()Ln0/f;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ln0/g;

    iput-object v0, p0, Ls0/j;->N:Ln0/g;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p0, p2}, Ls0/b;->d(Ln0/f;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lq0/k;->b:Lq0/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lq0/a;->a()Ln0/f;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ln0/g;

    iput-object v0, p0, Ls0/j;->P:Ln0/g;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p0, p2}, Ls0/b;->d(Ln0/f;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lq0/k;->c:Lq0/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lq0/b;->a()Ln0/f;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ln0/j;

    iput-object v0, p0, Ls0/j;->R:Ln0/j;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p0, p2}, Ls0/b;->d(Ln0/f;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Lq0/k;->d:Lq0/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ln0/j;

    iput-object p2, p0, Ls0/j;->T:Ln0/j;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    :cond_3
    return-void
.end method

.method public static u(Ljava/lang/String;Ls0/i;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static v(Landroid/graphics/Path;Ls0/i;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Ls0/j;->M:Lk0/m;

    iget-object p2, p0, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ls0/b;->e(Lx0/c;Ljava/lang/Object;)V

    sget-object v0, Lk0/G;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Ls0/j;->O:Ln0/x;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_0
    if-nez p1, :cond_1

    iput-object v1, p0, Ls0/j;->O:Ln0/x;

    goto/16 :goto_0

    :cond_1
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->O:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->O:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lk0/G;->b:Ljava/lang/Integer;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Ls0/j;->Q:Ln0/x;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_3
    if-nez p1, :cond_4

    iput-object v1, p0, Ls0/j;->Q:Ln0/x;

    goto/16 :goto_0

    :cond_4
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->Q:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->Q:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lk0/G;->s:Ljava/lang/Float;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Ls0/j;->S:Ln0/x;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_6
    if-nez p1, :cond_7

    iput-object v1, p0, Ls0/j;->S:Ln0/x;

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->S:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->S:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lk0/G;->t:Ljava/lang/Float;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Ls0/j;->U:Ln0/x;

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_9
    if-nez p1, :cond_a

    iput-object v1, p0, Ls0/j;->U:Ln0/x;

    goto :goto_0

    :cond_a
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->U:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->U:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lk0/G;->F:Ljava/lang/Float;

    if-ne p2, v0, :cond_e

    iget-object p2, p0, Ls0/j;->V:Ln0/x;

    if-eqz p2, :cond_c

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_c
    if-nez p1, :cond_d

    iput-object v1, p0, Ls0/j;->V:Ln0/x;

    goto :goto_0

    :cond_d
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->V:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->V:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_e
    sget-object v0, Lk0/G;->M:Landroid/graphics/Typeface;

    if-ne p2, v0, :cond_11

    iget-object p2, p0, Ls0/j;->W:Ln0/x;

    if-eqz p2, :cond_f

    invoke-virtual {p0, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_f
    if-nez p1, :cond_10

    iput-object v1, p0, Ls0/j;->W:Ln0/x;

    goto :goto_0

    :cond_10
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Ls0/j;->W:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/j;->W:Ln0/x;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lk0/G;->O:Ljava/lang/CharSequence;

    if-ne p2, v0, :cond_12

    iget-object p0, p0, Ls0/j;->K:Ln0/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lx0/b;

    invoke-direct {p2}, Lx0/b;-><init>()V

    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    new-instance v1, Ln0/u;

    invoke-direct {v1, p2, p1, v0}, Ln0/u;-><init>(Lx0/b;Lx0/c;Lp0/b;)V

    invoke-virtual {p0, v1}, Ln0/f;->k(Lx0/c;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Ls0/j;->L:Lcom/airbnb/lottie/a;

    iget-object v3, v2, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iget-object v3, v3, Lk0/m;->g:Lq/n;

    iget v3, v3, Lq/n;->f:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v3, v0, Ls0/j;->K:Ln0/v;

    invoke-virtual {v3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/b;

    iget-object v6, v0, Ls0/j;->M:Lk0/m;

    iget-object v7, v6, Lk0/m;->e:Ljava/util/Map;

    iget-object v8, v3, Lp0/b;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp0/c;

    if-nez v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v8, v0, Ls0/j;->O:Ln0/x;

    iget-object v9, v0, Ls0/j;->G:Ls0/i;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v8, v0, Ls0/j;->N:Ln0/g;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget v8, v3, Lp0/b;->h:I

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v8, v0, Ls0/j;->Q:Ln0/x;

    iget-object v10, v0, Ls0/j;->H:Ls0/i;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget-object v8, v0, Ls0/j;->P:Ln0/g;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    iget v8, v3, Lp0/b;->i:I

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v8, v0, Ls0/b;->x:Ln0/w;

    iget-object v8, v8, Ln0/w;->j:Ln0/f;

    const/16 v11, 0x64

    if-nez v8, :cond_7

    move v8, v11

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    mul-int/lit16 v8, v8, 0xff

    div-int/2addr v8, v11

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Ls0/j;->S:Ln0/x;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    :cond_8
    iget-object v8, v0, Ls0/j;->R:Ln0/j;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    :cond_9
    invoke-static/range {p2 .. p2}, Lw0/h;->d(Landroid/graphics/Matrix;)F

    move-result v8

    iget v11, v3, Lp0/b;->j:F

    invoke-static {}, Lw0/h;->c()F

    move-result v12

    mul-float/2addr v12, v11

    mul-float/2addr v12, v8

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_4
    iget-object v8, v2, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iget-object v8, v8, Lk0/m;->g:Lq/n;

    iget v8, v8, Lq/n;->f:I

    if-lez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    const-string v12, "\n"

    const-string v13, "\r"

    const-string v14, "\r\n"

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x42c80000    # 100.0f

    iget-object v5, v0, Ls0/j;->T:Ln0/j;

    iget-object v11, v7, Lp0/c;->b:Ljava/lang/String;

    iget-object v7, v7, Lp0/c;->a:Ljava/lang/String;

    if-eqz v8, :cond_18

    iget-object v8, v0, Ls0/j;->V:Ln0/x;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_6

    :cond_b
    iget v8, v3, Lp0/b;->c:F

    :goto_6
    div-float v8, v8, v17

    invoke-static/range {p2 .. p2}, Lw0/h;->d(Landroid/graphics/Matrix;)F

    move-result v15

    iget-object v4, v3, Lp0/b;->a:Ljava/lang/String;

    move-object/from16 v18, v5

    iget v5, v3, Lp0/b;->f:F

    invoke-static {}, Lw0/h;->c()F

    move-result v17

    mul-float v17, v17, v5

    invoke-virtual {v4, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_33

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v14, v10, :cond_d

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v7, v11}, Lp0/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v21, v9

    iget-object v9, v6, Lk0/m;->g:Lq/n;

    invoke-virtual {v9, v10}, Lq/n;->c(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp0/d;

    if-nez v9, :cond_c

    move-object/from16 v24, v6

    move-object/from16 v22, v7

    move/from16 v25, v8

    move-object/from16 v23, v11

    goto :goto_9

    :cond_c
    move-object v10, v6

    move-object/from16 v22, v7

    float-to-double v6, v4

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    float-to-double v10, v8

    move/from16 v25, v8

    iget-wide v8, v9, Lp0/d;->c:D

    mul-double/2addr v8, v10

    invoke-static {}, Lw0/h;->c()F

    move-result v4

    float-to-double v10, v4

    mul-double/2addr v8, v10

    float-to-double v10, v15

    mul-double/2addr v8, v10

    add-double/2addr v8, v6

    double-to-float v4, v8

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v21

    move-object/from16 v7, v22

    move-object/from16 v11, v23

    move-object/from16 v6, v24

    move/from16 v8, v25

    goto :goto_8

    :cond_d
    move-object/from16 v24, v6

    move-object/from16 v22, v7

    move/from16 v25, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v3, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    const/4 v7, 0x2

    if-eq v6, v7, :cond_e

    goto :goto_a

    :cond_e
    neg-float v4, v4

    div-float v4, v4, v16

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    neg-float v4, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_a
    add-int/lit8 v4, v5, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v17

    div-float v4, v4, v16

    int-to-float v6, v12

    mul-float v6, v6, v17

    sub-float/2addr v6, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_17

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    invoke-static {v6, v8, v7}, Lp0/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v9, v24

    iget-object v10, v9, Lk0/m;->g:Lq/n;

    invoke-virtual {v10, v6}, Lq/n;->c(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp0/d;

    if-nez v6, :cond_10

    move/from16 v22, v5

    move-object/from16 v24, v9

    move-object/from16 v23, v13

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move/from16 v10, v25

    move-object/from16 v13, p2

    goto/16 :goto_11

    :cond_10
    iget-object v10, v0, Ls0/j;->I:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move/from16 v22, v5

    move-object/from16 v24, v9

    move-object/from16 v23, v13

    goto :goto_d

    :cond_11
    iget-object v11, v6, Lp0/d;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v22, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v24, v9

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v14, :cond_12

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v26, v11

    move-object/from16 v11, v23

    check-cast v11, Lr0/o;

    move-object/from16 v23, v13

    new-instance v13, Lm0/e;

    invoke-direct {v13, v2, v0, v11}, Lm0/e;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/o;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v23

    move-object/from16 v11, v26

    goto :goto_c

    :cond_12
    move-object/from16 v23, v13

    invoke-virtual {v10, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    :goto_d
    const/4 v5, 0x0

    :goto_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/e;

    invoke-virtual {v9}, Lm0/e;->g()Landroid/graphics/Path;

    move-result-object v9

    iget-object v11, v0, Ls0/j;->E:Landroid/graphics/RectF;

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v11, v0, Ls0/j;->F:Landroid/graphics/Matrix;

    move-object/from16 v13, p2

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v14, v3, Lp0/b;->g:F

    neg-float v14, v14

    invoke-static {}, Lw0/h;->c()F

    move-result v26

    mul-float v14, v14, v26

    move-object/from16 v26, v10

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move/from16 v10, v25

    invoke-virtual {v11, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v9, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v11, v3, Lp0/b;->k:Z

    if-eqz v11, :cond_13

    move-object/from16 v11, v21

    invoke-static {v9, v11, v1}, Ls0/j;->v(Landroid/graphics/Path;Ls0/i;Landroid/graphics/Canvas;)V

    move-object/from16 v14, v20

    invoke-static {v9, v14, v1}, Ls0/j;->v(Landroid/graphics/Path;Ls0/i;Landroid/graphics/Canvas;)V

    goto :goto_f

    :cond_13
    move-object/from16 v14, v20

    move-object/from16 v11, v21

    invoke-static {v9, v14, v1}, Ls0/j;->v(Landroid/graphics/Path;Ls0/i;Landroid/graphics/Canvas;)V

    invoke-static {v9, v11, v1}, Ls0/j;->v(Landroid/graphics/Path;Ls0/i;Landroid/graphics/Canvas;)V

    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v25, v10

    move-object/from16 v21, v11

    move-object/from16 v20, v14

    move-object/from16 v10, v26

    goto :goto_e

    :cond_14
    move-object/from16 v13, p2

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move/from16 v10, v25

    iget-wide v5, v6, Lp0/d;->c:D

    double-to-float v5, v5

    mul-float/2addr v5, v10

    invoke-static {}, Lw0/h;->c()F

    move-result v6

    mul-float/2addr v6, v5

    mul-float/2addr v6, v15

    iget v5, v3, Lp0/b;->e:I

    int-to-float v5, v5

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v5, v9

    iget-object v9, v0, Ls0/j;->U:Ln0/x;

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_10

    :cond_15
    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_10
    add-float/2addr v5, v9

    :cond_16
    mul-float/2addr v5, v15

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_11
    add-int/lit8 v4, v4, 0x1

    move/from16 v25, v10

    move-object/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v22

    move-object/from16 v13, v23

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    goto/16 :goto_b

    :cond_17
    move-object/from16 v13, p2

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    move/from16 v10, v25

    move/from16 v22, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v12, v12, 0x1

    move-object v9, v11

    move-object/from16 v4, v19

    move-object/from16 v6, v24

    move-object v11, v7

    move-object v7, v8

    move v8, v10

    move-object v10, v14

    goto/16 :goto_7

    :cond_18
    move-object/from16 v18, v5

    move-object v8, v7

    move-object v4, v10

    move-object v7, v11

    move-object v11, v9

    iget-object v5, v0, Ls0/j;->W:Ln0/x;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_19

    goto/16 :goto_17

    :cond_19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-nez v5, :cond_1a

    const/4 v2, 0x0

    goto :goto_12

    :cond_1a
    iget-object v5, v2, Lcom/airbnb/lottie/a;->n:Lo0/a;

    if-nez v5, :cond_1b

    new-instance v5, Lo0/a;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v9

    invoke-direct {v5, v9}, Lo0/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v5, v2, Lcom/airbnb/lottie/a;->n:Lo0/a;

    :cond_1b
    iget-object v2, v2, Lcom/airbnb/lottie/a;->n:Lo0/a;

    :goto_12
    if-eqz v2, :cond_22

    iget-object v5, v2, Lo0/a;->a:Lp0/i;

    iput-object v8, v5, Lp0/i;->a:Ljava/lang/Object;

    iput-object v7, v5, Lp0/i;->b:Ljava/lang/Object;

    iget-object v9, v2, Lo0/a;->b:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Typeface;

    if-eqz v10, :cond_1c

    move-object v5, v10

    goto :goto_16

    :cond_1c
    iget-object v10, v2, Lo0/a;->c:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Typeface;

    if-eqz v15, :cond_1d

    goto :goto_13

    :cond_1d
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "fonts/"

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lo0/a;->e:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lo0/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v10, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    const-string v2, "Italic"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "Bold"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v2, :cond_1e

    if-eqz v6, :cond_1e

    const/4 v7, 0x3

    goto :goto_14

    :cond_1e
    if-eqz v2, :cond_1f

    const/4 v7, 0x2

    goto :goto_14

    :cond_1f
    if-eqz v6, :cond_20

    const/4 v7, 0x1

    goto :goto_14

    :cond_20
    const/4 v7, 0x0

    :goto_14
    invoke-virtual {v15}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-ne v2, v7, :cond_21

    goto :goto_15

    :cond_21
    invoke-static {v15, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v15

    :goto_15
    invoke-virtual {v9, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    goto :goto_16

    :cond_22
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_23

    goto :goto_17

    :cond_23
    const/4 v5, 0x0

    :goto_17
    if-nez v5, :cond_24

    goto/16 :goto_25

    :cond_24
    iget-object v2, v3, Lp0/b;->a:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v0, Ls0/j;->V:Ln0/x;

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_18

    :cond_25
    iget v5, v3, Lp0/b;->c:F

    :goto_18
    invoke-static {}, Lw0/h;->c()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v6, v3, Lp0/b;->f:F

    invoke-static {}, Lw0/h;->c()F

    move-result v7

    mul-float/2addr v7, v6

    iget v6, v3, Lp0/b;->e:I

    int-to-float v6, v6

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v6, v8

    iget-object v8, v0, Ls0/j;->U:Ln0/x;

    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_19

    :cond_26
    if-eqz v18, :cond_27

    invoke-virtual/range {v18 .. v18}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :goto_19
    add-float/2addr v6, v8

    :cond_27
    invoke-static {}, Lw0/h;->c()F

    move-result v8

    mul-float/2addr v8, v6

    mul-float/2addr v8, v5

    div-float v8, v8, v17

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v5, :cond_33

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v10, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v3, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v12, :cond_29

    const/4 v14, 0x2

    if-eq v9, v14, :cond_28

    goto :goto_1b

    :cond_28
    neg-float v9, v10

    div-float v9, v9, v16

    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1b

    :cond_29
    const/4 v14, 0x2

    const/4 v15, 0x0

    neg-float v9, v10

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1b
    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    div-float v9, v9, v16

    int-to-float v10, v13

    mul-float/2addr v10, v7

    sub-float/2addr v10, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v9, 0x0

    :goto_1c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_32

    invoke-virtual {v6, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v15, v9

    :goto_1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v15, v12, :cond_2d

    invoke-virtual {v6, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v14

    move-object/from16 p2, v2

    const/16 v2, 0x10

    if-eq v14, v2, :cond_2b

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x1b

    if-eq v2, v14, :cond_2b

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v14, 0x6

    if-eq v2, v14, :cond_2b

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x1c

    if-eq v2, v14, :cond_2b

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x8

    if-eq v2, v14, :cond_2b

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v14, 0x13

    if-ne v2, v14, :cond_2a

    goto :goto_1e

    :cond_2a
    const/4 v2, 0x0

    goto :goto_1f

    :cond_2b
    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    if-nez v2, :cond_2c

    goto :goto_20

    :cond_2c
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v15, v2

    mul-int/lit8 v10, v10, 0x1f

    add-int/2addr v10, v12

    move-object/from16 v2, p2

    const/4 v14, 0x2

    goto :goto_1d

    :cond_2d
    move-object/from16 p2, v2

    :goto_20
    move v2, v13

    int-to-long v12, v10

    iget-object v10, v0, Ls0/j;->J:Lq/j;

    invoke-virtual {v10, v12, v13}, Lq/j;->d(J)I

    move-result v14

    if-ltz v14, :cond_2e

    const/4 v14, 0x1

    goto :goto_21

    :cond_2e
    const/4 v14, 0x0

    :goto_21
    if-eqz v14, :cond_2f

    invoke-virtual {v10, v12, v13}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move/from16 p3, v5

    goto :goto_23

    :cond_2f
    iget-object v14, v0, Ls0/j;->D:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v9

    :goto_22
    if-ge v0, v15, :cond_30

    move/from16 p3, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    move/from16 v5, p3

    goto :goto_22

    :cond_30
    move/from16 p3, v5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v13, v0}, Lq/j;->f(JLjava/lang/Object;)V

    move-object v10, v0

    :goto_23
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v9, v0

    iget-boolean v0, v3, Lp0/b;->k:Z

    if-eqz v0, :cond_31

    invoke-static {v10, v11, v1}, Ls0/j;->u(Ljava/lang/String;Ls0/i;Landroid/graphics/Canvas;)V

    invoke-static {v10, v4, v1}, Ls0/j;->u(Ljava/lang/String;Ls0/i;Landroid/graphics/Canvas;)V

    goto :goto_24

    :cond_31
    invoke-static {v10, v4, v1}, Ls0/j;->u(Ljava/lang/String;Ls0/i;Landroid/graphics/Canvas;)V

    invoke-static {v10, v11, v1}, Ls0/j;->u(Ljava/lang/String;Ls0/i;Landroid/graphics/Canvas;)V

    :goto_24
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v8

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v12, 0x1

    const/4 v14, 0x2

    move-object/from16 v0, p0

    move/from16 v5, p3

    move v13, v2

    move-object/from16 v2, p2

    goto/16 :goto_1c

    :cond_32
    move-object/from16 p2, v2

    move/from16 p3, v5

    move v2, v13

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v5, p3

    goto/16 :goto_1a

    :cond_33
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
