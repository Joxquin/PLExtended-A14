.class public abstract Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/f;
.implements Ln0/a;
.implements Lp0/f;


# instance fields
.field public A:Ll0/a;

.field public B:F

.field public C:Landroid/graphics/BlurMaskFilter;

.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Ll0/a;

.field public final e:Ll0/a;

.field public final f:Ll0/a;

.field public final g:Ll0/a;

.field public final h:Ll0/a;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Ljava/lang/String;

.field public final o:Landroid/graphics/Matrix;

.field public final p:Lcom/airbnb/lottie/a;

.field public final q:Ls0/e;

.field public final r:Ln0/n;

.field public s:Ln0/j;

.field public t:Ls0/b;

.field public u:Ls0/b;

.field public v:Ljava/util/List;

.field public final w:Ljava/util/List;

.field public final x:Ln0/w;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/e;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ls0/b;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls0/b;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ls0/b;->c:Landroid/graphics/Matrix;

    new-instance v0, Ll0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll0/a;-><init>(I)V

    iput-object v0, p0, Ls0/b;->d:Ll0/a;

    new-instance v0, Ll0/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ll0/a;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    iput-object v0, p0, Ls0/b;->e:Ll0/a;

    new-instance v0, Ll0/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Ll0/a;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    iput-object v0, p0, Ls0/b;->f:Ll0/a;

    new-instance v0, Ll0/a;

    invoke-direct {v0, v1}, Ll0/a;-><init>(I)V

    iput-object v0, p0, Ls0/b;->g:Ll0/a;

    new-instance v2, Ll0/a;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Ll0/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Ls0/b;->h:Ll0/a;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Ls0/b;->i:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Ls0/b;->j:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Ls0/b;->k:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Ls0/b;->l:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Ls0/b;->m:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Ls0/b;->o:Landroid/graphics/Matrix;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ls0/b;->w:Ljava/util/List;

    iput-boolean v1, p0, Ls0/b;->y:Z

    const/4 v2, 0x0

    iput v2, p0, Ls0/b;->B:F

    iput-object p1, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    iput-object p2, p0, Ls0/b;->q:Ls0/e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#draw"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls0/b;->n:Ljava/lang/String;

    sget-object p1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->e:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    iget-object v2, p2, Ls0/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v2, p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    iget-object p1, p2, Ls0/e;->i:Lq0/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln0/w;

    invoke-direct {v0, p1}, Ln0/w;-><init>(Lq0/l;)V

    iput-object v0, p0, Ls0/b;->x:Ln0/w;

    invoke-virtual {v0, p0}, Ln0/w;->b(Ln0/a;)V

    iget-object p1, p2, Ls0/e;->h:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ln0/n;

    invoke-direct {p2, p1}, Ln0/n;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Ls0/b;->r:Ln0/n;

    iget-object p1, p2, Ln0/n;->a:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln0/f;

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ls0/b;->r:Ln0/n;

    iget-object p1, p1, Ln0/n;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln0/f;

    invoke-virtual {p0, p2}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Ls0/b;->q:Ls0/e;

    iget-object p2, p1, Ls0/e;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ln0/j;

    iget-object p1, p1, Ls0/e;->t:Ljava/util/List;

    invoke-direct {p2, p1}, Ln0/j;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Ls0/b;->s:Ln0/j;

    iput-boolean v1, p2, Ln0/f;->b:Z

    new-instance p1, Ls0/a;

    invoke-direct {p1, p0}, Ls0/a;-><init>(Ls0/b;)V

    invoke-virtual {p2, p1}, Ln0/f;->a(Ln0/a;)V

    iget-object p1, p0, Ls0/b;->s:Ln0/j;

    invoke-virtual {p1}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iget-boolean p1, p0, Ls0/b;->y:Z

    if-eq v1, p1, :cond_4

    iput-boolean v1, p0, Ls0/b;->y:Z

    iget-object p1, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p1}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    :cond_4
    iget-object p1, p0, Ls0/b;->s:Ln0/j;

    invoke-virtual {p0, p1}, Ls0/b;->d(Ln0/f;)V

    goto :goto_4

    :cond_5
    iget-boolean p1, p0, Ls0/b;->y:Z

    if-eq v1, p1, :cond_6

    iput-boolean v1, p0, Ls0/b;->y:Z

    iget-object p0, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Ls0/b;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Ls0/b;->j()V

    iget-object p1, p0, Ls0/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Ls0/b;->v:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    iget-object p3, p0, Ls0/b;->v:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls0/b;

    iget-object p3, p3, Ls0/b;->x:Ln0/w;

    invoke-virtual {p3}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ls0/b;->u:Ls0/b;

    if-eqz p2, :cond_1

    iget-object p2, p2, Ls0/b;->x:Ln0/w;

    invoke-virtual {p2}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p0, p0, Ls0/b;->x:Ln0/w;

    invoke-virtual {p0}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final d(Ln0/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ls0/b;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lx0/c;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls0/b;->x:Ln0/w;

    invoke-virtual {p0, p1, p2}, Ln0/w;->c(Lx0/c;Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Ls0/b;->y:Z

    if-eqz v3, :cond_24

    iget-object v3, v0, Ls0/b;->q:Ls0/e;

    iget-boolean v4, v3, Ls0/e;->v:Z

    if-eqz v4, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ls0/b;->j()V

    iget-object v4, v0, Ls0/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Ls0/b;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_1

    iget-object v7, v0, Ls0/b;->v:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-object v7, v7, Ls0/b;->x:Ln0/w;

    invoke-virtual {v7}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lk0/d;->a()V

    iget-object v5, v0, Ls0/b;->x:Ln0/w;

    iget-object v7, v5, Ln0/w;->j:Ln0/f;

    if-nez v7, :cond_2

    const/16 v7, 0x64

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    move/from16 v8, p3

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    int-to-float v7, v7

    mul-float/2addr v8, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v8, v7

    mul-float/2addr v8, v9

    float-to-int v7, v8

    iget-object v8, v0, Ls0/b;->t:Ls0/b;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    if-nez v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Ls0/b;->o()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1, v4, v7}, Ls0/b;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lk0/d;->a()V

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual/range {p0 .. p0}, Ls0/b;->p()V

    return-void

    :cond_4
    iget-object v8, v0, Ls0/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, v4, v9}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v10, v0, Ls0/b;->t:Ls0/b;

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_3
    const/4 v11, 0x0

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    sget-object v10, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->e:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    iget-object v3, v3, Ls0/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v3, v10, :cond_7

    goto :goto_4

    :cond_7
    iget-object v3, v0, Ls0/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Ls0/b;->t:Ls0/b;

    invoke-virtual {v10, v3, v2, v6}, Ls0/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_8
    :goto_4
    invoke-virtual {v5}, Ln0/w;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v3, v0, Ls0/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Ls0/b;->o()Z

    move-result v5

    iget-object v10, v0, Ls0/b;->a:Landroid/graphics/Path;

    const/4 v12, 0x3

    const/4 v13, 0x2

    iget-object v14, v0, Ls0/b;->r:Ln0/n;

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v5, v14, Ln0/n;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v15, v9

    :goto_5
    if-ge v15, v5, :cond_f

    iget-object v11, v14, Ln0/n;->c:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0/g;

    iget-object v9, v14, Ln0/n;->a:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln0/f;

    invoke-virtual {v9}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    if-nez v9, :cond_a

    const/4 v11, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v9, v11, Lr0/g;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_b

    if-eq v9, v6, :cond_c

    if-eq v9, v13, :cond_b

    if-eq v9, v12, :cond_c

    goto :goto_7

    :cond_b
    iget-boolean v9, v11, Lr0/g;->d:Z

    if-eqz v9, :cond_d

    :cond_c
    :goto_6
    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    :goto_7
    iget-object v9, v0, Ls0/b;->m:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v15, :cond_e

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_8

    :cond_e
    iget v11, v3, Landroid/graphics/RectF;->left:F

    iget v12, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v13, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v6, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v3, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto :goto_5

    :cond_f
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    iget-object v5, v0, Ls0/b;->j:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v3, v3, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Ls0/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v6, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_10
    invoke-virtual {v8, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_11
    invoke-static {}, Lk0/d;->a()V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    iget-object v3, v0, Ls0/b;->d:Ll0/a;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Ll0/a;->setAlpha(I)V

    sget-object v6, Lw0/h;->a:Lw0/g;

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual/range {p0 .. p1}, Ls0/b;->k(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1, v4, v7}, Ls0/b;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual/range {p0 .. p0}, Ls0/b;->o()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, v0, Ls0/b;->e:Ll0/a;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-static {}, Lk0/d;->a()V

    const/4 v9, 0x0

    :goto_a
    iget-object v11, v14, Ln0/n;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_1e

    iget-object v11, v14, Ln0/n;->c:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/g;

    iget-object v13, v14, Ln0/n;->a:Ljava/util/List;

    move-object v15, v13

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln0/f;

    iget-object v5, v14, Ln0/n;->b:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln0/f;

    move-object/from16 v16, v14

    iget-object v14, v12, Lr0/g;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    iget-object v2, v0, Ls0/b;->f:Ll0/a;

    const v17, 0x40233333    # 2.55f

    iget-boolean v12, v12, Lr0/g;->d:Z

    if-eqz v14, :cond_1c

    move/from16 v18, v7

    const/4 v7, 0x1

    if-eq v14, v7, :cond_19

    const/4 v7, 0x2

    if-eq v14, v7, :cond_16

    const/4 v7, 0x3

    if-eq v14, v7, :cond_12

    goto/16 :goto_e

    :cond_12
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/g;

    iget-object v5, v5, Lr0/g;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v12, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->g:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eq v5, v12, :cond_14

    :goto_c
    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_18

    const/16 v2, 0xff

    invoke-virtual {v3, v2}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_16
    const/4 v7, 0x3

    if-eqz v12, :cond_17

    sget-object v11, Lw0/h;->a:Lw0/g;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_17
    sget-object v2, Lw0/h;->a:Lw0/g;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v10, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_e
    const/16 v11, 0xff

    goto/16 :goto_10

    :cond_19
    const/4 v7, 0x3

    if-nez v9, :cond_1a

    const/high16 v11, -0x1000000

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0xff

    invoke-virtual {v3, v11}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_1a
    const/16 v11, 0xff

    :goto_f
    if-eqz v12, :cond_1b

    sget-object v12, Lw0/h;->a:Lw0/g;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    :cond_1b
    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_1c
    move/from16 v18, v7

    const/4 v7, 0x3

    const/16 v11, 0xff

    if-eqz v12, :cond_1d

    sget-object v12, Lw0/h;->a:Lw0/g;

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Path;

    invoke-virtual {v10, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    :cond_1d
    invoke-virtual {v15}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v10, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v5}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Ll0/a;->setAlpha(I)V

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_10
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move v5, v11

    move-object/from16 v14, v16

    move/from16 v7, v18

    goto/16 :goto_a

    :cond_1e
    move/from16 v18, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lk0/d;->a()V

    goto :goto_11

    :cond_1f
    move/from16 v18, v7

    :goto_11
    iget-object v2, v0, Ls0/b;->t:Ls0/b;

    if-eqz v2, :cond_20

    const/4 v6, 0x1

    goto :goto_12

    :cond_20
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_21

    iget-object v2, v0, Ls0/b;->g:Ll0/a;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {}, Lk0/d;->a()V

    invoke-static {}, Lk0/d;->a()V

    invoke-virtual/range {p0 .. p1}, Ls0/b;->k(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Ls0/b;->t:Ls0/b;

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v2, v1, v3, v4}, Ls0/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lk0/d;->a()V

    invoke-static {}, Lk0/d;->a()V

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lk0/d;->a()V

    :cond_22
    iget-boolean v2, v0, Ls0/b;->z:Z

    if-eqz v2, :cond_23

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    if-eqz v2, :cond_23

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Ls0/b;->A:Ll0/a;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_23
    invoke-static {}, Lk0/d;->a()V

    invoke-virtual/range {p0 .. p0}, Ls0/b;->p()V

    return-void

    :cond_24
    :goto_13
    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 4

    iget-object v0, p0, Ls0/b;->t:Ls0/b;

    iget-object v1, p0, Ls0/b;->q:Ls0/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp0/e;

    invoke-direct {v2, p4}, Lp0/e;-><init>(Lp0/e;)V

    iget-object v3, v2, Lp0/e;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls0/b;->t:Ls0/b;

    iget-object v0, v0, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lp0/e;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls0/b;->t:Ls0/b;

    new-instance v3, Lp0/e;

    invoke-direct {v3, v2}, Lp0/e;-><init>(Lp0/e;)V

    iput-object v0, v3, Lp0/e;->b:Lp0/f;

    move-object v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v1, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lp0/e;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls0/b;->t:Ls0/b;

    iget-object v0, v0, Ls0/b;->q:Ls0/e;

    iget-object v0, v0, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lp0/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v3, p0, Ls0/b;->t:Ls0/b;

    invoke-virtual {v3, p1, v0, p3, v2}, Ls0/b;->r(Lp0/e;ILjava/util/List;Lp0/e;)V

    :cond_1
    iget-object v0, v1, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lp0/e;->c(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "__container"

    iget-object v1, v1, Ls0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp0/e;

    invoke-direct {v0, p4}, Lp0/e;-><init>(Lp0/e;)V

    iget-object p4, v0, Lp0/e;->a:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2, v1}, Lp0/e;->a(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Lp0/e;

    invoke-direct {p4, v0}, Lp0/e;-><init>(Lp0/e;)V

    iput-object p0, p4, Lp0/e;->b:Lp0/f;

    move-object v2, p3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p4, v0

    :cond_4
    invoke-virtual {p1, p2, v1}, Lp0/e;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2, v1}, Lp0/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3, p4}, Ls0/b;->r(Lp0/e;ILjava/util/List;Lp0/e;)V

    :cond_5
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Ls0/b;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls0/b;->u:Ls0/b;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls0/b;->v:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls0/b;->v:Ljava/util/List;

    iget-object v0, p0, Ls0/b;->u:Ls0/b;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Ls0/b;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Ls0/b;->u:Ls0/b;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Ls0/b;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Ls0/b;->h:Ll0/a;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public abstract l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public m()Lr0/a;
    .locals 0

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->w:Lr0/a;

    return-object p0
.end method

.method public n()Lu0/j;
    .locals 0

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->x:Lu0/j;

    return-object p0
.end method

.method public final o()Z
    .locals 0

    iget-object p0, p0, Ls0/b;->r:Ln0/n;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ln0/n;->a:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Ls0/b;->p:Lcom/airbnb/lottie/a;

    iget-object v0, v0, Lcom/airbnb/lottie/a;->d:Lk0/m;

    iget-object v0, v0, Lk0/m;->a:Lk0/M;

    iget-object p0, p0, Ls0/b;->q:Ls0/e;

    iget-object p0, p0, Ls0/e;->c:Ljava/lang/String;

    iget-boolean v1, v0, Lk0/M;->a:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lk0/M;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/e;

    if-nez v2, :cond_1

    new-instance v2, Lw0/e;

    invoke-direct {v2}, Lw0/e;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, v2, Lw0/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lw0/e;->a:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lw0/e;->a:I

    :cond_2
    const-string v1, "__container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lk0/M;->b:Lq/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lq/g;

    invoke-direct {v0, p0}, Lq/g;-><init>(Lq/h;)V

    :goto_0
    invoke-virtual {v0}, Lq/i;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lq/i;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/L;

    invoke-interface {p0}, Lk0/L;->a()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Ln0/f;)V
    .locals 0

    iget-object p0, p0, Ls0/b;->w:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(Lp0/e;ILjava/util/List;Lp0/e;)V
    .locals 0

    return-void
.end method

.method public s(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ls0/b;->A:Ll0/a;

    if-nez v0, :cond_0

    new-instance v0, Ll0/a;

    invoke-direct {v0}, Ll0/a;-><init>()V

    iput-object v0, p0, Ls0/b;->A:Ll0/a;

    :cond_0
    iput-boolean p1, p0, Ls0/b;->z:Z

    return-void
.end method

.method public t(F)V
    .locals 4

    iget-object v0, p0, Ls0/b;->x:Ln0/w;

    iget-object v1, v0, Ln0/w;->j:Ln0/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_0
    iget-object v1, v0, Ln0/w;->m:Ln0/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_1
    iget-object v1, v0, Ln0/w;->n:Ln0/f;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_2
    iget-object v1, v0, Ln0/w;->f:Ln0/f;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_3
    iget-object v1, v0, Ln0/w;->g:Ln0/f;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_4
    iget-object v1, v0, Ln0/w;->h:Ln0/f;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_5
    iget-object v1, v0, Ln0/w;->i:Ln0/f;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_6
    iget-object v1, v0, Ln0/w;->k:Ln0/j;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_7
    iget-object v0, v0, Ln0/w;->l:Ln0/j;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ln0/f;->j(F)V

    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Ls0/b;->r:Ln0/n;

    if-eqz v1, :cond_9

    move v2, v0

    :goto_0
    iget-object v3, v1, Ln0/n;->a:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v1, Ln0/n;->a:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/f;

    invoke-virtual {v3, p1}, Ln0/f;->j(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, p0, Ls0/b;->s:Ln0/j;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    :cond_a
    iget-object v1, p0, Ls0/b;->t:Ls0/b;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Ls0/b;->t(F)V

    :cond_b
    :goto_1
    iget-object v1, p0, Ls0/b;->w:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/f;

    invoke-virtual {v1, p1}, Ln0/f;->j(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method
