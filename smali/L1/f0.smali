.class public final synthetic LL1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;II)V
    .locals 0

    iput p3, p0, LL1/f0;->a:I

    iput-object p1, p0, LL1/f0;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput p2, p0, LL1/f0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LJ1/e;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    iget v4, v0, LL1/f0;->a:I

    const-string v5, "GleamListener is null"

    iget v6, v0, LL1/f0;->c:I

    iget-object v0, v0, LL1/f0;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual {v4, v6}, LL1/o;->i(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "Display indicators"

    invoke-static {v4}, LM1/b;->f(Ljava/lang/String;)V

    iget-object v1, v1, LJ1/e;->c:Ljava/util/List;

    sget v4, LM1/c;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/d;

    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    iget-object v15, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->m:LX1/f;

    if-nez v4, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    iput-object v15, v6, LL1/w;->o:LX1/f;

    iget-object v8, v4, LJ1/d;->b:Ljava/util/List;

    sget v9, LM1/c;->a:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ1/g;

    iget-object v9, v8, LJ1/g;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    sget-object v10, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->o:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-ne v9, v10, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    iget-object v8, v8, LJ1/g;->a:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v6, LL1/w;->a:LX1/u;

    if-eqz v9, :cond_6

    iget-boolean v10, v9, LX1/u;->x:Z

    if-eqz v10, :cond_7

    invoke-virtual {v9}, LX1/u;->k()V

    goto :goto_3

    :cond_6
    invoke-static {v5}, LM1/b;->c(Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iget-object v10, v4, LJ1/d;->a:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ1/y;

    iget-object v8, v8, LJ1/y;->a:LJ1/H;

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    iget v10, v8, LJ1/H;->a:F

    iget v11, v8, LJ1/H;->b:F

    iget v12, v8, LJ1/H;->c:F

    add-float/2addr v12, v10

    iget v8, v8, LJ1/H;->d:F

    add-float/2addr v8, v11

    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_5
    iget-object v8, v6, LL1/w;->c:LL1/a0;

    invoke-virtual {v8, v9}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v10, v6, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v6, LL1/w;->l:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, LL1/H;

    invoke-direct {v14, v11}, LL1/H;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v14, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v6, LL1/w;->k:LX1/s;

    iget-object v12, v6, LL1/w;->j:LV1/u;

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v9, v10, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v11, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v11, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v14, v7}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    invoke-virtual {v8, v2}, LL1/a0;->d(Landroid/graphics/PointF;)V

    invoke-virtual {v8, v11}, LL1/a0;->e(Landroid/graphics/RectF;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v10, LL1/C;

    move-object v8, v10

    move-object v9, v14

    move-object v3, v10

    move-object v10, v6

    move-object/from16 v19, v11

    move-object v11, v15

    move-object/from16 v20, v12

    move-object v12, v2

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v19

    invoke-direct/range {v8 .. v15}, LL1/C;-><init>(LL1/H;LL1/w;LX1/f;Landroid/graphics/Rect;LV1/u;LX1/s;Landroid/graphics/RectF;)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LL1/D;

    invoke-direct {v3, v6}, LL1/D;-><init>(LL1/w;)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LL1/E;

    move-object v8, v3

    move-object v9, v7

    move-object/from16 v11, v21

    invoke-direct/range {v8 .. v13}, LL1/E;-><init>(LL1/H;LL1/w;LX1/f;Landroid/graphics/Rect;LV1/u;)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v15, v21

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_9
    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    iget-object v1, v0, LL1/w;->l:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    const v2, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1, v2, v2}, LL1/w;->e(Landroid/graphics/RectF;FF)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1}, LL1/w;->d(Landroid/graphics/RectF;)V

    goto :goto_7

    :cond_b
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v5, v6, v7}, LL1/w;->e(Landroid/graphics/RectF;FF)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    cmpl-float v6, v7, v4

    if-gtz v6, :cond_d

    if-nez v6, :cond_c

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_c

    :cond_d
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move v4, v7

    goto :goto_6

    :cond_e
    cmpl-float v1, v4, v3

    if-lez v1, :cond_f

    invoke-virtual {v0, v2}, LL1/w;->d(Landroid/graphics/RectF;)V

    :cond_f
    :goto_7
    return-void

    :goto_8
    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual {v2, v6}, LL1/o;->i(I)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_18

    :cond_10
    if-eqz v1, :cond_11

    iget-object v2, v1, LJ1/e;->c:Ljava/util/List;

    if-eqz v2, :cond_11

    iget-object v2, v1, LJ1/e;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    const/4 v2, 0x0

    if-nez v3, :cond_12

    const-string v0, "Unable to obtain any contents"

    invoke-static {v0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_12
    new-instance v3, LL1/B;

    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, LL1/B;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    iget v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->y:F

    iput v6, v3, LL1/B;->l:F

    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->z:LV1/c;

    iput-object v6, v3, LL1/B;->m:LV1/c;

    iput-object v3, v6, LV1/c;->c:LL1/B;

    new-instance v7, LV1/b;

    invoke-direct {v7, v6, v3}, LV1/b;-><init>(LV1/c;LL1/B;)V

    iput-object v7, v6, LV1/c;->b:LV1/b;

    invoke-static {v3, v7}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    iget-object v6, v3, LL1/B;->m:LV1/c;

    new-instance v7, LL1/y;

    invoke-direct {v7, v3}, LL1/y;-><init>(LL1/B;)V

    iput-object v7, v6, LV1/c;->a:LL1/A;

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    new-instance v6, LL1/i0;

    invoke-direct {v6, v0}, LL1/i0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    iget-object v3, v3, LL1/B;->h:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, LJ1/e;->c:Ljava/util/List;

    sget v6, LM1/c;->a:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJ1/d;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e()LL1/w;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    iget-wide v10, v1, LJ1/e;->b:J

    long-to-int v10, v10

    iget-object v11, v1, LJ1/e;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v7, LJ1/d;->b:Ljava/util/List;

    sget v13, LM1/c;->a:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJ1/g;

    iget-object v15, v13, LJ1/g;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-eq v15, v2, :cond_14

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-eq v15, v2, :cond_14

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->j:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-ne v15, v2, :cond_13

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v2, 0x1

    :goto_d
    if-nez v2, :cond_15

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    const/4 v7, 0x1

    goto/16 :goto_16

    :cond_15
    iget-object v2, v8, LL1/w;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v13, v13, LJ1/g;->a:Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_17

    add-int/lit8 v6, v6, 0x1

    iget-object v15, v8, LL1/w;->a:LX1/u;

    if-eqz v15, :cond_16

    iget-boolean v14, v15, LX1/u;->x:Z

    if-eqz v14, :cond_17

    invoke-virtual {v15}, LX1/u;->k()V

    goto :goto_e

    :cond_16
    invoke-static {v5}, LM1/b;->c(Ljava/lang/String;)V

    :cond_17
    :goto_e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    iget-object v15, v8, LL1/w;->c:LL1/a0;

    move-object/from16 v18, v0

    const-string v0, ""

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v19, v3

    iget-object v3, v7, LJ1/d;->a:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ1/y;

    iget-object v14, v3, LJ1/y;->a:LJ1/H;

    if-nez v14, :cond_18

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    goto :goto_10

    :cond_18
    move-object/from16 v20, v5

    iget v5, v14, LJ1/H;->a:F

    move/from16 v21, v6

    iget v6, v14, LJ1/H;->b:F

    move-object/from16 v22, v7

    iget v7, v14, LJ1/H;->c:F

    add-float/2addr v7, v5

    iget v14, v14, LJ1/H;->d:F

    add-float/2addr v14, v6

    invoke-virtual {v1, v5, v6, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_10
    invoke-virtual {v15, v1}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v5, v3, LJ1/y;->c:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;

    sget-object v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;

    if-ne v5, v6, :cond_19

    iget-object v0, v8, LL1/w;->f:Ljava/lang/String;

    goto :goto_11

    :cond_19
    iget-object v5, v3, LJ1/y;->b:Ljava/lang/String;

    if-eqz v5, :cond_1a

    move-object v0, v5

    :cond_1a
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v9, LL1/B;->m:LV1/c;

    if-nez v5, :cond_1b

    goto :goto_12

    :cond_1b
    iget-object v6, v5, LV1/c;->d:Ljava/util/ArrayList;

    new-instance v7, LV1/a;

    iget v14, v5, LV1/c;->f:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v5, LV1/c;->f:I

    invoke-direct {v7, v14, v1, v0}, LV1/a;-><init>(ILandroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    iget v0, v3, LJ1/y;->d:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, v3, LJ1/y;->d:I

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13

    :cond_1c
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_13
    move-object/from16 v1, p1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    goto/16 :goto_f

    :cond_1d
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v5, v8, LL1/w;->d:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v8, LL1/w;->e:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v9, LL1/B;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    iget v6, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->value:I

    new-instance v7, LJ1/m;

    invoke-direct {v7}, LJ1/m;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v7, LJ1/m;->b:J

    new-instance v13, LJ1/r;

    invoke-direct {v13}, LJ1/r;-><init>()V

    iput-object v13, v7, LJ1/m;->a:Ljava/lang/Object;

    if-nez v6, :cond_1e

    sget-object v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    const/4 v7, 0x1

    goto :goto_15

    :cond_1e
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v5, 0x2

    if-ne v6, v5, :cond_20

    sget-object v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_15

    :cond_20
    const/4 v5, 0x0

    :goto_15
    iput-object v5, v13, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    sget-object v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v5, v13, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    const/4 v5, 0x5

    iput v5, v13, LJ1/r;->e:I

    new-instance v5, LJ1/n;

    invoke-direct {v5}, LJ1/n;-><init>()V

    int-to-long v13, v10

    iput-wide v13, v5, LJ1/n;->b:J

    iput-object v0, v5, LJ1/n;->c:Ljava/lang/String;

    sget v6, LM1/c;->a:I

    iput-object v3, v5, LJ1/n;->a:Ljava/util/List;

    iget-object v3, v8, LL1/w;->h:LK1/a;

    invoke-virtual {v15, v11, v3, v5}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_21
    const/4 v7, 0x1

    move/from16 v6, v21

    :goto_16
    move-object/from16 v1, p1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v22

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_22
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    const/4 v7, 0x1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_17

    :cond_23
    sget-object v0, LL1/B;->r:LL1/z;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x29b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, LL1/B;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_17
    move-object/from16 v1, p1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_24
    if-nez v6, :cond_25

    const v0, 0x7f130166

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gleams selections found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
