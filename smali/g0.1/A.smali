.class public final Lg0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final d:Lg0/x;

.field public final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lg0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg0/A;->d:Lg0/x;

    iput-object p1, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v1, Lg0/B;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lg0/B;->b()Lq/f;

    move-result-object v1

    iget-object v3, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v0, Lg0/A;->d:Lg0/x;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lg0/A;->d:Lg0/x;

    new-instance v6, Lg0/z;

    invoke-direct {v6, v0, v1}, Lg0/z;-><init>(Lg0/A;Lq/f;)V

    invoke-virtual {v3, v6}, Lg0/x;->a(Lg0/u;)V

    iget-object v1, v0, Lg0/A;->d:Lg0/x;

    iget-object v3, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lg0/x;->i(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg0/x;

    iget-object v5, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Lg0/x;->B(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lg0/A;->d:Lg0/x;

    iget-object v8, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lg0/x;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lg0/x;->o:Ljava/util/ArrayList;

    iget-object v0, v1, Lg0/x;->j:Lg0/G;

    iget-object v3, v1, Lg0/x;->k:Lg0/G;

    new-instance v5, Lq/f;

    iget-object v7, v0, Lg0/G;->a:Lq/f;

    invoke-direct {v5, v7}, Lq/f;-><init>(Lq/f;)V

    new-instance v7, Lq/f;

    iget-object v9, v3, Lg0/G;->a:Lq/f;

    invoke-direct {v7, v9}, Lq/f;-><init>(Lq/f;)V

    move v9, v6

    :goto_3
    iget-object v10, v1, Lg0/x;->m:[I

    array-length v11, v10

    if-ge v9, v11, :cond_d

    aget v10, v10, v9

    if-eq v10, v2, :cond_a

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v10, v0, Lg0/G;->c:Lq/j;

    invoke-virtual {v10}, Lq/j;->g()I

    move-result v11

    move v12, v6

    :goto_4
    if-ge v12, v11, :cond_c

    invoke-virtual {v10, v12}, Lq/j;->h(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_5

    invoke-virtual {v1, v13}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v10, v12}, Lq/j;->e(I)J

    move-result-wide v14

    iget-object v6, v3, Lg0/G;->c:Lq/j;

    invoke-virtual {v6, v14, v15}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_5

    invoke-virtual {v1, v6}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v5, v13}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg0/F;

    invoke-virtual {v7, v6}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg0/F;

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    iget-object v2, v1, Lg0/x;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lg0/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v13}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lg0/G;->b:Landroid/util/SparseArray;

    iget-object v6, v3, Lg0/G;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_c

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_7

    invoke-virtual {v1, v12}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_7

    invoke-virtual {v1, v13}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v5, v12}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg0/F;

    invoke-virtual {v7, v13}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg0/F;

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    iget-object v4, v1, Lg0/x;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lg0/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v12}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v13}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lg0/G;->d:Lq/f;

    iget v4, v2, Lq/m;->f:I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_c

    invoke-virtual {v2, v6}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_9

    invoke-virtual {v1, v10}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v2, v6}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v3, Lg0/G;->d:Lq/f;

    invoke-virtual {v12, v11}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_9

    invoke-virtual {v1, v11}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v5, v10}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg0/F;

    invoke-virtual {v7, v11}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg0/F;

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    iget-object v14, v1, Lg0/x;->n:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lg0/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    iget v2, v5, Lq/m;->f:I

    :cond_b
    :goto_7
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_c

    invoke-virtual {v5, v2}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_b

    invoke-virtual {v1, v4}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v7, v4}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg0/F;

    if-eqz v4, :cond_b

    iget-object v6, v4, Lg0/F;->b:Landroid/view/View;

    invoke-virtual {v1, v6}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v2}, Lq/m;->h(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg0/F;

    iget-object v10, v1, Lg0/x;->n:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lg0/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_9
    iget v2, v5, Lq/m;->f:I

    if-ge v0, v2, :cond_f

    invoke-virtual {v5, v0}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg0/F;

    iget-object v3, v2, Lg0/F;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lg0/x;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lg0/x;->o:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_a
    iget v2, v7, Lq/m;->f:I

    if-ge v0, v2, :cond_11

    invoke-virtual {v7, v0}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg0/F;

    iget-object v3, v2, Lg0/F;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lg0/x;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v1, Lg0/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lg0/x;->n:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    invoke-static {}, Lg0/x;->q()Lq/f;

    move-result-object v0

    iget v2, v0, Lq/m;->f:I

    sget-object v3, Lg0/I;->a:Lg0/N;

    invoke-virtual {v8}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_c
    if-ltz v2, :cond_19

    invoke-virtual {v0, v2}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_18

    invoke-virtual {v0, v4}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg0/s;

    if-eqz v5, :cond_18

    iget-object v6, v5, Lg0/s;->a:Landroid/view/View;

    if-eqz v6, :cond_18

    iget-object v7, v5, Lg0/s;->d:Lg0/U;

    instance-of v9, v7, Lg0/T;

    if-eqz v9, :cond_12

    check-cast v7, Lg0/T;

    iget-object v7, v7, Lg0/T;->a:Landroid/view/WindowId;

    invoke-virtual {v7, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_18

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lg0/x;->s(Landroid/view/View;Z)Lg0/F;

    move-result-object v9

    invoke-virtual {v1, v6, v7}, Lg0/x;->o(Landroid/view/View;Z)Lg0/F;

    move-result-object v10

    if-nez v9, :cond_13

    if-nez v10, :cond_13

    iget-object v7, v1, Lg0/x;->k:Lg0/G;

    iget-object v7, v7, Lg0/G;->a:Lq/f;

    invoke-virtual {v7, v6}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lg0/F;

    :cond_13
    iget-object v6, v5, Lg0/s;->e:Lg0/x;

    if-nez v9, :cond_14

    if-eqz v10, :cond_15

    :cond_14
    iget-object v5, v5, Lg0/s;->c:Lg0/F;

    invoke-virtual {v6, v5, v10}, Lg0/x;->u(Lg0/F;Lg0/F;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_18

    invoke-virtual {v6}, Lg0/x;->p()Lg0/x;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v0, v4}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_17
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_18
    :goto_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_19
    iget-object v9, v1, Lg0/x;->j:Lg0/G;

    iget-object v10, v1, Lg0/x;->k:Lg0/G;

    iget-object v11, v1, Lg0/x;->n:Ljava/util/ArrayList;

    iget-object v12, v1, Lg0/x;->o:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lg0/x;->m(Landroid/view/ViewGroup;Lg0/G;Lg0/G;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lg0/x;->C()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, Lg0/B;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lg0/B;->b()Lq/f;

    move-result-object p1

    iget-object v0, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/x;

    iget-object v1, p0, Lg0/A;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lg0/x;->B(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg0/A;->d:Lg0/x;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg0/x;->j(Z)V

    return-void
.end method
