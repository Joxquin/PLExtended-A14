.class public final Landroidx/fragment/app/q;
.super Landroidx/fragment/app/U0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/U0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static m(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/q;->m(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static n(Lq/f;Landroid/view/View;)V
    .locals 4

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/q;->n(Lq/f;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final f(Ljava/util/List;Z)V
    .locals 42

    move-object/from16 v6, p0

    move/from16 v0, p2

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v9, "operation.fragment.mView"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/fragment/app/S0;

    iget-object v11, v10, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v11, v11, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Landroidx/fragment/app/P0;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v11

    if-ne v11, v4, :cond_1

    iget-object v10, v10, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v10, v4, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object v10, v3

    check-cast v10, Landroidx/fragment/app/S0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/fragment/app/S0;

    iget-object v12, v11, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v12, v12, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-static {v12, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Landroidx/fragment/app/P0;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v12

    if-eq v12, v4, :cond_4

    iget-object v11, v11, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v11, v4, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    move-object v11, v3

    check-cast v11, Landroidx/fragment/app/S0;

    const/4 v12, 0x2

    invoke-static {v12}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v2

    const-string v13, " to "

    const-string v14, "FragmentManager"

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing operations from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lkotlin/collections/s;->l(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_68

    invoke-static/range {p1 .. p1}, Lkotlin/collections/n;->a(Ljava/util/List;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/S0;

    iget-object v5, v5, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroidx/fragment/app/S0;

    iget-object v7, v7, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v7, v7, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    iget-object v12, v5, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    iget v8, v12, Landroidx/fragment/app/G;->b:I

    iput v8, v7, Landroidx/fragment/app/G;->b:I

    iget v8, v12, Landroidx/fragment/app/G;->c:I

    iput v8, v7, Landroidx/fragment/app/G;->c:I

    iget v8, v12, Landroidx/fragment/app/G;->d:I

    iput v8, v7, Landroidx/fragment/app/G;->d:I

    iget v8, v12, Landroidx/fragment/app/G;->e:I

    iput v8, v7, Landroidx/fragment/app/G;->e:I

    const/4 v12, 0x2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/S0;

    new-instance v7, LI/d;

    invoke-direct {v7}, LI/d;-><init>()V

    invoke-virtual {v5}, Landroidx/fragment/app/S0;->d()V

    iget-object v8, v5, Landroidx/fragment/app/S0;->e:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/fragment/app/l;

    invoke-direct {v8, v5, v7, v0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/S0;LI/d;Z)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, LI/d;

    invoke-direct {v7}, LI/d;-><init>()V

    invoke-virtual {v5}, Landroidx/fragment/app/S0;->d()V

    iget-object v8, v5, Landroidx/fragment/app/S0;->e:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/fragment/app/n;

    if-eqz v0, :cond_8

    if-ne v5, v10, :cond_9

    goto :goto_6

    :cond_8
    if-ne v5, v11, :cond_9

    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    invoke-direct {v8, v5, v7, v0, v12}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/S0;LI/d;ZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/fragment/app/f;

    const/4 v8, 0x0

    invoke-direct {v7, v15, v5, v6, v8}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v5, v5, Landroidx/fragment/app/S0;->d:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/fragment/app/n;

    invoke-virtual {v12}, Landroidx/fragment/app/m;->b()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/fragment/app/n;

    invoke-virtual {v12}, Landroidx/fragment/app/n;->c()Landroidx/fragment/app/J0;

    move-result-object v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_d

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/n;

    invoke-virtual {v8}, Landroidx/fragment/app/n;->c()Landroidx/fragment/app/J0;

    move-result-object v12

    if-eqz v5, :cond_11

    if-ne v12, v5, :cond_10

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v5, 0x1

    :goto_d
    if-eqz v5, :cond_12

    move-object v5, v12

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    iget-object v1, v1, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition type than other Fragments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iget-object v12, v6, Landroidx/fragment/app/U0;->a:Landroid/view/ViewGroup;

    if-nez v5, :cond_15

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n;

    iget-object v3, v1, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/fragment/app/m;->a()V

    goto :goto_e

    :cond_14
    move-object/from16 v26, v2

    move-object/from16 p1, v8

    move-object/from16 v27, v10

    move-object/from16 v34, v11

    move-object/from16 v17, v13

    move-object v11, v14

    move-object/from16 v31, v15

    const/4 v8, 0x0

    move-object v13, v7

    move-object v7, v12

    goto/16 :goto_36

    :cond_15
    new-instance v1, Landroid/view/View;

    move-object/from16 v17, v13

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v4

    new-instance v4, Lq/f;

    invoke-direct {v4}, Lq/f;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move/from16 v20, v0

    move-object/from16 v31, v15

    const/4 v15, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_34

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 p1, v8

    move-object/from16 v8, v21

    check-cast v8, Landroidx/fragment/app/n;

    iget-object v8, v8, Landroidx/fragment/app/n;->e:Ljava/lang/Object;

    if-eqz v8, :cond_16

    const/16 v21, 0x1

    goto :goto_10

    :cond_16
    const/16 v21, 0x0

    :goto_10
    if-eqz v21, :cond_33

    if-eqz v10, :cond_33

    if-eqz v11, :cond_33

    invoke-virtual {v5, v8}, Landroidx/fragment/app/J0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/fragment/app/J0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v15, v11, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    move-object/from16 v32, v9

    invoke-virtual {v15}, Landroidx/fragment/app/K;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v33, v3

    const-string v3, "lastIn.fragment.sharedElementSourceNames"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    move-object/from16 v34, v7

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v35, v1

    const-string v1, "firstOut.fragment.sharedElementSourceNames"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v36, v13

    const-string v13, "firstOut.fragment.sharedElementTargetNames"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v37, v5

    move-object/from16 v38, v8

    const/4 v5, 0x0

    :goto_11
    const/4 v8, -0x1

    if-ge v5, v13, :cond_18

    move/from16 v21, v13

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-eq v13, v8, :cond_17

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v13, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v21

    goto :goto_11

    :cond_18
    invoke-virtual {v15}, Landroidx/fragment/app/K;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    const-string v5, "lastIn.fragment.sharedElementTargetNames"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v20, :cond_19

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getExitTransitionCallback()LB/l;

    move-result-object v5

    invoke-virtual {v15}, Landroidx/fragment/app/K;->getEnterTransitionCallback()LB/l;

    move-result-object v7

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_19
    invoke-virtual {v3}, Landroidx/fragment/app/K;->getEnterTransitionCallback()LB/l;

    move-result-object v5

    invoke-virtual {v15}, Landroidx/fragment/app/K;->getExitTransitionCallback()LB/l;

    move-result-object v7

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    invoke-virtual {v13}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LB/l;

    invoke-virtual {v13}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LB/l;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v13, :cond_1a

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v22, v13

    move-object/from16 v13, v20

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v39, v12

    move-object/from16 v12, v20

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v13, v12}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v22

    move-object/from16 v12, v39

    goto :goto_13

    :cond_1a
    move-object/from16 v39, v12

    const/4 v8, 0x2

    invoke-static {v8}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    const-string v8, ">>> entering view names <<<"

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "Name: "

    if-eqz v12, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, v20

    goto :goto_14

    :cond_1b
    const-string v8, ">>> exiting view names <<<"

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, v20

    goto :goto_15

    :cond_1c
    new-instance v8, Lq/f;

    invoke-direct {v8}, Lq/f;-><init>()V

    iget-object v12, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const-string v13, "firstOut.fragment.mView"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v12}, Landroidx/fragment/app/q;->n(Lq/f;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Lq/f;->m(Ljava/util/Collection;)Z

    if-eqz v5, :cond_22

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v12

    if-eqz v12, :cond_1d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "Executing exit callback for operation "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, -0x1

    add-int/2addr v5, v12

    if-ltz v5, :cond_21

    :goto_16
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-nez v13, :cond_1e

    invoke-virtual {v4, v5}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v9

    goto :goto_17

    :cond_1e
    sget-object v20, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    move-object/from16 v22, v9

    invoke-static {v13}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v4, v5}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v13}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v5}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_17
    if-gez v12, :cond_20

    goto :goto_18

    :cond_20
    move v5, v12

    move-object/from16 v9, v22

    goto :goto_16

    :cond_21
    move-object/from16 v22, v9

    goto :goto_18

    :cond_22
    move-object/from16 v22, v9

    invoke-virtual {v8}, Lq/f;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Lq/f;->m(Ljava/util/Collection;)Z

    :goto_18
    new-instance v5, Lq/f;

    invoke-direct {v5}, Lq/f;-><init>()V

    iget-object v9, v15, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const-string v12, "lastIn.fragment.mView"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Landroidx/fragment/app/q;->n(Lq/f;Landroid/view/View;)V

    invoke-virtual {v5, v1}, Lq/f;->m(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lq/f;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v5, v9}, Lq/f;->m(Ljava/util/Collection;)Z

    if-eqz v7, :cond_29

    const/4 v7, 0x2

    invoke-static {v7}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v9

    if-eqz v9, :cond_23

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Executing enter callback for operation "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, -0x1

    add-int/2addr v7, v9

    if-ltz v7, :cond_28

    :goto_19
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const-string v13, "name"

    if-nez v12, :cond_25

    invoke-static {v7, v13}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Landroidx/fragment/app/C0;->b(Lq/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-virtual {v4, v7}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    move-object/from16 v40, v14

    goto :goto_1a

    :cond_25
    sget-object v20, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    move-object/from16 v40, v14

    invoke-static {v12}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    invoke-static {v7, v13}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Landroidx/fragment/app/C0;->b(Lq/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-static {v12}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v7, v12}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    :goto_1a
    if-gez v9, :cond_27

    goto :goto_1c

    :cond_27
    move v7, v9

    move-object/from16 v14, v40

    goto :goto_19

    :cond_28
    move-object/from16 v40, v14

    goto :goto_1c

    :cond_29
    move-object/from16 v40, v14

    sget-object v7, Landroidx/fragment/app/C0;->a:Landroidx/fragment/app/H0;

    iget v7, v4, Lq/m;->f:I

    const/4 v9, -0x1

    add-int/2addr v7, v9

    :goto_1b
    if-ge v9, v7, :cond_2b

    invoke-virtual {v4, v7}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Lq/f;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2a

    invoke-virtual {v4, v7}, Lq/m;->h(I)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    :cond_2b
    :goto_1c
    invoke-virtual {v4}, Lq/f;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v8}, Lq/f;->entrySet()Ljava/util/Set;

    move-result-object v9

    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    invoke-direct {v12, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    check-cast v9, Lq/a;

    invoke-virtual {v9}, Lq/a;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    :goto_1d
    move-object v9, v7

    check-cast v9, Lq/d;

    invoke-virtual {v9}, Lq/d;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-virtual {v9}, Lq/d;->next()Ljava/lang/Object;

    invoke-virtual {v12, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2c

    invoke-virtual {v9}, Lq/d;->remove()V

    goto :goto_1d

    :cond_2d
    invoke-virtual {v4}, Lq/f;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v5}, Lq/f;->entrySet()Ljava/util/Set;

    move-result-object v9

    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    invoke-direct {v12, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    check-cast v9, Lq/a;

    invoke-virtual {v9}, Lq/a;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2e
    :goto_1e
    move-object v9, v7

    check-cast v9, Lq/d;

    invoke-virtual {v9}, Lq/d;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-virtual {v9}, Lq/d;->next()Ljava/lang/Object;

    invoke-virtual {v12, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2e

    invoke-virtual {v9}, Lq/d;->remove()V

    goto :goto_1e

    :cond_2f
    invoke-virtual {v4}, Lq/m;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v8, p1

    move/from16 v20, v0

    move-object/from16 v9, v32

    move-object/from16 v3, v33

    move-object/from16 v7, v34

    move-object/from16 v1, v35

    move-object/from16 v13, v36

    move-object/from16 v5, v37

    move-object/from16 v12, v39

    move-object/from16 v14, v40

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_30
    invoke-static {v15, v3, v0, v8}, Landroidx/fragment/app/C0;->a(Landroidx/fragment/app/K;Landroidx/fragment/app/K;ZLq/f;)V

    new-instance v3, Landroidx/fragment/app/g;

    invoke-direct {v3, v11, v10, v0, v5}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/S0;Landroidx/fragment/app/S0;ZLq/f;)V

    move-object/from16 v7, v39

    invoke-static {v7, v3}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Lq/f;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v9, 0x1

    xor-int/2addr v3, v9

    if-eqz v3, :cond_31

    move-object/from16 v3, v22

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v12, v37

    move-object/from16 v8, v38

    invoke-virtual {v12, v3, v8}, Landroidx/fragment/app/J0;->m(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v30, v3

    goto :goto_1f

    :cond_31
    move-object/from16 v12, v37

    move-object/from16 v8, v38

    :goto_1f
    invoke-virtual {v5}, Lq/f;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v9, 0x1

    xor-int/2addr v3, v9

    if-eqz v3, :cond_32

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_32

    new-instance v3, Landroidx/fragment/app/f;

    move-object/from16 v5, v36

    invoke-direct {v3, v12, v1, v5, v9}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v7, v3}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move/from16 v29, v9

    goto :goto_20

    :cond_32
    move-object/from16 v5, v36

    :goto_20
    move-object/from16 v1, v35

    invoke-virtual {v12, v8, v1, v6}, Landroidx/fragment/app/J0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v12

    move-object/from16 v21, v8

    move-object/from16 v24, v8

    move-object/from16 v25, v2

    invoke-virtual/range {v20 .. v25}, Landroidx/fragment/app/J0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, v34

    invoke-interface {v13, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v20, v0

    move-object v15, v8

    goto :goto_21

    :cond_33
    move-object/from16 v33, v3

    move-object/from16 v32, v9

    move-object/from16 v40, v14

    const/4 v9, 0x1

    move-object/from16 v41, v12

    move-object v12, v5

    move-object v5, v13

    move-object v13, v7

    move-object/from16 v7, v41

    :goto_21
    move-object/from16 v8, p1

    move-object/from16 v9, v32

    move-object/from16 v3, v33

    move-object/from16 v14, v40

    move-object/from16 v41, v13

    move-object v13, v5

    move-object v5, v12

    move-object v12, v7

    move-object/from16 v7, v41

    goto/16 :goto_f

    :cond_34
    move-object/from16 v33, v3

    move-object/from16 p1, v8

    move-object/from16 v32, v9

    move-object/from16 v40, v14

    const/4 v9, 0x1

    move-object/from16 v41, v12

    move-object v12, v5

    move-object v5, v13

    move-object v13, v7

    move-object/from16 v7, v41

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroidx/fragment/app/n;

    invoke-virtual {v9}, Landroidx/fragment/app/m;->b()Z

    move-result v19

    move-object/from16 p2, v3

    iget-object v3, v9, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    if-eqz v19, :cond_35

    move-object/from16 v19, v4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroidx/fragment/app/m;->a()V

    goto :goto_24

    :cond_35
    move-object/from16 v19, v4

    iget-object v4, v9, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    invoke-virtual {v12, v4}, Landroidx/fragment/app/J0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v15, :cond_37

    if-eq v3, v10, :cond_36

    if-ne v3, v11, :cond_37

    :cond_36
    const/16 v20, 0x1

    goto :goto_23

    :cond_37
    const/16 v20, 0x0

    :goto_23
    if-nez v4, :cond_39

    if-nez v20, :cond_38

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroidx/fragment/app/m;->a()V

    :cond_38
    :goto_24
    move-object/from16 v3, p2

    move-object/from16 v4, v19

    const/4 v9, 0x1

    goto :goto_22

    :cond_39
    move-object/from16 v34, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v15

    iget-object v15, v3, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v15, v15, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    move-object/from16 v36, v14

    move-object/from16 v14, v32

    invoke-static {v15, v14}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v11}, Landroidx/fragment/app/q;->m(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v20, :cond_3b

    if-ne v3, v10, :cond_3a

    invoke-static {v6}, Lkotlin/collections/s;->n(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_25

    :cond_3a
    invoke-static {v2}, Lkotlin/collections/s;->n(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3b
    :goto_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3c

    invoke-virtual {v12, v1, v4}, Landroidx/fragment/app/J0;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v20, v1

    move-object/from16 v32, v14

    goto :goto_26

    :cond_3c
    invoke-virtual {v12, v4, v11}, Landroidx/fragment/app/J0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v23, v11

    invoke-virtual/range {v20 .. v25}, Landroidx/fragment/app/J0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v15, v3, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-object/from16 v32, v14

    move-object/from16 v14, p1

    if-ne v15, v14, :cond_3d

    move-object/from16 v15, v31

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v20, v1

    iget-object v1, v3, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    move-object/from16 p1, v14

    iget-object v14, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v12, v4, v1, v15}, Landroidx/fragment/app/J0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v1, Landroidx/fragment/app/h;

    invoke-direct {v1, v11}, Landroidx/fragment/app/h;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v7, v1}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_26

    :cond_3d
    move-object/from16 v20, v1

    move-object/from16 p1, v14

    :goto_26
    iget-object v1, v3, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-object/from16 v14, v27

    if-ne v1, v14, :cond_3f

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v29, :cond_3e

    invoke-virtual {v12, v4, v5}, Landroidx/fragment/app/J0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_3e
    move-object/from16 v1, v30

    goto :goto_27

    :cond_3f
    move-object/from16 v1, v30

    invoke-virtual {v12, v1, v4}, Landroidx/fragment/app/J0;->m(Landroid/view/View;Ljava/lang/Object;)V

    :goto_27
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v9, Landroidx/fragment/app/n;->d:Z

    if-eqz v3, :cond_40

    invoke-virtual {v12, v8, v4}, Landroidx/fragment/app/J0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    move-object/from16 v3, v36

    goto :goto_28

    :cond_40
    move-object/from16 v3, v36

    invoke-virtual {v12, v3, v4}, Landroidx/fragment/app/J0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_28
    move-object/from16 v30, v1

    move-object/from16 v27, v14

    move-object/from16 v4, v19

    move-object/from16 v1, v20

    move-object/from16 v11, v34

    move-object/from16 v15, v35

    const/4 v9, 0x1

    move-object v14, v3

    move-object/from16 v3, p2

    goto/16 :goto_22

    :cond_41
    move-object/from16 v19, v4

    move-object/from16 v34, v11

    move-object v3, v14

    invoke-virtual {v12, v8, v3, v15}, Landroidx/fragment/app/J0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_42

    move-object/from16 v9, v34

    move-object/from16 v11, v40

    goto/16 :goto_2f

    :cond_42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/fragment/app/n;

    invoke-virtual {v8}, Landroidx/fragment/app/m;->b()Z

    move-result v8

    if-nez v8, :cond_43

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_44
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/n;

    iget-object v5, v4, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    iget-object v8, v4, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    move-object/from16 v9, v34

    if-eqz v15, :cond_46

    if-eq v8, v10, :cond_45

    if-ne v8, v9, :cond_46

    :cond_45
    const/4 v11, 0x1

    goto :goto_2b

    :cond_46
    const/4 v11, 0x0

    :goto_2b
    if-nez v5, :cond_48

    if-eqz v11, :cond_47

    goto :goto_2c

    :cond_47
    move-object/from16 v11, v40

    goto :goto_2e

    :cond_48
    :goto_2c
    sget-object v5, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4a

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v11

    if-eqz v11, :cond_49

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "SpecialEffectsController: Container "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has not been laid out. Completing operation "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, v40

    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_49
    move-object/from16 v11, v40

    :goto_2d
    invoke-virtual {v4}, Landroidx/fragment/app/m;->a()V

    goto :goto_2e

    :cond_4a
    move-object/from16 v11, v40

    iget-object v5, v8, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    new-instance v5, Landroidx/fragment/app/i;

    invoke-direct {v5, v4, v8}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/S0;)V

    iget-object v4, v4, Landroidx/fragment/app/m;->b:LI/d;

    invoke-virtual {v12, v1, v4, v5}, Landroidx/fragment/app/J0;->o(Ljava/lang/Object;LI/d;Landroidx/fragment/app/i;)V

    :goto_2e
    move-object/from16 v34, v9

    move-object/from16 v40, v11

    goto :goto_2a

    :cond_4b
    move-object/from16 v9, v34

    move-object/from16 v11, v40

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4c

    :goto_2f
    move-object/from16 v34, v9

    move-object/from16 v27, v10

    const/4 v8, 0x0

    goto/16 :goto_36

    :cond_4c
    const/4 v3, 0x4

    invoke-static {v3, v0}, Landroidx/fragment/app/C0;->c(ILjava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v4, :cond_4d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget-object v14, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    invoke-static {v5, v14}, Landroidx/core/view/D;->m(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_4d
    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string v4, ">>>>> Beginning transition <<<<<"

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, " Name: "

    const-string v14, "View: "

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p2, v4

    const-string v4, "sharedElementFirstOutViews"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p2

    goto :goto_31

    :cond_4e
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p2, v4

    const-string v4, "sharedElementLastInViews"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p2

    goto :goto_32

    :cond_4f
    invoke-virtual {v12, v7, v1}, Landroidx/fragment/app/J0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_33
    if-ge v8, v1, :cond_53

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget-object v14, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/D;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_50

    move-object/from16 v34, v9

    move-object/from16 v27, v10

    move-object/from16 v16, v19

    goto :goto_35

    :cond_50
    move-object/from16 v34, v9

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroidx/core/view/D;->m(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v5, v19

    invoke-virtual {v5, v14}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    :goto_34
    move-object/from16 v27, v10

    if-ge v5, v1, :cond_52

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v14}, Landroidx/core/view/D;->m(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_35

    :cond_51
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v27

    goto :goto_34

    :cond_52
    :goto_35
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v16

    move-object/from16 v10, v27

    move-object/from16 v9, v34

    goto :goto_33

    :cond_53
    move-object/from16 v34, v9

    move-object/from16 v27, v10

    new-instance v5, Landroidx/fragment/app/I0;

    move-object/from16 v20, v5

    move/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v4

    invoke-direct/range {v20 .. v25}, Landroidx/fragment/app/I0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v7, v5}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    invoke-static {v8, v0}, Landroidx/fragment/app/C0;->c(ILjava/util/List;)V

    invoke-virtual {v12, v15, v6, v2}, Landroidx/fragment/app/J0;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v0, v8

    :goto_37
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v14, " has started."

    const-string v2, "context"

    if-eqz v1, :cond_5c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/fragment/app/l;

    invoke-virtual {v15}, Landroidx/fragment/app/m;->b()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v15}, Landroidx/fragment/app/m;->a()V

    goto :goto_37

    :cond_54
    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroidx/fragment/app/l;->c(Landroid/content/Context;)Landroidx/fragment/app/Q;

    move-result-object v1

    if-nez v1, :cond_55

    invoke-virtual {v15}, Landroidx/fragment/app/m;->a()V

    goto :goto_37

    :cond_55
    iget-object v5, v1, Landroidx/fragment/app/Q;->b:Landroid/animation/Animator;

    if-nez v5, :cond_56

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_56
    iget-object v4, v15, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    iget-object v1, v4, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v3

    if-eqz v3, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring Animator set on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    invoke-virtual {v15}, Landroidx/fragment/app/m;->a()V

    goto :goto_37

    :cond_58
    iget-object v0, v4, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-object/from16 v3, p1

    if-ne v0, v3, :cond_59

    const/16 v16, 0x1

    goto :goto_38

    :cond_59
    move/from16 v16, v8

    :goto_38
    if-eqz v16, :cond_5a

    move-object/from16 v0, v31

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v1, Landroidx/fragment/app/o;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move/from16 v3, v16

    move-object/from16 p2, v4

    move-object/from16 v16, v12

    move-object v12, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/q;Landroid/view/View;ZLandroidx/fragment/app/S0;Landroidx/fragment/app/l;)V

    invoke-virtual {v12, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animator from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_5b
    move-object/from16 v1, p2

    :goto_39
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0, v12, v1}, Landroidx/fragment/app/j;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/S0;)V

    iget-object v1, v15, Landroidx/fragment/app/m;->b:LI/d;

    invoke-virtual {v1, v0}, LI/d;->b(LI/c;)V

    move-object/from16 v12, v16

    move-object/from16 p1, v19

    const/4 v0, 0x1

    const/4 v8, 0x0

    goto/16 :goto_37

    :cond_5c
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/l;

    iget-object v4, v3, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    iget-object v5, v4, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    const-string v8, "Ignoring Animation set on "

    if-eqz v6, :cond_5e

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-virtual {v3}, Landroidx/fragment/app/m;->a()V

    goto :goto_3a

    :cond_5e
    if-eqz v0, :cond_60

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    invoke-virtual {v3}, Landroidx/fragment/app/m;->a()V

    goto :goto_3a

    :cond_60
    iget-object v5, v5, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroidx/fragment/app/l;->c(Landroid/content/Context;)Landroidx/fragment/app/Q;

    move-result-object v8

    const-string v10, "Required value was null."

    if-eqz v8, :cond_64

    iget-object v8, v8, Landroidx/fragment/app/Q;->a:Landroid/view/animation/Animation;

    if-eqz v8, :cond_63

    iget-object v10, v4, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->d:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v10, v12, :cond_61

    invoke-virtual {v5, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroidx/fragment/app/m;->a()V

    move-object/from16 v12, p0

    goto :goto_3b

    :cond_61
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/S;

    invoke-direct {v10, v8, v7, v5}, Landroidx/fragment/app/S;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v8, Landroidx/fragment/app/p;

    move-object/from16 v12, p0

    invoke-direct {v8, v5, v3, v12, v4}, Landroidx/fragment/app/p;-><init>(Landroid/view/View;Landroidx/fragment/app/l;Landroidx/fragment/app/q;Landroidx/fragment/app/S0;)V

    invoke-virtual {v10, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x2

    invoke-static {v8}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v10

    if-eqz v10, :cond_62

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Animation from operation "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_3b
    new-instance v8, Landroidx/fragment/app/k;

    invoke-direct {v8, v5, v3, v12, v4}, Landroidx/fragment/app/k;-><init>(Landroid/view/View;Landroidx/fragment/app/l;Landroidx/fragment/app/q;Landroidx/fragment/app/S0;)V

    iget-object v3, v3, Landroidx/fragment/app/m;->b:LI/d;

    invoke-virtual {v3, v8}, LI/d;->b(LI/c;)V

    goto/16 :goto_3a

    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    move-object/from16 v15, v31

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/S0;

    iget-object v2, v1, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v2, v2, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iget-object v1, v1, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    goto :goto_3c

    :cond_66
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void

    :cond_68
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
