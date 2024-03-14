.class public final Lcom/android/systemui/animation/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/animation/Interpolator;

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLandroid/view/animation/Interpolator;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/lang/Runnable;Z)V
    .locals 0

    iput-object p4, p0, Lcom/android/systemui/animation/w;->d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    iput-boolean p6, p0, Lcom/android/systemui/animation/w;->e:Z

    iput-object p3, p0, Lcom/android/systemui/animation/w;->f:Landroid/view/animation/Interpolator;

    iput-wide p1, p0, Lcom/android/systemui/animation/w;->g:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/w;->h:Z

    iput-object p5, p0, Lcom/android/systemui/animation/w;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v6, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    invoke-static {v1, v6}, Lcom/android/systemui/animation/z;->a(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_1
    move/from16 v7, p6

    :goto_0
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->e:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    invoke-static {v1, v8}, Lcom/android/systemui/animation/z;->a(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_2
    move/from16 v9, p7

    :goto_1
    sget-object v10, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->f:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    invoke-static {v1, v10}, Lcom/android/systemui/animation/z;->a(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    :cond_3
    move/from16 v11, p8

    :goto_2
    sget-object v12, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->g:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    invoke-static {v1, v12}, Lcom/android/systemui/animation/z;->a(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_3

    :cond_4
    move/from16 v13, p9

    :goto_3
    const v14, 0x7f0a0352

    invoke-virtual {v1, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v14, v15, Landroid/animation/ObjectAnimator;

    const/16 v16, 0x0

    if-eqz v14, :cond_5

    check-cast v15, Landroid/animation/ObjectAnimator;

    goto :goto_4

    :cond_5
    move-object/from16 v15, v16

    :goto_4
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    const/16 v17, 0x1

    move/from16 v18, v7

    if-eq v14, v15, :cond_7

    if-eq v2, v4, :cond_7

    if-eq v3, v5, :cond_7

    move/from16 v14, v17

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    if-nez v14, :cond_8

    invoke-static {v1, v6, v2}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v8, v3}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v10, v4}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v12, v5}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void

    :cond_8
    iget-object v14, v0, Lcom/android/systemui/animation/w;->d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    iget-boolean v15, v0, Lcom/android/systemui/animation/w;->e:Z

    if-eqz v15, :cond_9

    move v7, v2

    goto :goto_6

    :cond_9
    move/from16 v7, v18

    :goto_6
    if-eqz v15, :cond_a

    move v9, v3

    :cond_a
    if-eqz v15, :cond_b

    move v11, v4

    :cond_b
    if-eqz v15, :cond_c

    move v13, v5

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_7

    :pswitch_1
    move v15, v2

    goto :goto_7

    :pswitch_2
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_7

    :pswitch_3
    add-int v15, v2, v4

    div-int/lit8 v15, v15, 0x2

    :goto_7
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_4
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    goto :goto_8

    :pswitch_5
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    goto :goto_8

    :pswitch_6
    move/from16 v18, v3

    goto :goto_8

    :pswitch_7
    add-int v18, v3, v5

    div-int/lit8 v18, v18, 0x2

    :goto_8
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    packed-switch v19, :pswitch_data_2

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_8
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_9

    :pswitch_9
    move v11, v4

    goto :goto_a

    :pswitch_a
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_9

    :pswitch_b
    add-int v7, v2, v4

    div-int/lit8 v7, v7, 0x2

    :goto_9
    move v11, v7

    :goto_a
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_3

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_c
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_b

    :pswitch_d
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_b

    :pswitch_e
    move v13, v5

    goto :goto_c

    :pswitch_f
    add-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    :goto_b
    move v13, v7

    :goto_c
    move v7, v15

    move/from16 v9, v18

    :cond_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v14, v9, v11, v13}, [Lkotlin/Pair;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/x;->e([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v12, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v11, v13, v14, v15}, [Lkotlin/Pair;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/x;->e([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v7, v6}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eq v13, v2, :cond_e

    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v7, v8}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_f

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v7, v10}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_10

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {v7, v12}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_11

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/systemui/animation/w;->f:Landroid/view/animation/Interpolator;

    iget-wide v3, v0, Lcom/android/systemui/animation/w;->g:J

    iget-boolean v5, v0, Lcom/android/systemui/animation/w;->h:Z

    iget-object v0, v0, Lcom/android/systemui/animation/w;->i:Ljava/lang/Runnable;

    new-instance v6, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v6}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v12, Lcom/android/systemui/animation/A;->b:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Property;

    invoke-static {v7, v10}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {v9, v10}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    filled-new-array {v13, v10}, [I

    move-result-object v10

    invoke-static {v12, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    invoke-virtual {v6, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder;->o()V

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v6, v8}, Lkotlin/collections/builders/ListBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/animation/PropertyValuesHolder;

    const v8, 0x7f0a0352

    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v8, v9, Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_13

    move-object/from16 v16, v9

    check-cast v16, Landroid/animation/ObjectAnimator;

    :cond_13
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_14
    array-length v8, v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/animation/y;

    invoke-direct {v2, v1, v11, v5, v0}, Lcom/android/systemui/animation/y;-><init>(Landroid/view/View;Ljava/util/Set;ZLjava/lang/Runnable;)V

    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object v3, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    invoke-static {v7, v2}, Lkotlin/collections/x;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    goto :goto_e

    :cond_15
    const v2, 0x7f0a0352

    invoke-virtual {v1, v2, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
