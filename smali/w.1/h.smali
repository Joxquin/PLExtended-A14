.class public final Lw/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    sput-object v0, Lw/h;->a:Lw/b;

    return-void
.end method

.method public static a(Lv/f;)Z
    .locals 9

    iget-object v0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v4, p0, Lv/f;->W:Lv/f;

    if-eqz v4, :cond_0

    check-cast v4, Lv/g;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v4, :cond_1

    iget-object v6, v4, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v1

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    :cond_2
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    if-eq v2, v5, :cond_5

    invoke-virtual {p0}, Lv/f;->B()Z

    move-result v8

    if-nez v8, :cond_5

    if-eq v2, v6, :cond_5

    if-ne v2, v4, :cond_3

    iget v8, p0, Lv/f;->s:I

    if-nez v8, :cond_3

    iget v8, p0, Lv/f;->Z:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_3

    invoke-virtual {p0, v1}, Lv/f;->u(I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    if-ne v2, v4, :cond_4

    iget v2, p0, Lv/f;->s:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lv/f;->r()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lv/f;->v(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v5, :cond_8

    invoke-virtual {p0}, Lv/f;->C()Z

    move-result v5

    if-nez v5, :cond_8

    if-eq v0, v6, :cond_8

    if-ne v0, v4, :cond_6

    iget v5, p0, Lv/f;->t:I

    if-nez v5, :cond_6

    iget v5, p0, Lv/f;->Z:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    invoke-virtual {p0, v3}, Lv/f;->u(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    if-ne v0, v4, :cond_7

    iget v0, p0, Lv/f;->t:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lv/f;->l()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lv/f;->v(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, Lv/f;->Z:F

    cmpl-float p0, p0, v7

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v0, Lv/f;->n:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    instance-of v3, v0, Lv/g;

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lv/f;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lw/h;->a(Lv/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lw/b;

    invoke-direct {v3}, Lw/b;-><init>()V

    invoke-static {v0, v1, v3}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v4

    invoke-virtual {v3}, Lv/d;->d()I

    move-result v5

    invoke-virtual {v4}, Lv/d;->d()I

    move-result v6

    iget-object v7, v3, Lv/d;->a:Ljava/util/HashSet;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lv/d;->c:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv/d;

    iget-object v13, v7, Lv/d;->d:Lv/f;

    add-int/lit8 v14, p0, 0x1

    invoke-static {v13}, Lw/h;->a(Lv/f;)Z

    move-result v15

    invoke-virtual {v13}, Lv/f;->A()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    new-instance v11, Lw/b;

    invoke-direct {v11}, Lw/b;-><init>()V

    invoke-static {v13, v1, v11}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_2
    iget-object v11, v13, Lv/f;->K:Lv/d;

    iget-object v9, v13, Lv/f;->M:Lv/d;

    if-ne v7, v11, :cond_3

    iget-object v10, v9, Lv/d;->f:Lv/d;

    if-eqz v10, :cond_3

    iget-boolean v10, v10, Lv/d;->c:Z

    if-nez v10, :cond_4

    :cond_3
    if-ne v7, v9, :cond_5

    iget-object v10, v11, Lv/d;->f:Lv/d;

    if-eqz v10, :cond_5

    iget-boolean v10, v10, Lv/d;->c:Z

    if-eqz v10, :cond_5

    :cond_4
    move-object/from16 v17, v3

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v17, v3

    move v10, v12

    :goto_1
    iget-object v3, v13, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v12

    if-ne v3, v8, :cond_8

    if-eqz v15, :cond_6

    goto :goto_2

    :cond_6
    if-ne v3, v8, :cond_c

    iget v3, v13, Lv/f;->w:I

    if-ltz v3, :cond_c

    iget v3, v13, Lv/f;->v:I

    if-ltz v3, :cond_c

    iget v3, v13, Lv/f;->j0:I

    const/16 v7, 0x8

    if-eq v3, v7, :cond_7

    iget v3, v13, Lv/f;->s:I

    if-nez v3, :cond_c

    iget v3, v13, Lv/f;->Z:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_c

    :cond_7
    invoke-virtual {v13}, Lv/f;->y()Z

    move-result v3

    if-nez v3, :cond_c

    iget-boolean v3, v13, Lv/f;->H:Z

    if-nez v3, :cond_c

    if-eqz v10, :cond_c

    invoke-virtual {v13}, Lv/f;->y()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v14, v0, v1, v13, v2}, Lw/h;->d(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;Z)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v13}, Lv/f;->A()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    if-ne v7, v11, :cond_a

    iget-object v3, v9, Lv/d;->f:Lv/d;

    if-nez v3, :cond_a

    invoke-virtual {v11}, Lv/d;->e()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v13}, Lv/f;->r()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v13, v3, v7}, Lv/f;->J(II)V

    invoke-static {v14, v13, v1, v2}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_3

    :cond_a
    if-ne v7, v9, :cond_b

    iget-object v3, v11, Lv/d;->f:Lv/d;

    if-nez v3, :cond_b

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v13}, Lv/f;->r()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v13, v7, v3}, Lv/f;->J(II)V

    invoke-static {v14, v13, v1, v2}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v13}, Lv/f;->y()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v14, v13, v1, v2}, Lw/h;->c(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    :cond_c
    :goto_3
    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_d
    instance-of v3, v0, Lv/j;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iget-object v3, v4, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    iget-boolean v4, v4, Lv/d;->c:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v5, v4, Lv/d;->d:Lv/f;

    const/4 v7, 0x1

    add-int/lit8 v9, p0, 0x1

    invoke-static {v5}, Lw/h;->a(Lv/f;)Z

    move-result v7

    invoke-virtual {v5}, Lv/f;->A()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v7, :cond_10

    new-instance v10, Lw/b;

    invoke-direct {v10}, Lw/b;-><init>()V

    invoke-static {v5, v1, v10}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_10
    iget-object v10, v5, Lv/f;->K:Lv/d;

    iget-object v11, v5, Lv/f;->M:Lv/d;

    if-ne v4, v10, :cond_11

    iget-object v13, v11, Lv/d;->f:Lv/d;

    if-eqz v13, :cond_11

    iget-boolean v13, v13, Lv/d;->c:Z

    if-nez v13, :cond_12

    :cond_11
    if-ne v4, v11, :cond_13

    iget-object v13, v10, Lv/d;->f:Lv/d;

    if-eqz v13, :cond_13

    iget-boolean v13, v13, Lv/d;->c:Z

    if-eqz v13, :cond_13

    :cond_12
    const/4 v13, 0x1

    goto :goto_5

    :cond_13
    move v13, v12

    :goto_5
    iget-object v14, v5, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v12

    if-ne v14, v8, :cond_18

    if-eqz v7, :cond_14

    goto :goto_7

    :cond_14
    if-ne v14, v8, :cond_16

    iget v4, v5, Lv/f;->w:I

    if-ltz v4, :cond_16

    iget v4, v5, Lv/f;->v:I

    if-ltz v4, :cond_16

    iget v4, v5, Lv/f;->j0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_15

    iget v4, v5, Lv/f;->s:I

    if-nez v4, :cond_17

    iget v4, v5, Lv/f;->Z:F

    const/4 v14, 0x0

    cmpl-float v4, v4, v14

    if-nez v4, :cond_f

    goto :goto_6

    :cond_15
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v5}, Lv/f;->y()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, Lv/f;->H:Z

    if-nez v4, :cond_f

    if-eqz v13, :cond_f

    invoke-virtual {v5}, Lv/f;->y()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v9, v0, v1, v5, v2}, Lw/h;->d(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;Z)V

    goto :goto_4

    :cond_16
    const/16 v7, 0x8

    :cond_17
    const/4 v14, 0x0

    goto :goto_4

    :cond_18
    :goto_7
    const/16 v7, 0x8

    const/4 v14, 0x0

    invoke-virtual {v5}, Lv/f;->A()Z

    move-result v15

    if-eqz v15, :cond_19

    goto/16 :goto_4

    :cond_19
    if-ne v4, v10, :cond_1a

    iget-object v15, v11, Lv/d;->f:Lv/d;

    if-nez v15, :cond_1a

    invoke-virtual {v10}, Lv/d;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lv/f;->r()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v5, v4, v10}, Lv/f;->J(II)V

    invoke-static {v9, v5, v1, v2}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto/16 :goto_4

    :cond_1a
    if-ne v4, v11, :cond_1b

    iget-object v4, v10, Lv/d;->f:Lv/d;

    if-nez v4, :cond_1b

    invoke-virtual {v11}, Lv/d;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lv/f;->r()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {v5, v10, v4}, Lv/f;->J(II)V

    invoke-static {v9, v5, v1, v2}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto/16 :goto_4

    :cond_1b
    if-eqz v13, :cond_f

    invoke-virtual {v5}, Lv/f;->y()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v9, v5, v1, v2}, Lw/h;->c(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto/16 :goto_4

    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lv/f;->n:Z

    return-void
.end method

.method public static c(ILv/f;Landroidx/constraintlayout/widget/e;Z)V
    .locals 6

    iget v0, p1, Lv/f;->g0:F

    iget-object v1, p1, Lv/f;->K:Lv/d;

    iget-object v2, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p1, Lv/f;->M:Lv/d;

    iget-object v4, v3, Lv/d;->f:Lv/d;

    invoke-virtual {v4}, Lv/d;->d()I

    move-result v4

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lv/f;->r()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_3

    sub-int v3, v0, v1

    :cond_3
    invoke-virtual {p1, v0, v3}, Lv/f;->J(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    return-void
.end method

.method public static d(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;Z)V
    .locals 7

    iget v0, p3, Lv/f;->g0:F

    iget-object v1, p3, Lv/f;->K:Lv/d;

    iget-object v2, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lv/f;->M:Lv/d;

    iget-object v3, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v3}, Lv/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lv/f;->r()I

    move-result v2

    iget v4, p3, Lv/f;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lv/f;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lv/g;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lv/f;->r()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lv/f;->W:Lv/f;

    invoke-virtual {p1}, Lv/f;->r()I

    move-result p1

    :goto_0
    iget v2, p3, Lv/f;->g0:F

    mul-float/2addr v2, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lv/f;->v:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lv/f;->w:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lv/f;->J(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2, p4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    :cond_4
    return-void
.end method

.method public static e(ILv/f;Landroidx/constraintlayout/widget/e;)V
    .locals 6

    iget v0, p1, Lv/f;->h0:F

    iget-object v1, p1, Lv/f;->L:Lv/d;

    iget-object v2, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p1, Lv/f;->N:Lv/d;

    iget-object v4, v3, Lv/d;->f:Lv/d;

    invoke-virtual {v4}, Lv/d;->d()I

    move-result v4

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lv/f;->l()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_3

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_3
    invoke-virtual {p1, v3, v5}, Lv/f;->K(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    return-void
.end method

.method public static f(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;)V
    .locals 7

    iget v0, p3, Lv/f;->h0:F

    iget-object v1, p3, Lv/f;->L:Lv/d;

    iget-object v2, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lv/f;->N:Lv/d;

    iget-object v3, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v3}, Lv/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lv/f;->l()I

    move-result v2

    iget v4, p3, Lv/f;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lv/f;->t:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lv/g;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lv/f;->l()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lv/f;->W:Lv/f;

    invoke-virtual {p1}, Lv/f;->l()I

    move-result p1

    :goto_0
    mul-float v2, v0, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lv/f;->y:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lv/f;->z:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lv/f;->K(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    :cond_4
    return-void
.end method

.method public static g(ILv/f;Landroidx/constraintlayout/widget/e;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lv/f;->o:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    instance-of v2, v0, Lv/g;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lv/f;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lw/h;->a(Lv/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lw/b;

    invoke-direct {v2}, Lw/b;-><init>()V

    invoke-static {v0, v1, v2}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v4

    invoke-virtual {v3}, Lv/d;->d()I

    move-result v5

    iget-object v6, v2, Lv/d;->a:Ljava/util/HashSet;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    if-eqz v6, :cond_d

    iget-boolean v2, v2, Lv/d;->c:Z

    if-eqz v2, :cond_d

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/d;

    iget-object v12, v6, Lv/d;->d:Lv/f;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lw/h;->a(Lv/f;)Z

    move-result v14

    invoke-virtual {v12}, Lv/f;->A()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    new-instance v15, Lw/b;

    invoke-direct {v15}, Lw/b;-><init>()V

    invoke-static {v12, v1, v15}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_3
    iget-object v15, v12, Lv/f;->L:Lv/d;

    iget-object v10, v12, Lv/f;->N:Lv/d;

    if-ne v6, v15, :cond_4

    iget-object v8, v10, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_4

    iget-boolean v8, v8, Lv/d;->c:Z

    if-nez v8, :cond_5

    :cond_4
    if-ne v6, v10, :cond_6

    iget-object v8, v15, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_6

    iget-boolean v8, v8, Lv/d;->c:Z

    if-eqz v8, :cond_6

    :cond_5
    move v8, v11

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    iget-object v9, v12, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v11

    if-ne v9, v7, :cond_9

    if-eqz v14, :cond_7

    goto :goto_2

    :cond_7
    if-ne v9, v7, :cond_2

    iget v6, v12, Lv/f;->z:I

    if-ltz v6, :cond_2

    iget v6, v12, Lv/f;->y:I

    if-ltz v6, :cond_2

    iget v6, v12, Lv/f;->j0:I

    const/16 v9, 0x8

    if-eq v6, v9, :cond_8

    iget v6, v12, Lv/f;->t:I

    if-nez v6, :cond_2

    iget v6, v12, Lv/f;->Z:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_2

    :cond_8
    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, v12, Lv/f;->H:Z

    if-nez v6, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v13, v0, v1, v12}, Lw/h;->f(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;)V

    goto :goto_0

    :cond_9
    :goto_2
    invoke-virtual {v12}, Lv/f;->A()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_0

    :cond_a
    if-ne v6, v15, :cond_b

    iget-object v9, v10, Lv/d;->f:Lv/d;

    if-nez v9, :cond_b

    invoke-virtual {v15}, Lv/d;->e()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v12}, Lv/f;->l()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v12, v6, v8}, Lv/f;->K(II)V

    invoke-static {v13, v12, v1}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_0

    :cond_b
    if-ne v6, v10, :cond_c

    iget-object v6, v15, Lv/d;->f:Lv/d;

    if-nez v6, :cond_c

    invoke-virtual {v10}, Lv/d;->e()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v12}, Lv/f;->l()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v12, v8, v6}, Lv/f;->K(II)V

    invoke-static {v13, v12, v1}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v8, :cond_2

    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v13, v12, v1}, Lw/h;->e(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_0

    :cond_d
    instance-of v2, v0, Lv/j;

    if-eqz v2, :cond_e

    return-void

    :cond_e
    iget-object v2, v3, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_1c

    iget-boolean v3, v3, Lv/d;->c:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    iget-object v4, v3, Lv/d;->d:Lv/f;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v4}, Lw/h;->a(Lv/f;)Z

    move-result v8

    invoke-virtual {v4}, Lv/f;->A()Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    new-instance v9, Lw/b;

    invoke-direct {v9}, Lw/b;-><init>()V

    invoke-static {v4, v1, v9}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_10
    iget-object v9, v4, Lv/f;->L:Lv/d;

    iget-object v10, v4, Lv/f;->N:Lv/d;

    if-ne v3, v9, :cond_11

    iget-object v12, v10, Lv/d;->f:Lv/d;

    if-eqz v12, :cond_11

    iget-boolean v12, v12, Lv/d;->c:Z

    if-nez v12, :cond_12

    :cond_11
    if-ne v3, v10, :cond_13

    iget-object v12, v9, Lv/d;->f:Lv/d;

    if-eqz v12, :cond_13

    iget-boolean v12, v12, Lv/d;->c:Z

    if-eqz v12, :cond_13

    :cond_12
    move v12, v11

    goto :goto_4

    :cond_13
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v4, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v13, v11

    if-ne v13, v7, :cond_18

    if-eqz v8, :cond_14

    goto :goto_6

    :cond_14
    if-ne v13, v7, :cond_16

    iget v3, v4, Lv/f;->z:I

    if-ltz v3, :cond_16

    iget v3, v4, Lv/f;->y:I

    if-ltz v3, :cond_16

    iget v3, v4, Lv/f;->j0:I

    const/16 v8, 0x8

    if-eq v3, v8, :cond_15

    iget v3, v4, Lv/f;->t:I

    if-nez v3, :cond_17

    iget v3, v4, Lv/f;->Z:F

    const/4 v13, 0x0

    cmpl-float v3, v3, v13

    if-nez v3, :cond_f

    goto :goto_5

    :cond_15
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v4}, Lv/f;->z()Z

    move-result v3

    if-nez v3, :cond_f

    iget-boolean v3, v4, Lv/f;->H:Z

    if-nez v3, :cond_f

    if-eqz v12, :cond_f

    invoke-virtual {v4}, Lv/f;->z()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v6, v0, v1, v4}, Lw/h;->f(ILv/f;Landroidx/constraintlayout/widget/e;Lv/f;)V

    goto :goto_3

    :cond_16
    const/16 v8, 0x8

    :cond_17
    const/4 v13, 0x0

    goto :goto_3

    :cond_18
    :goto_6
    const/16 v8, 0x8

    const/4 v13, 0x0

    invoke-virtual {v4}, Lv/f;->A()Z

    move-result v14

    if-eqz v14, :cond_19

    goto/16 :goto_3

    :cond_19
    if-ne v3, v9, :cond_1a

    iget-object v14, v10, Lv/d;->f:Lv/d;

    if-nez v14, :cond_1a

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lv/f;->l()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v3, v9}, Lv/f;->K(II)V

    invoke-static {v6, v4, v1}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_3

    :cond_1a
    if-ne v3, v10, :cond_1b

    iget-object v3, v9, Lv/d;->f:Lv/d;

    if-nez v3, :cond_1b

    invoke-virtual {v10}, Lv/d;->e()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v4}, Lv/f;->l()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v4, v9, v3}, Lv/f;->K(II)V

    invoke-static {v6, v4, v1}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_3

    :cond_1b
    if-eqz v12, :cond_f

    invoke-virtual {v4}, Lv/f;->z()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v6, v4, v1}, Lw/h;->e(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_3

    :cond_1c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    iget-object v3, v2, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_22

    iget-boolean v3, v2, Lv/d;->c:Z

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v3

    iget-object v2, v2, Lv/d;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v5, v4, Lv/d;->d:Lv/f;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v5}, Lw/h;->a(Lv/f;)Z

    move-result v8

    invoke-virtual {v5}, Lv/f;->A()Z

    move-result v9

    if-eqz v9, :cond_1e

    if-eqz v8, :cond_1e

    new-instance v9, Lw/b;

    invoke-direct {v9}, Lw/b;-><init>()V

    invoke-static {v5, v1, v9}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_1e
    iget-object v9, v5, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v11

    if-ne v9, v7, :cond_1f

    if-eqz v8, :cond_1d

    :cond_1f
    invoke-virtual {v5}, Lv/f;->A()Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_7

    :cond_20
    iget-object v8, v5, Lv/f;->O:Lv/d;

    if-ne v4, v8, :cond_1d

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    add-int/2addr v4, v3

    iget-boolean v9, v5, Lv/f;->F:Z

    if-nez v9, :cond_21

    goto :goto_8

    :cond_21
    iget v9, v5, Lv/f;->d0:I

    sub-int v9, v4, v9

    iget v10, v5, Lv/f;->Y:I

    add-int/2addr v10, v9

    iput v9, v5, Lv/f;->c0:I

    iget-object v12, v5, Lv/f;->L:Lv/d;

    invoke-virtual {v12, v9}, Lv/d;->l(I)V

    iget-object v9, v5, Lv/f;->N:Lv/d;

    invoke-virtual {v9, v10}, Lv/d;->l(I)V

    invoke-virtual {v8, v4}, Lv/d;->l(I)V

    iput-boolean v11, v5, Lv/f;->m:Z

    :goto_8
    invoke-static {v6, v5, v1}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto :goto_7

    :cond_22
    iput-boolean v11, v0, Lv/f;->o:Z

    return-void
.end method
