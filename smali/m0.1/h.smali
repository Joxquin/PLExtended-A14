.class public final Lm0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/f;
.implements Ln0/a;
.implements Lm0/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ll0/a;

.field public final c:Ls0/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/List;

.field public final g:Ln0/g;

.field public final h:Ln0/l;

.field public i:Ln0/x;

.field public final j:Lcom/airbnb/lottie/a;

.field public k:Ln0/f;

.field public l:F

.field public final m:Ln0/i;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/n;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm0/h;->a:Landroid/graphics/Path;

    new-instance v1, Ll0/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ll0/a;-><init>(I)V

    iput-object v1, p0, Lm0/h;->b:Ll0/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm0/h;->f:Ljava/util/List;

    iput-object p2, p0, Lm0/h;->c:Ls0/b;

    iget-object v1, p3, Lr0/n;->c:Ljava/lang/String;

    iput-object v1, p0, Lm0/h;->d:Ljava/lang/String;

    iget-boolean v1, p3, Lr0/n;->f:Z

    iput-boolean v1, p0, Lm0/h;->e:Z

    iput-object p1, p0, Lm0/h;->j:Lcom/airbnb/lottie/a;

    invoke-virtual {p2}, Ls0/b;->m()Lr0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ls0/b;->m()Lr0/a;

    move-result-object p1

    iget-object p1, p1, Lr0/a;->a:Lq0/b;

    invoke-virtual {p1}, Lq0/b;->a()Ln0/f;

    move-result-object p1

    iput-object p1, p0, Lm0/h;->k:Ln0/f;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Lm0/h;->k:Ln0/f;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    :cond_0
    invoke-virtual {p2}, Ls0/b;->n()Lu0/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ln0/i;

    invoke-virtual {p2}, Ls0/b;->n()Lu0/j;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Ln0/i;-><init>(Ln0/a;Ls0/b;Lu0/j;)V

    iput-object p1, p0, Lm0/h;->m:Ln0/i;

    :cond_1
    iget-object p1, p3, Lr0/n;->d:Lq0/a;

    if-eqz p1, :cond_3

    iget-object v1, p3, Lr0/n;->e:Lq0/d;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p3, Lr0/n;->b:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p1}, Lq0/a;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/g;

    iput-object p3, p0, Lm0/h;->g:Ln0/g;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {v1}, Lq0/d;->a()Ln0/f;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ln0/l;

    iput-object p3, p0, Lm0/h;->h:Ln0/l;

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lm0/h;->g:Ln0/g;

    iput-object p1, p0, Lm0/h;->h:Ln0/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lm0/h;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lm0/h;->f:Ljava/util/List;

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

    iget-object p0, p0, Lm0/h;->j:Lcom/airbnb/lottie/a;

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

    iget-object v1, p0, Lm0/h;->f:Ljava/util/List;

    check-cast v0, Lm0/n;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lx0/c;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lk0/G;->a:Ljava/lang/Integer;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lm0/h;->g:Ln0/g;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lk0/G;->d:Ljava/lang/Integer;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lm0/h;->h:Ln0/l;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lk0/G;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    iget-object v2, p0, Lm0/h;->c:Ls0/b;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lm0/h;->i:Ln0/x;

    if-eqz p2, :cond_2

    invoke-virtual {v2, p2}, Ls0/b;->q(Ln0/f;)V

    :cond_2
    if-nez p1, :cond_3

    iput-object v1, p0, Lm0/h;->i:Ln0/x;

    goto/16 :goto_0

    :cond_3
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Lm0/h;->i:Ln0/x;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/h;->i:Ln0/x;

    invoke-virtual {v2, p0}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lk0/G;->j:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lm0/h;->k:Ln0/f;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_5
    new-instance p2, Ln0/x;

    invoke-direct {p2, p1, v1}, Ln0/x;-><init>(Lx0/c;Ljava/lang/Object;)V

    iput-object p2, p0, Lm0/h;->k:Ln0/f;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    iget-object p0, p0, Lm0/h;->k:Ln0/f;

    invoke-virtual {v2, p0}, Ls0/b;->d(Ln0/f;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lk0/G;->e:Ljava/lang/Integer;

    iget-object p0, p0, Lm0/h;->m:Ln0/i;

    if-ne p2, v0, :cond_7

    if-eqz p0, :cond_7

    iget-object p0, p0, Ln0/i;->b:Ln0/g;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lk0/G;->G:Ljava/lang/Float;

    if-ne p2, v0, :cond_8

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Ln0/i;->c(Lx0/c;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lk0/G;->H:Ljava/lang/Float;

    if-ne p2, v0, :cond_9

    if-eqz p0, :cond_9

    iget-object p0, p0, Ln0/i;->d:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lk0/G;->I:Ljava/lang/Float;

    if-ne p2, v0, :cond_a

    if-eqz p0, :cond_a

    iget-object p0, p0, Ln0/i;->e:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lk0/G;->J:Ljava/lang/Float;

    if-ne p2, v0, :cond_b

    if-eqz p0, :cond_b

    iget-object p0, p0, Ln0/i;->f:Ln0/j;

    invoke-virtual {p0, p1}, Ln0/f;->k(Lx0/c;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-boolean v0, p0, Lm0/h;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm0/h;->g:Ln0/g;

    invoke-virtual {v0}, Ln0/f;->b()Lx0/a;

    move-result-object v1

    invoke-virtual {v0}, Ln0/f;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ln0/g;->l(Lx0/a;F)I

    move-result v0

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lm0/h;->h:Ln0/l;

    invoke-virtual {v2}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    sget-object v1, Lw0/f;->a:Landroid/graphics/PointF;

    const/16 v1, 0xff

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr p3, v0

    iget-object v0, p0, Lm0/h;->b:Ll0/a;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lm0/h;->i:Ln0/x;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ln0/x;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lm0/h;->k:Ln0/f;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    :cond_2
    iget v2, p0, Lm0/h;->l:F

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lm0/h;->c:Ls0/b;

    iget v3, v2, Ls0/b;->B:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_3

    iget-object v2, v2, Ls0/b;->C:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p3, v4

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v3, v2, Ls0/b;->C:Landroid/graphics/BlurMaskFilter;

    iput p3, v2, Ls0/b;->B:F

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_4
    :goto_1
    iput p3, p0, Lm0/h;->l:F

    :cond_5
    iget-object p3, p0, Lm0/h;->m:Ln0/i;

    if-eqz p3, :cond_6

    invoke-virtual {p3, v0}, Ln0/i;->a(Ll0/a;)V

    :cond_6
    iget-object p3, p0, Lm0/h;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_2
    iget-object v2, p0, Lm0/h;->f:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/n;

    invoke-interface {v2}, Lm0/n;->g()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm0/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lw0/f;->d(Lp0/e;ILjava/util/List;Lp0/e;Lm0/l;)V

    return-void
.end method
