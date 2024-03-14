.class public final Lcom/airbnb/lottie/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public A:Landroid/graphics/Canvas;

.field public B:Landroid/graphics/Rect;

.field public C:Landroid/graphics/RectF;

.field public D:Ll0/a;

.field public E:Landroid/graphics/Rect;

.field public F:Landroid/graphics/Rect;

.field public G:Landroid/graphics/RectF;

.field public H:Landroid/graphics/RectF;

.field public I:Landroid/graphics/Matrix;

.field public J:Landroid/graphics/Matrix;

.field public K:Z

.field public d:Lk0/m;

.field public final e:Lw0/d;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lk0/B;

.field public l:Lo0/b;

.field public m:Ljava/lang/String;

.field public n:Lo0/a;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ls0/c;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/airbnb/lottie/RenderMode;

.field public x:Z

.field public final y:Landroid/graphics/Matrix;

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lw0/d;

    invoke-direct {v0}, Lw0/d;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/a;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/a;->g:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/a;->h:Z

    sget-object v3, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v3, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v3, Lk0/B;

    invoke-direct {v3, p0}, Lk0/B;-><init>(Lcom/airbnb/lottie/a;)V

    iput-object v3, p0, Lcom/airbnb/lottie/a;->k:Lk0/B;

    iput-boolean v2, p0, Lcom/airbnb/lottie/a;->p:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/a;->q:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/airbnb/lottie/a;->s:I

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->d:Lcom/airbnb/lottie/RenderMode;

    iput-object v1, p0, Lcom/airbnb/lottie/a;->w:Lcom/airbnb/lottie/RenderMode;

    iput-boolean v2, p0, Lcom/airbnb/lottie/a;->x:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/airbnb/lottie/a;->K:Z

    invoke-virtual {v0, v3}, Lw0/d;->b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Lp0/e;Ljava/lang/Object;Lx0/c;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/z;

    invoke-direct {v1, p0, p1, p2, p3}, Lk0/z;-><init>(Lcom/airbnb/lottie/a;Lp0/e;Ljava/lang/Object;Lx0/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Lp0/e;->c:Lp0/e;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p3, p2}, Ls0/c;->e(Lx0/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lp0/e;->b:Lp0/f;

    if-eqz v0, :cond_2

    invoke-interface {v0, p3, p2}, Lp0/f;->e(Lx0/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->l(Lp0/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/e;

    iget-object v1, v1, Lp0/e;->b:Lp0/f;

    invoke-interface {v1, p3, p2}, Lp0/f;->e(Lx0/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    sget-object p1, Lk0/G;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget-object p2, p1, Lw0/d;->m:Lk0/m;

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, p1, Lw0/d;->i:F

    iget p3, p2, Lk0/m;->k:F

    sub-float/2addr p1, p3

    iget p2, p2, Lk0/m;->l:F

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    :goto_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->z(F)V

    :cond_5
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->f:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/airbnb/lottie/a;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v15, Ls0/c;

    sget-object v1, Lu0/v;->a:Lv0/a;

    iget-object v14, v3, Lk0/m;->j:Landroid/graphics/Rect;

    new-instance v13, Ls0/e;

    move-object v1, v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v4, "__container"

    const-wide/16 v5, -0x1

    sget-object v7, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v16, Lq0/l;

    move-object/from16 v12, v16

    invoke-direct/range {v16 .. v16}, Lq0/l;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v28, v13

    move/from16 v13, v16

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v29, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    move/from16 v16, v17

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->d:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v30, v3

    invoke-direct/range {v1 .. v27}, Ls0/e;-><init>(Ljava/util/List;Lk0/m;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lq0/l;IIIFFIILq0/j;Lq0/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lq0/b;ZLr0/a;Lu0/j;)V

    move-object/from16 v1, v30

    iget-object v2, v1, Lk0/m;->i:Ljava/util/List;

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    invoke-direct {v3, v0, v4, v2, v1}, Ls0/c;-><init>(Lcom/airbnb/lottie/a;Ls0/e;Ljava/util/List;Lk0/m;)V

    iput-object v3, v0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    iget-boolean v1, v0, Lcom/airbnb/lottie/a;->u:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ls0/c;->s(Z)V

    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    iget-boolean v0, v0, Lcom/airbnb/lottie/a;->q:Z

    iput-boolean v0, v1, Ls0/c;->K:Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget-boolean v1, v0, Lw0/d;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw0/d;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iput-object v0, v1, Lw0/d;->m:Lk0/m;

    const/high16 v0, -0x31000000

    iput v0, v1, Lw0/d;->k:F

    const/high16 v0, 0x4f000000

    iput v0, v1, Lw0/d;->l:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->h:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/a;->k(Landroid/graphics/Canvas;Ls0/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->g(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lw0/c;->a:Lw0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->x:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/a;->k(Landroid/graphics/Canvas;Ls0/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->g(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/a;->K:Z

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/a;->w:Lcom/airbnb/lottie/RenderMode;

    iget-boolean v2, v0, Lk0/m;->n:Z

    iget v0, v0, Lk0/m;->o:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/airbnb/lottie/a;->x:Z

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v1, v1, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/a;->s:I

    invoke-virtual {v0, p1, v1, p0}, Ls0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/a;->s:I

    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk0/m;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final h()Lo0/b;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    iget-object v0, v0, Lo0/b;->a:Landroid/content/Context;

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    iput-object v1, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    if-nez v0, :cond_7

    new-instance v0, Lo0/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iget-object v3, v3, Lk0/m;->d:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lo0/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/a;->l:Lo0/b;

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw0/d;->k(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/a;->K:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lw0/d;->n:Z

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v2, Lk0/w;

    invoke-direct {v2, p0, v1}, Lk0/w;-><init>(Lcom/airbnb/lottie/a;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->e()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->b()Z

    move-result v0

    sget-object v2, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iput-boolean v1, v0, Lw0/d;->n:Z

    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v3

    iget-object v4, v0, Lw0/d;->e:Ljava/util/Set;

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lw0/d;->c()F

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lw0/d;->d()F

    move-result v3

    :goto_1
    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lw0/d;->o(F)V

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lw0/d;->h:J

    const/4 v3, 0x0

    iput v3, v0, Lw0/d;->j:I

    iget-boolean v4, v0, Lw0/d;->n:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Lw0/d;->k(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    iput-object v2, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->e:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget v3, v0, Lw0/d;->f:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    invoke-virtual {v0}, Lw0/d;->d()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lw0/d;->c()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/a;->o(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    invoke-virtual {v0, v1}, Lw0/d;->k(Z)V

    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lw0/d;->g(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    iput-object v2, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_8
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Ls0/c;)V
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-eqz v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a;->A:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->A:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->J:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->B:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->C:Landroid/graphics/RectF;

    new-instance v0, Ll0/a;

    invoke-direct {v0}, Ll0/a;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->D:Ll0/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a;->G:Landroid/graphics/RectF;

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/a;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->C:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/a;->C:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->B:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/a;->f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/a;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ls0/c;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v2

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    instance-of v4, v3, Landroid/view/View;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    xor-int/2addr v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/a;->B:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_5
    iget-object v3, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    if-eqz v3, :cond_c

    if-nez v4, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v6, v3, :cond_9

    iget-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v6, v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, v3, :cond_8

    iget-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v4, :cond_a

    :cond_8
    iget-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    invoke-static {v6, v1, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/airbnb/lottie/a;->A:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lcom/airbnb/lottie/a;->K:Z

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/airbnb/lottie/a;->A:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lcom/airbnb/lottie/a;->K:Z

    :cond_a
    :goto_5
    iget-boolean v5, p0, Lcom/airbnb/lottie/a;->K:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->A:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/a;->y:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/a;->s:I

    invoke-virtual {p2, v0, v2, v5}, Ls0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/airbnb/lottie/a;->I:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/a;->J:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/a;->J:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/a;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/a;->H:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/a;->G:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/a;->F:Landroid/graphics/Rect;

    invoke-static {p2, v0}, Lcom/airbnb/lottie/a;->f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_b
    iget-object p2, p0, Lcom/airbnb/lottie/a;->E:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/a;->z:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/a;->E:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/a;->F:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/a;->D:Ll0/a;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final l(Lp0/e;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lw0/c;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    new-instance v1, Lp0/e;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lp0/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Ls0/b;->h(Lp0/e;ILjava/util/List;Lp0/e;)V

    return-object v0
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/a;->r:Ls0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v2, Lk0/w;

    invoke-direct {v2, p0, v1}, Lk0/w;-><init>(Lcom/airbnb/lottie/a;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->e()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->b()Z

    move-result v0

    sget-object v2, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iput-boolean v3, v0, Lw0/d;->n:Z

    invoke-virtual {v0, v1}, Lw0/d;->k(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lw0/d;->h:J

    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lw0/d;->i:F

    invoke-virtual {v0}, Lw0/d;->d()F

    move-result v4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lw0/d;->c()F

    move-result v1

    iput v1, v0, Lw0/d;->i:F

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lw0/d;->i:F

    invoke-virtual {v0}, Lw0/d;->c()F

    move-result v4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lw0/d;->d()F

    move-result v1

    iput v1, v0, Lw0/d;->i:F

    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->f:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget v1, v0, Lw0/d;->f:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    invoke-virtual {v0}, Lw0/d;->d()F

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lw0/d;->c()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/a;->o(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    invoke-virtual {v0, v3}, Lw0/d;->k(Z)V

    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lw0/d;->g(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_7
    return-void
.end method

.method public final n(Lk0/m;)Z
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/a;->K:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->d()V

    iput-object p1, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->c()V

    iget-object v2, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget-object v3, v2, Lw0/d;->m:Lk0/m;

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    iput-object p1, v2, Lw0/d;->m:Lk0/m;

    if-eqz v1, :cond_2

    iget v1, v2, Lw0/d;->k:F

    iget v3, p1, Lk0/m;->k:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v2, Lw0/d;->l:F

    iget v4, p1, Lk0/m;->l:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lw0/d;->q(FF)V

    goto :goto_0

    :cond_2
    iget v1, p1, Lk0/m;->k:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, p1, Lk0/m;->l:F

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Lw0/d;->q(FF)V

    :goto_0
    iget v1, v2, Lw0/d;->i:F

    const/4 v3, 0x0

    iput v3, v2, Lw0/d;->i:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lw0/d;->o(F)V

    invoke-virtual {v2}, Lw0/d;->h()V

    iget-object v1, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    invoke-virtual {v1}, Lw0/d;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->z(F)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/C;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lk0/C;->run()V

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/airbnb/lottie/a;->t:Z

    iget-object p1, p1, Lk0/m;->a:Lk0/M;

    iput-boolean v1, p1, Lk0/M;->a:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->e()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return v0
.end method

.method public final o(I)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/v;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lk0/v;-><init>(Lcom/airbnb/lottie/a;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lw0/d;->o(F)V

    return-void
.end method

.method public final p(I)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lk0/v;-><init>(Lcom/airbnb/lottie/a;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    iget v0, p0, Lw0/d;->k:F

    invoke-virtual {p0, v0, p1}, Lw0/d;->q(FF)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lk0/x;-><init>(Lcom/airbnb/lottie/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lk0/m;->c(Ljava/lang/String;)Lp0/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lp0/h;->b:F

    iget v0, v0, Lp0/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->p(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r(F)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/t;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lk0/t;-><init>(Lcom/airbnb/lottie/a;FI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget v1, v0, Lk0/m;->k:F

    iget v0, v0, Lk0/m;->l:F

    sget-object v2, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result p1

    iget v0, p0, Lw0/d;->k:F

    invoke-virtual {p0, v0, p1}, Lw0/d;->q(FF)V

    return-void
.end method

.method public final s(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/A;

    invoke-direct {v1, p0, p1, p2}, Lk0/A;-><init>(Lcom/airbnb/lottie/a;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lw0/d;->q(FF)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/a;->s:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lw0/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    sget-object v1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->f:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->e:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->j()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->m()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget-boolean p1, p1, Lw0/d;->n:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->i()V

    iput-object v1, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object p1, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_3
    :goto_0
    return p2
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->j()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw0/d;->k(Z)V

    invoke-virtual {v0}, Lw0/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lw0/d;->g(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->d:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/a;->i:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/x;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lk0/x;-><init>(Lcom/airbnb/lottie/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lk0/m;->c(Ljava/lang/String;)Lp0/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lp0/h;->b:F

    float-to-int p1, p1

    iget v0, v0, Lp0/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/a;->s(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/y;

    invoke-direct {v1, p0, p1, p2, p3}, Lk0/y;-><init>(Lcom/airbnb/lottie/a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lk0/m;->c(Ljava/lang/String;)Lp0/h;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    iget p1, v0, Lp0/h;->b:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    invoke-virtual {v0, p2}, Lk0/m;->c(Ljava/lang/String;)Lp0/h;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget p3, v0, Lp0/h;->b:F

    add-float/2addr p3, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a;->s(II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, p2, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, p1, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(FF)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/u;

    invoke-direct {v1, p0, p1, p2}, Lk0/u;-><init>(Lcom/airbnb/lottie/a;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lk0/m;->k:F

    iget v0, v0, Lk0/m;->l:F

    sget-object v2, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, p2, v1}, Lw/f;->a(FFFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a;->s(II)V

    return-void
.end method

.method public final w(I)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lk0/v;-><init>(Lcom/airbnb/lottie/a;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    int-to-float p1, p1

    iget v0, p0, Lw0/d;->l:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lw0/d;->q(FF)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/x;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lk0/x;-><init>(Lcom/airbnb/lottie/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lk0/m;->c(Ljava/lang/String;)Lp0/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lp0/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->w(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y(F)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/t;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lk0/t;-><init>(Lcom/airbnb/lottie/a;FI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lk0/m;->k:F

    iget v0, v0, Lk0/m;->l:F

    sget-object v2, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a;->w(I)V

    return-void
.end method

.method public final z(F)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a;->j:Ljava/util/ArrayList;

    new-instance v1, Lk0/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lk0/t;-><init>(Lcom/airbnb/lottie/a;FI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a;->e:Lw0/d;

    iget v1, v0, Lk0/m;->k:F

    iget v0, v0, Lk0/m;->l:F

    sget-object v2, Lw0/f;->a:Landroid/graphics/PointF;

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lw0/d;->o(F)V

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method
