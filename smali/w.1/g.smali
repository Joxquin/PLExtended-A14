.class public final Lw/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv/g;

.field public b:Z

.field public c:Z

.field public final d:Lv/g;

.field public final e:Ljava/util/ArrayList;

.field public f:Landroidx/constraintlayout/widget/e;

.field public final g:Lw/b;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lv/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw/g;->b:Z

    iput-boolean v0, p0, Lw/g;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/g;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw/g;->f:Landroidx/constraintlayout/widget/e;

    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    iput-object v0, p0, Lw/g;->g:Lw/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/g;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lw/g;->a:Lv/g;

    iput-object p1, p0, Lw/g;->d:Lv/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V
    .locals 9

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lw/k;

    if-nez p3, :cond_a

    iget-object p3, p0, Lw/g;->a:Lv/g;

    iget-object v0, p3, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eq p1, v0, :cond_a

    iget-object p3, p3, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-ne p1, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Lw/k;

    invoke-direct {p5, p1}, Lw/k;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lw/k;

    iget-object p3, p5, Lw/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_0

    :cond_3
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    if-ne p2, v7, :cond_7

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_2

    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_3

    :cond_8
    iget-object p3, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_4

    :cond_9
    if-ne p2, v7, :cond_a

    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz p3, :cond_a

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lv/g;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/f;

    iget-object v3, v2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v9, 0x1

    aget-object v3, v3, v9

    iget v6, v2, Lv/f;->j0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    iput-boolean v9, v2, Lv/f;->a:Z

    goto :goto_0

    :cond_0
    iget v6, v2, Lv/f;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x2

    if-gez v7, :cond_1

    if-ne v5, v8, :cond_1

    iput v11, v2, Lv/f;->s:I

    :cond_1
    iget v7, v2, Lv/f;->A:F

    cmpg-float v12, v7, v10

    if-gez v12, :cond_2

    if-ne v3, v8, :cond_2

    iput v11, v2, Lv/f;->t:I

    :cond_2
    iget v12, v2, Lv/f;->Z:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x3

    if-lez v12, :cond_8

    if-ne v5, v8, :cond_4

    if-eq v3, v13, :cond_3

    if-ne v3, v14, :cond_4

    :cond_3
    iput v15, v2, Lv/f;->s:I

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_6

    if-eq v5, v13, :cond_5

    if-ne v5, v14, :cond_6

    :cond_5
    iput v15, v2, Lv/f;->t:I

    goto :goto_1

    :cond_6
    if-ne v5, v8, :cond_8

    if-ne v3, v8, :cond_8

    iget v12, v2, Lv/f;->s:I

    if-nez v12, :cond_7

    iput v15, v2, Lv/f;->s:I

    :cond_7
    iget v12, v2, Lv/f;->t:I

    if-nez v12, :cond_8

    iput v15, v2, Lv/f;->t:I

    :cond_8
    :goto_1
    iget-object v12, v2, Lv/f;->M:Lv/d;

    iget-object v10, v2, Lv/f;->K:Lv/d;

    if-ne v5, v8, :cond_a

    iget v4, v2, Lv/f;->s:I

    if-ne v4, v9, :cond_a

    iget-object v4, v10, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_9

    iget-object v4, v12, Lv/d;->f:Lv/d;

    if-nez v4, :cond_a

    :cond_9
    move-object v5, v13

    :cond_a
    iget-object v4, v2, Lv/f;->N:Lv/d;

    iget-object v11, v2, Lv/f;->L:Lv/d;

    if-ne v3, v8, :cond_c

    iget v15, v2, Lv/f;->t:I

    if-ne v15, v9, :cond_c

    iget-object v15, v11, Lv/d;->f:Lv/d;

    if-eqz v15, :cond_b

    iget-object v15, v4, Lv/d;->f:Lv/d;

    if-nez v15, :cond_c

    :cond_b
    move-object v15, v13

    goto :goto_2

    :cond_c
    move-object v15, v3

    :goto_2
    iget-object v3, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Lv/f;->s:I

    iput v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    iget-object v3, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iput-object v15, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v1

    iget v1, v2, Lv/f;->t:I

    iput v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_d

    if-eq v5, v14, :cond_d

    if-ne v5, v13, :cond_e

    :cond_d
    if-eq v15, v3, :cond_22

    if-eq v15, v14, :cond_22

    if-ne v15, v13, :cond_e

    goto/16 :goto_4

    :cond_e
    const/high16 v10, 0x3f000000    # 0.5f

    iget-object v4, v0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v11, v2, Lv/f;->S:[Lv/d;

    if-ne v5, v8, :cond_16

    if-eq v15, v13, :cond_f

    if-ne v15, v14, :cond_16

    :cond_f
    const/4 v12, 0x3

    if-ne v9, v12, :cond_11

    if-ne v15, v13, :cond_10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_10
    invoke-virtual {v2}, Lv/f;->l()I

    move-result v8

    int-to-float v1, v8

    iget v3, v2, Lv/f;->Z:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v10

    float-to-int v6, v1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v12, 0x1

    iput-boolean v12, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_11
    const/4 v12, 0x1

    if-ne v9, v12, :cond_12

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto/16 :goto_7

    :cond_12
    const/4 v12, 0x2

    if-ne v9, v12, :cond_14

    const/4 v12, 0x0

    aget-object v10, v4, v12

    if-eq v10, v14, :cond_13

    if-ne v10, v3, :cond_16

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v6, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v8

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v10, 0x1

    iput-boolean v10, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_14
    const/4 v12, 0x0

    aget-object v10, v11, v12

    iget-object v10, v10, Lv/d;->f:Lv/d;

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    aget-object v12, v11, v10

    iget-object v10, v12, Lv/d;->f:Lv/d;

    if-nez v10, :cond_16

    :cond_15
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_16
    if-ne v15, v8, :cond_1f

    if-eq v5, v13, :cond_17

    if-ne v5, v14, :cond_1f

    :cond_17
    const/4 v10, 0x3

    if-ne v1, v10, :cond_1a

    if-ne v5, v13, :cond_18

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_18
    invoke-virtual {v2}, Lv/f;->r()I

    move-result v6

    iget v1, v2, Lv/f;->Z:F

    iget v3, v2, Lv/f;->a0:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v3, v1

    :cond_19
    int-to-float v3, v6

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v8, v3

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v10, 0x1

    iput-boolean v10, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_1a
    const/4 v10, 0x1

    if-ne v1, v10, :cond_1b

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto/16 :goto_7

    :cond_1b
    const/4 v10, 0x2

    if-ne v1, v10, :cond_1d

    const/4 v10, 0x1

    aget-object v11, v4, v10

    if-eq v11, v14, :cond_1c

    if-ne v11, v3, :cond_1f

    :cond_1c
    invoke-virtual {v2}, Lv/f;->r()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v7, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v7, v1

    float-to-int v8, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_1d
    move v3, v10

    aget-object v10, v11, v3

    iget-object v3, v10, Lv/d;->f:Lv/d;

    if-eqz v3, :cond_1e

    const/4 v3, 0x3

    aget-object v3, v11, v3

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_1f

    :cond_1e
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_1f
    const/4 v3, 0x1

    if-ne v5, v8, :cond_25

    if-ne v15, v8, :cond_25

    if-eq v9, v3, :cond_21

    if-ne v1, v3, :cond_20

    goto :goto_3

    :cond_20
    const/4 v5, 0x2

    if-ne v1, v5, :cond_25

    if-ne v9, v5, :cond_25

    const/4 v1, 0x0

    aget-object v1, v4, v1

    if-ne v1, v14, :cond_25

    aget-object v1, v4, v3

    if-ne v1, v14, :cond_25

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v6, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    add-float/2addr v7, v1

    float-to-int v8, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lv/f;->a:Z

    goto/16 :goto_7

    :cond_21
    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    iput v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto :goto_7

    :cond_22
    :goto_4
    invoke-virtual {v2}, Lv/f;->r()I

    move-result v1

    if-ne v5, v3, :cond_23

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v1

    iget v5, v10, Lv/d;->g:I

    sub-int/2addr v1, v5

    iget v5, v12, Lv/d;->g:I

    sub-int/2addr v1, v5

    move v6, v1

    move-object v5, v14

    goto :goto_5

    :cond_23
    move v6, v1

    :goto_5
    invoke-virtual {v2}, Lv/f;->l()I

    move-result v1

    if-ne v15, v3, :cond_24

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v1

    iget v3, v11, Lv/d;->g:I

    sub-int/2addr v1, v3

    iget v3, v4, Lv/d;->g:I

    sub-int/2addr v1, v3

    move v8, v1

    move-object v7, v14

    goto :goto_6

    :cond_24
    move v8, v1

    move-object v7, v15

    :goto_6
    move-object/from16 v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lv/f;->a:Z

    :cond_25
    :goto_7
    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_26
    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lw/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lw/g;->d:Lv/g;

    iget-object v2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/d;->f()V

    iget-object v2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/e;->f()V

    iget-object v2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/f;

    instance-of v7, v4, Lv/j;

    if-eqz v7, :cond_1

    new-instance v5, Lw/j;

    invoke-direct {v5, v4}, Lw/j;-><init>(Lv/f;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lv/f;->y()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Lv/f;->b:Lw/d;

    if-nez v7, :cond_2

    new-instance v7, Lw/d;

    invoke-direct {v7, v6, v4}, Lw/d;-><init>(ILv/f;)V

    iput-object v7, v4, Lv/f;->b:Lw/d;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, Lv/f;->b:Lw/d;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Lv/f;->z()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, Lv/f;->c:Lw/d;

    if-nez v6, :cond_5

    new-instance v6, Lw/d;

    invoke-direct {v6, v5, v4}, Lw/d;-><init>(ILv/f;)V

    iput-object v6, v4, Lv/f;->c:Lw/d;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, Lv/f;->c:Lw/d;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, Lv/l;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/c;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/c;-><init>(Lv/f;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/f;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-ne v3, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->d()V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lw/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lw/g;->a:Lv/g;

    iget-object v2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {p0, v2, v6, v0}, Lw/g;->e(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V

    iget-object v1, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {p0, v1, v5, v0}, Lw/g;->e(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, Lw/g;->b:Z

    return-void
.end method

.method public final d(Lv/g;I)I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v1, v1, Lw/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    if-ge v4, v3, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw/k;

    iget-object v9, v9, Lw/k;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    instance-of v10, v9, Lw/d;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Lw/d;

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    if-eq v10, v2, :cond_2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_1
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-nez v10, :cond_2

    :goto_1
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_6

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    :goto_2
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-nez v2, :cond_4

    iget-object v11, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    goto :goto_3

    :cond_4
    iget-object v11, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    :goto_3
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/f;->j()J

    move-result-wide v13

    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v15, v7, v8}, Lw/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v10

    invoke-static {v12, v7, v8}, Lw/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v7

    sub-long/2addr v10, v13

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    move-object/from16 p0, v1

    neg-int v1, v0

    move/from16 v16, v3

    move/from16 v17, v4

    int-to-long v3, v1

    cmp-long v1, v10, v3

    if-ltz v1, :cond_5

    int-to-long v0, v0

    add-long/2addr v10, v0

    :cond_5
    neg-long v0, v7

    sub-long/2addr v0, v13

    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    cmp-long v7, v0, v3

    if-ltz v7, :cond_6

    sub-long/2addr v0, v3

    :cond_6
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-nez v2, :cond_7

    iget v3, v3, Lv/f;->g0:F

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget v3, v3, Lv/f;->h0:F

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, -0x40800000    # -1.0f

    :goto_4
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v4, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v3

    long-to-float v1, v10

    sub-float v4, v7, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_5

    :cond_9
    const-wide/16 v0, 0x0

    :goto_5
    long-to-float v0, v0

    mul-float v1, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-long v8, v1

    invoke-static {v7, v3, v0, v4}, Lw/f;->a(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v8, v13

    add-long/2addr v8, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    add-long/2addr v0, v8

    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v3, v3

    sub-long v7, v0, v3

    goto :goto_6

    :cond_a
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v10, :cond_b

    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-static {v15, v0, v1}, Lw/k;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v0

    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v3, v3

    add-long/2addr v3, v13

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Lw/k;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v0

    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v13

    neg-long v0, v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_6

    :cond_c
    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/f;->j()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    sub-long v7, v3, v0

    :goto_6
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-int/lit8 v4, v17, 0x1

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v5

    return v0
.end method

.method public final e(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V
    .locals 9

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/e;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/e;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lw/k;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    iget-object v0, p0, Lw/g;->g:Lw/b;

    iput-object p2, v0, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v0, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v0, Lw/b;->c:I

    iput p5, v0, Lw/b;->d:I

    iget-object p0, p0, Lw/g;->f:Landroidx/constraintlayout/widget/e;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget p0, v0, Lw/b;->e:I

    invoke-virtual {p1, p0}, Lv/f;->O(I)V

    iget p0, v0, Lw/b;->f:I

    invoke-virtual {p1, p0}, Lv/f;->L(I)V

    iget-boolean p0, v0, Lw/b;->h:Z

    iput-boolean p0, p1, Lv/f;->F:Z

    iget p0, v0, Lw/b;->g:I

    iput p0, p1, Lv/f;->d0:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lv/f;->F:Z

    return-void
.end method

.method public final g()V
    .locals 14

    iget-object v0, p0, Lw/g;->a:Lv/g;

    iget-object v0, v0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/f;

    iget-boolean v2, v1, Lv/f;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Lv/f;->s:I

    iget v4, v1, Lv/f;->t:I

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v6, :cond_3

    if-ne v8, v11, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    if-ne v10, v11, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v7, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v12, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v5, :cond_6

    if-eqz v12, :cond_6

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v13

    move-object v6, v13

    invoke-virtual/range {v2 .. v7}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iput-boolean v9, v1, Lv/f;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v13

    invoke-virtual/range {v2 .. v7}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    if-ne v10, v11, :cond_7

    iget-object v2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iput-boolean v9, v1, Lv/f;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v13

    invoke-virtual/range {v2 .. v7}, Lw/g;->f(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    if-ne v8, v11, :cond_9

    iget-object v2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->r()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iput-boolean v9, v1, Lv/f;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, Lv/f;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    if-eqz v2, :cond_0

    iget v1, v1, Lv/f;->d0:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
