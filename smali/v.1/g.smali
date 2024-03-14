.class public final Lv/g;
.super Lv/o;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:[Lv/c;

.field public E0:[Lv/c;

.field public F0:I

.field public G0:Z

.field public H0:Z

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public K0:Ljava/lang/ref/WeakReference;

.field public L0:Ljava/lang/ref/WeakReference;

.field public final M0:Ljava/util/HashSet;

.field public final N0:Lw/b;

.field public final t0:Lw/c;

.field public final u0:Lw/g;

.field public v0:I

.field public w0:Landroidx/constraintlayout/widget/e;

.field public x0:Z

.field public final y0:Lt/f;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lv/o;-><init>()V

    new-instance v0, Lw/c;

    invoke-direct {v0, p0}, Lw/c;-><init>(Lv/g;)V

    iput-object v0, p0, Lv/g;->t0:Lw/c;

    new-instance v0, Lw/g;

    invoke-direct {v0, p0}, Lw/g;-><init>(Lv/g;)V

    iput-object v0, p0, Lv/g;->u0:Lw/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv/g;->x0:Z

    new-instance v2, Lt/f;

    invoke-direct {v2}, Lt/f;-><init>()V

    iput-object v2, p0, Lv/g;->y0:Lt/f;

    iput v1, p0, Lv/g;->B0:I

    iput v1, p0, Lv/g;->C0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lv/c;

    iput-object v3, p0, Lv/g;->D0:[Lv/c;

    new-array v2, v2, [Lv/c;

    iput-object v2, p0, Lv/g;->E0:[Lv/c;

    const/16 v2, 0x101

    iput v2, p0, Lv/g;->F0:I

    iput-boolean v1, p0, Lv/g;->G0:Z

    iput-boolean v1, p0, Lv/g;->H0:Z

    iput-object v0, p0, Lv/g;->I0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/g;->K0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lv/g;->M0:Ljava/util/HashSet;

    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    iput-object v0, p0, Lv/g;->N0:Lw/b;

    return-void
.end method

.method public static V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lv/f;->j0:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    instance-of v0, p0, Lv/j;

    if-nez v0, :cond_14

    instance-of v0, p0, Lv/a;

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, v2

    iput-object v1, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Lv/f;->r()I

    move-result v0

    iput v0, p2, Lw/b;->c:I

    invoke-virtual {p0}, Lv/f;->l()I

    move-result v0

    iput v0, p2, Lw/b;->d:I

    iput-boolean v2, p2, Lw/b;->i:Z

    iput v2, p2, Lw/b;->j:I

    iget-object v0, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v4, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Lv/f;->Z:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    if-eqz v3, :cond_5

    iget v6, p0, Lv/f;->Z:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lv/f;->u(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lv/f;->s:I

    if-nez v8, :cond_7

    if-nez v5, :cond_7

    iput-object v6, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_6

    iget v0, p0, Lv/f;->t:I

    if-nez v0, :cond_6

    iput-object v7, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    move v0, v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Lv/f;->u(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, p0, Lv/f;->t:I

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    iput-object v6, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_8

    iget v3, p0, Lv/f;->s:I

    if-nez v3, :cond_8

    iput-object v7, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_8
    move v3, v2

    :cond_9
    invoke-virtual {p0}, Lv/f;->B()Z

    move-result v8

    if-eqz v8, :cond_a

    iput-object v7, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v2

    :cond_a
    invoke-virtual {p0}, Lv/f;->C()Z

    move-result v8

    if-eqz v8, :cond_b

    iput-object v7, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v2

    :cond_b
    const/4 v8, 0x4

    iget-object v9, p0, Lv/f;->u:[I

    if-eqz v5, :cond_e

    aget v5, v9, v2

    if-ne v5, v8, :cond_c

    iput-object v7, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    iget-object v3, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_d

    iget v3, p2, Lw/b;->d:I

    goto :goto_4

    :cond_d
    iput-object v6, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget v3, p2, Lw/b;->f:I

    :goto_4
    iput-object v7, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, p0, Lv/f;->Z:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lw/b;->c:I

    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    aget v3, v9, v1

    if-ne v3, v8, :cond_f

    iput-object v7, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget-object v0, p2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_10

    iget v0, p2, Lw/b;->c:I

    goto :goto_6

    :cond_10
    iput-object v6, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget v0, p2, Lw/b;->e:I

    :goto_6
    iput-object v7, p2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v3, p0, Lv/f;->a0:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    int-to-float v0, v0

    iget v3, p0, Lv/f;->Z:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Lw/b;->d:I

    goto :goto_7

    :cond_11
    iget v3, p0, Lv/f;->Z:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p2, Lw/b;->d:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget p1, p2, Lw/b;->e:I

    invoke-virtual {p0, p1}, Lv/f;->O(I)V

    iget p1, p2, Lw/b;->f:I

    invoke-virtual {p0, p1}, Lv/f;->L(I)V

    iget-boolean p1, p2, Lw/b;->h:Z

    iput-boolean p1, p0, Lv/f;->F:Z

    iget p1, p2, Lw/b;->g:I

    iput p1, p0, Lv/f;->d0:I

    if-lez p1, :cond_13

    goto :goto_8

    :cond_13
    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lv/f;->F:Z

    iput v2, p2, Lw/b;->j:I

    return-void

    :cond_14
    :goto_9
    iput v2, p2, Lw/b;->e:I

    iput v2, p2, Lw/b;->f:I

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    iget-object v0, p0, Lv/g;->y0:Lt/f;

    invoke-virtual {v0}, Lt/f;->s()V

    const/4 v0, 0x0

    iput v0, p0, Lv/g;->z0:I

    iput v0, p0, Lv/g;->A0:I

    invoke-super {p0}, Lv/o;->D()V

    return-void
.end method

.method public final P(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lv/f;->P(ZZ)V

    iget-object v0, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/f;

    invoke-virtual {v2, p1, p2}, Lv/f;->P(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Lv/f;->b0:I

    iput v2, v1, Lv/f;->c0:I

    iput-boolean v2, v1, Lv/g;->G0:Z

    iput-boolean v2, v1, Lv/g;->H0:Z

    iget-object v0, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v8, v5, v2

    iget v9, v1, Lv/g;->v0:I

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v13, v1, Lv/f;->L:Lv/d;

    iget-object v14, v1, Lv/f;->K:Lv/d;

    if-nez v9, :cond_1d

    iget v9, v1, Lv/g;->F0:I

    invoke-static {v9, v6}, Lv/m;->b(II)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v1, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    aget-object v15, v5, v2

    aget-object v12, v5, v6

    invoke-virtual/range {p0 .. p0}, Lv/f;->F()V

    iget-object v6, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v18, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lv/f;

    invoke-virtual/range {v19 .. v19}, Lv/f;->F()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v4, v1, Lv/g;->x0:Z

    if-ne v15, v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v15

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v15}, Lv/f;->J(II)V

    goto :goto_1

    :cond_1
    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lv/d;->l(I)V

    iput v5, v1, Lv/f;->b0:I

    :goto_1
    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_2
    const/high16 v21, 0x3f000000    # 0.5f

    if-ge v15, v2, :cond_7

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v14

    move-object/from16 v14, v22

    check-cast v14, Lv/f;

    move/from16 v22, v0

    instance-of v0, v14, Lv/j;

    if-eqz v0, :cond_5

    check-cast v14, Lv/j;

    iget v0, v14, Lv/j;->w0:I

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    iget v0, v14, Lv/j;->t0:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    invoke-virtual {v14, v0}, Lv/j;->R(I)V

    goto :goto_3

    :cond_2
    iget v0, v14, Lv/j;->u0:I

    if-eq v0, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lv/f;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v0

    iget v5, v14, Lv/j;->u0:I

    sub-int/2addr v0, v5

    invoke-virtual {v14, v0}, Lv/j;->R(I)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lv/f;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v14, Lv/j;->s0:F

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v14, v0}, Lv/j;->R(I)V

    :cond_4
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v24, v7

    instance-of v0, v14, Lv/a;

    if-eqz v0, :cond_6

    check-cast v14, Lv/a;

    invoke-virtual {v14}, Lv/a;->T()I

    move-result v0

    if-nez v0, :cond_6

    const/16 v20, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v22

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    goto :goto_2

    :cond_7
    move/from16 v22, v0

    move-object/from16 v24, v7

    move-object/from16 v23, v14

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_9

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/f;

    instance-of v7, v5, Lv/j;

    if-eqz v7, :cond_8

    check-cast v5, Lv/j;

    iget v7, v5, Lv/j;->w0:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_8

    const/4 v7, 0x0

    invoke-static {v7, v5, v9, v4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    invoke-static {v7, v1, v9, v4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    if-eqz v20, :cond_b

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_b

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/f;

    instance-of v7, v5, Lv/a;

    if-eqz v7, :cond_a

    check-cast v5, Lv/a;

    invoke-virtual {v5}, Lv/a;->T()I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Lv/a;->S()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    invoke-static {v7, v5, v9, v4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    if-ne v12, v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Lv/f;->K(II)V

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lv/d;->l(I)V

    iput v5, v1, Lv/f;->c0:I

    :goto_8
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v5, v2, :cond_12

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv/f;

    instance-of v14, v12, Lv/j;

    if-eqz v14, :cond_10

    check-cast v12, Lv/j;

    iget v14, v12, Lv/j;->w0:I

    if-nez v14, :cond_11

    iget v0, v12, Lv/j;->t0:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_d

    invoke-virtual {v12, v0}, Lv/j;->R(I)V

    goto :goto_a

    :cond_d
    iget v0, v12, Lv/j;->u0:I

    if-eq v0, v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Lv/f;->C()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v0

    iget v14, v12, Lv/j;->u0:I

    sub-int/2addr v0, v14

    invoke-virtual {v12, v0}, Lv/j;->R(I)V

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lv/f;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v12, Lv/j;->s0:F

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v0, v14

    add-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v12, v0}, Lv/j;->R(I)V

    :cond_f
    :goto_a
    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    instance-of v14, v12, Lv/a;

    if-eqz v14, :cond_11

    check-cast v12, Lv/a;

    invoke-virtual {v12}, Lv/a;->T()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_11

    const/4 v7, 0x1

    :cond_11
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_14

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/f;

    instance-of v12, v5, Lv/j;

    if-eqz v12, :cond_13

    check-cast v5, Lv/j;

    iget v12, v5, Lv/j;->w0:I

    if-nez v12, :cond_13

    const/4 v12, 0x1

    invoke-static {v12, v5, v9}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    invoke-static {v5, v1, v9}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    if-eqz v7, :cond_16

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/f;

    instance-of v7, v5, Lv/a;

    if-eqz v7, :cond_15

    check-cast v5, Lv/a;

    invoke-virtual {v5}, Lv/a;->T()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_15

    invoke-virtual {v5}, Lv/a;->S()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {v12, v5, v9}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1a

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/f;

    invoke-virtual {v5}, Lv/f;->A()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v5}, Lw/h;->a(Lv/f;)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lw/h;->a:Lw/b;

    invoke-static {v5, v9, v7}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    instance-of v7, v5, Lv/j;

    if-eqz v7, :cond_18

    move-object v7, v5

    check-cast v7, Lv/j;

    iget v7, v7, Lv/j;->w0:I

    if-nez v7, :cond_17

    const/4 v7, 0x0

    invoke-static {v7, v5, v9}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    goto :goto_f

    :cond_17
    const/4 v7, 0x0

    invoke-static {v7, v5, v9, v4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_f

    :cond_18
    const/4 v7, 0x0

    invoke-static {v7, v5, v9, v4}, Lw/h;->b(ILv/f;Landroidx/constraintlayout/widget/e;Z)V

    invoke-static {v7, v5, v9}, Lw/h;->g(ILv/f;Landroidx/constraintlayout/widget/e;)V

    :cond_19
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_1e

    iget-object v2, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/f;

    invoke-virtual {v2}, Lv/f;->A()Z

    move-result v4

    if-eqz v4, :cond_1c

    instance-of v4, v2, Lv/j;

    if-nez v4, :cond_1c

    instance-of v4, v2, Lv/a;

    if-nez v4, :cond_1c

    instance-of v4, v2, Lv/n;

    if-nez v4, :cond_1c

    iget-boolean v4, v2, Lv/f;->H:Z

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    if-ne v5, v10, :cond_1b

    iget v5, v2, Lv/f;->s:I

    if-eq v5, v4, :cond_1b

    if-ne v6, v10, :cond_1b

    iget v5, v2, Lv/f;->t:I

    if-eq v5, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_1c

    new-instance v4, Lw/b;

    invoke-direct {v4}, Lw/b;-><init>()V

    iget-object v5, v1, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    invoke-static {v2, v5, v4}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    move/from16 v22, v0

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v14

    :cond_1e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x2

    iget-object v5, v1, Lv/g;->y0:Lt/f;

    if-le v3, v4, :cond_5a

    move-object/from16 v7, v24

    if-eq v8, v2, :cond_1f

    if-ne v7, v2, :cond_59

    :cond_1f
    iget v0, v1, Lv/g;->F0:I

    const/16 v9, 0x400

    invoke-static {v0, v9}, Lv/m;->b(II)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, v1, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    iget-object v9, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v12, :cond_22

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv/f;

    const/16 v17, 0x0

    aget-object v4, v19, v17

    const/16 v16, 0x1

    aget-object v6, v19, v16

    move-object/from16 v24, v13

    iget-object v13, v15, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v25, v3

    aget-object v3, v13, v17

    aget-object v13, v13, v16

    invoke-static {v4, v6, v3, v13}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_13

    :cond_20
    instance-of v3, v15, Lv/i;

    if-eqz v3, :cond_21

    :goto_13
    move-object v3, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    const/4 v0, 0x0

    move-object v5, v2

    move-object v2, v11

    goto/16 :goto_31

    :cond_21
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v13, v24

    move/from16 v3, v25

    const/4 v4, 0x2

    goto :goto_12

    :cond_22
    move/from16 v25, v3

    move-object/from16 v24, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    :goto_14
    if-ge v3, v12, :cond_33

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v7

    move-object/from16 v7, v27

    check-cast v7, Lv/f;

    move-object/from16 v27, v8

    const/16 v17, 0x0

    aget-object v8, v19, v17

    move-object/from16 v29, v11

    const/16 v16, 0x1

    aget-object v11, v19, v16

    move-object/from16 v30, v5

    iget-object v5, v7, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v31, v2

    aget-object v2, v5, v17

    aget-object v5, v5, v16

    invoke-static {v8, v11, v2, v5}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v1, Lv/g;->N0:Lw/b;

    invoke-static {v7, v0, v2}, Lv/g;->V(Lv/f;Landroidx/constraintlayout/widget/e;Lw/b;)V

    :cond_23
    instance-of v2, v7, Lv/j;

    if-eqz v2, :cond_27

    move-object v5, v7

    check-cast v5, Lv/j;

    iget v8, v5, Lv/j;->w0:I

    if-nez v8, :cond_25

    if-nez v13, :cond_24

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v8

    :cond_24
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget v8, v5, Lv/j;->w0:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_27

    if-nez v4, :cond_26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    instance-of v5, v7, Lv/l;

    if-eqz v5, :cond_2e

    instance-of v5, v7, Lv/a;

    if-eqz v5, :cond_2b

    move-object v5, v7

    check-cast v5, Lv/a;

    invoke-virtual {v5}, Lv/a;->T()I

    move-result v8

    if-nez v8, :cond_29

    if-nez v6, :cond_28

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v5}, Lv/a;->T()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2e

    if-nez v14, :cond_2a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    move-object v5, v7

    check-cast v5, Lv/l;

    if-nez v6, :cond_2c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_15
    iget-object v5, v7, Lv/f;->K:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-nez v5, :cond_30

    iget-object v5, v7, Lv/f;->M:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-nez v5, :cond_30

    if-nez v2, :cond_30

    instance-of v5, v7, Lv/a;

    if-nez v5, :cond_30

    if-nez v15, :cond_2f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v5, v7, Lv/f;->L:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-nez v5, :cond_32

    iget-object v5, v7, Lv/f;->N:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-nez v5, :cond_32

    iget-object v5, v7, Lv/f;->O:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-nez v5, :cond_32

    if-nez v2, :cond_32

    instance-of v2, v7, Lv/a;

    if-nez v2, :cond_32

    if-nez v26, :cond_31

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    move-object/from16 v2, v26

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v11, v29

    move-object/from16 v5, v30

    move-object/from16 v2, v31

    goto/16 :goto_14

    :cond_33
    move-object/from16 v31, v2

    move-object/from16 v30, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_16

    :cond_34
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/l;

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lv/l;->R(ILw/m;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lw/m;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_17

    :cond_35
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    iget-object v2, v2, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    iget-object v3, v3, Lv/d;->d:Lv/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_18

    :cond_36
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    iget-object v2, v2, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    iget-object v3, v3, Lv/d;->d:Lv/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_19

    :cond_37
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    iget-object v3, v3, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v4, v4, Lv/d;->d:Lv/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_1a

    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v15, :cond_39

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/f;

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_1b

    :cond_39
    if-eqz v13, :cond_3a

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/j;

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_1c

    :cond_3a
    const/4 v6, 0x1

    if-eqz v14, :cond_3b

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/l;

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v0}, Lv/l;->R(ILw/m;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Lw/m;->a(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1d

    :cond_3b
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    iget-object v3, v3, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v4, v4, Lv/d;->d:Lv/f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_1e

    :cond_3c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    iget-object v3, v3, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v4, v4, Lv/d;->d:Lv/f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_1f

    :cond_3d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    iget-object v3, v3, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    iget-object v4, v4, Lv/d;->d:Lv/f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_20

    :cond_3e
    invoke-virtual {v1, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v2

    iget-object v2, v2, Lv/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    iget-object v3, v3, Lv/d;->d:Lv/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_21

    :cond_3f
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v26, :cond_40

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/f;

    invoke-static {v3, v5, v0, v4}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    goto :goto_22

    :cond_40
    const/4 v2, 0x0

    :goto_23
    if-ge v2, v12, :cond_47

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/f;

    iget-object v4, v3, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    if-ne v7, v10, :cond_41

    aget-object v4, v4, v5

    if-ne v4, v10, :cond_41

    const/4 v4, 0x1

    goto :goto_24

    :cond_41
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_46

    iget v4, v3, Lv/f;->q0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v5, :cond_43

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw/m;

    iget v8, v7, Lw/m;->b:I

    if-ne v4, v8, :cond_42

    goto :goto_26

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_43
    const/4 v7, 0x0

    :goto_26
    iget v3, v3, Lv/f;->r0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw/m;

    iget v8, v6, Lw/m;->b:I

    if-ne v3, v8, :cond_44

    goto :goto_28

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_45
    const/4 v6, 0x0

    :goto_28
    if-eqz v7, :cond_46

    if-eqz v6, :cond_46

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v6}, Lw/m;->c(ILw/m;)V

    const/4 v3, 0x2

    iput v3, v6, Lw/m;->c:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_23

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_48

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v5, v31

    goto/16 :goto_2f

    :cond_48
    const/4 v2, 0x0

    aget-object v4, v19, v2

    move-object/from16 v5, v31

    if-ne v4, v5, :cond_4c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v2

    const/4 v7, 0x0

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw/m;

    iget v9, v8, Lw/m;->c:I

    if-ne v9, v3, :cond_49

    move-object/from16 v3, v30

    goto :goto_2a

    :cond_49
    move-object/from16 v3, v30

    invoke-virtual {v8, v3, v2}, Lw/m;->b(Lt/f;I)I

    move-result v9

    if-le v9, v6, :cond_4a

    move-object v7, v8

    move v6, v9

    :cond_4a
    :goto_2a
    move-object/from16 v30, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_29

    :cond_4b
    move-object/from16 v3, v30

    move-object/from16 v2, v29

    if-eqz v7, :cond_4d

    invoke-virtual {v1, v2}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v6}, Lv/f;->O(I)V

    const/4 v4, 0x1

    goto :goto_2b

    :cond_4c
    move-object/from16 v2, v29

    move-object/from16 v3, v30

    :cond_4d
    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_2b
    aget-object v6, v19, v4

    if-ne v6, v5, :cond_51

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw/m;

    iget v10, v9, Lw/m;->c:I

    if-nez v10, :cond_4e

    goto :goto_2d

    :cond_4e
    invoke-virtual {v9, v3, v4}, Lw/m;->b(Lt/f;I)I

    move-result v10

    if-le v10, v6, :cond_4f

    move-object v8, v9

    move v6, v10

    :cond_4f
    :goto_2d
    const/4 v4, 0x1

    goto :goto_2c

    :cond_50
    if-eqz v8, :cond_51

    invoke-virtual {v1, v2}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v6}, Lv/f;->L(I)V

    goto :goto_2e

    :cond_51
    const/4 v8, 0x0

    :goto_2e
    if-nez v7, :cond_53

    if-eqz v8, :cond_52

    goto :goto_30

    :cond_52
    :goto_2f
    const/4 v0, 0x0

    goto :goto_31

    :cond_53
    :goto_30
    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_58

    move-object/from16 v4, v27

    if-ne v4, v5, :cond_55

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v0

    move/from16 v6, v22

    if-ge v6, v0, :cond_54

    if-lez v6, :cond_54

    invoke-virtual {v1, v6}, Lv/f;->O(I)V

    const/4 v7, 0x1

    iput-boolean v7, v1, Lv/g;->G0:Z

    goto :goto_32

    :cond_54
    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v0

    goto :goto_33

    :cond_55
    move/from16 v6, v22

    :goto_32
    move v0, v6

    :goto_33
    move-object/from16 v7, v28

    if-ne v7, v5, :cond_57

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v6

    move/from16 v8, v18

    if-ge v8, v6, :cond_56

    if-lez v8, :cond_56

    invoke-virtual {v1, v8}, Lv/f;->L(I)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lv/g;->H0:Z

    goto :goto_34

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v6

    goto :goto_35

    :cond_57
    move/from16 v8, v18

    :goto_34
    move v6, v8

    :goto_35
    move v8, v6

    move v6, v0

    const/4 v0, 0x1

    goto :goto_37

    :cond_58
    move/from16 v8, v18

    move/from16 v6, v22

    move-object/from16 v4, v27

    move-object/from16 v7, v28

    goto :goto_36

    :cond_59
    move/from16 v25, v3

    move-object v3, v5

    move-object v4, v8

    move-object/from16 v24, v13

    move/from16 v8, v18

    move/from16 v6, v22

    move-object v5, v2

    move-object v2, v11

    goto :goto_36

    :cond_5a
    move/from16 v25, v3

    move-object v3, v5

    move-object v4, v8

    move/from16 v8, v18

    move/from16 v6, v22

    move-object/from16 v7, v24

    move-object v5, v2

    move-object v2, v11

    move-object/from16 v24, v13

    :goto_36
    const/4 v0, 0x0

    :goto_37
    const/16 v9, 0x40

    invoke-virtual {v1, v9}, Lv/g;->W(I)Z

    move-result v10

    if-nez v10, :cond_5c

    const/16 v10, 0x80

    invoke-virtual {v1, v10}, Lv/g;->W(I)Z

    move-result v10

    if-eqz v10, :cond_5b

    goto :goto_38

    :cond_5b
    const/4 v10, 0x0

    goto :goto_39

    :cond_5c
    :goto_38
    const/4 v10, 0x1

    :goto_39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    iput-boolean v11, v3, Lt/f;->g:Z

    iget v12, v1, Lv/g;->F0:I

    if-eqz v12, :cond_5d

    if-eqz v10, :cond_5d

    const/4 v10, 0x1

    iput-boolean v10, v3, Lt/f;->g:Z

    goto :goto_3a

    :cond_5d
    const/4 v10, 0x1

    :goto_3a
    iget-object v12, v1, Lv/o;->s0:Ljava/util/ArrayList;

    aget-object v13, v19, v11

    if-eq v13, v5, :cond_5f

    aget-object v13, v19, v10

    if-ne v13, v5, :cond_5e

    goto :goto_3b

    :cond_5e
    move v10, v11

    goto :goto_3c

    :cond_5f
    :goto_3b
    const/4 v10, 0x1

    :goto_3c
    iput v11, v1, Lv/g;->B0:I

    iput v11, v1, Lv/g;->C0:I

    move/from16 v13, v25

    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v13, :cond_61

    iget-object v14, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/f;

    instance-of v15, v14, Lv/o;

    if-eqz v15, :cond_60

    check-cast v14, Lv/o;

    invoke-virtual {v14}, Lv/o;->R()V

    :cond_60
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    :cond_61
    invoke-virtual {v1, v9}, Lv/g;->W(I)Z

    move-result v11

    move v14, v0

    const/4 v0, 0x0

    const/4 v15, 0x1

    :goto_3e
    if-eqz v15, :cond_76

    const/16 v16, 0x1

    add-int/lit8 v9, v0, 0x1

    :try_start_0
    invoke-virtual {v3}, Lt/f;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move/from16 v22, v15

    const/4 v15, 0x0

    :try_start_1
    iput v15, v1, Lv/g;->B0:I

    iput v15, v1, Lv/g;->C0:I

    invoke-virtual {v1, v3}, Lv/f;->h(Lt/f;)V

    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v13, :cond_62

    iget-object v15, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv/f;

    invoke-virtual {v15, v3}, Lv/f;->h(Lt/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_62
    invoke-virtual {v1, v3}, Lv/g;->T(Lt/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v0, v1, Lv/g;->I0:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v0, :cond_63

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lv/g;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v15, v24

    move/from16 v24, v14

    :try_start_4
    invoke-virtual {v3, v15}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v14

    invoke-virtual {v3, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v26, v12

    move-object/from16 v25, v15

    const/4 v12, 0x0

    const/4 v15, 0x5

    :try_start_5
    invoke-virtual {v3, v0, v14, v12, v15}, Lt/f;->f(Lt/m;Lt/m;II)V

    const/4 v12, 0x0

    iput-object v12, v1, Lv/g;->I0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_40

    :catch_0
    move-exception v0

    goto :goto_41

    :catch_1
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v25, v15

    goto :goto_41

    :catch_2
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v25, v24

    move/from16 v24, v14

    goto :goto_41

    :cond_63
    move-object/from16 v26, v12

    move-object/from16 v25, v24

    move/from16 v24, v14

    :goto_40
    :try_start_6
    iget-object v0, v1, Lv/g;->K0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_64

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lv/g;->K0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v12, v1, Lv/f;->N:Lv/d;

    invoke-virtual {v3, v12}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v12

    invoke-virtual {v3, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v0, v15, v14}, Lt/f;->f(Lt/m;Lt/m;II)V

    const/4 v12, 0x0

    iput-object v12, v1, Lv/g;->K0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_42

    :goto_41
    const/4 v12, 0x0

    goto :goto_45

    :cond_64
    :goto_42
    :try_start_8
    iget-object v0, v1, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v12, v23

    :try_start_9
    invoke-virtual {v3, v12}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v14

    invoke-virtual {v3, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v23, v12

    const/4 v12, 0x0

    const/4 v15, 0x5

    :try_start_a
    invoke-virtual {v3, v0, v14, v12, v15}, Lt/f;->f(Lt/m;Lt/m;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const/4 v12, 0x0

    :try_start_b
    iput-object v12, v1, Lv/g;->J0:Ljava/lang/ref/WeakReference;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_43

    :catch_3
    move-exception v0

    move-object/from16 v23, v12

    goto :goto_41

    :cond_65
    :goto_43
    :try_start_c
    iget-object v0, v1, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v12, v1, Lv/f;->M:Lv/d;

    invoke-virtual {v3, v12}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v12

    invoke-virtual {v3, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v0, v15, v14}, Lt/f;->f(Lt/m;Lt/m;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/4 v12, 0x0

    :try_start_d
    iput-object v12, v1, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    goto :goto_44

    :catch_4
    move-exception v0

    goto :goto_41

    :cond_66
    const/4 v12, 0x0

    :goto_44
    invoke-virtual {v3}, Lt/f;->p()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const/16 v22, 0x1

    goto :goto_48

    :catch_5
    move-exception v0

    goto :goto_45

    :catch_6
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v25, v24

    const/4 v12, 0x0

    move/from16 v24, v14

    :goto_45
    const/16 v22, 0x1

    goto :goto_47

    :catch_7
    move-exception v0

    move-object/from16 v26, v12

    :goto_46
    move-object/from16 v25, v24

    const/4 v12, 0x0

    move/from16 v24, v14

    goto :goto_47

    :catch_8
    move-exception v0

    move-object/from16 v26, v12

    move/from16 v22, v15

    goto :goto_46

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "EXCEPTION : "

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_48
    sget-object v0, Lv/m;->a:[Z

    if-eqz v22, :cond_6b

    const/4 v12, 0x2

    const/4 v14, 0x0

    aput-boolean v14, v0, v12

    const/16 v12, 0x40

    invoke-virtual {v1, v12}, Lv/g;->W(I)Z

    move-result v14

    invoke-virtual {v1, v3, v14}, Lv/f;->Q(Lt/f;Z)V

    iget-object v15, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_49
    if-ge v12, v15, :cond_6a

    move/from16 v27, v15

    iget-object v15, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv/f;

    invoke-virtual {v15, v3, v14}, Lv/f;->Q(Lt/f;Z)V

    move/from16 v28, v14

    iget v14, v15, Lv/f;->i:I

    move/from16 v29, v8

    const/4 v8, -0x1

    if-ne v14, v8, :cond_68

    iget v14, v15, Lv/f;->j:I

    if-eq v14, v8, :cond_67

    goto :goto_4a

    :cond_67
    const/4 v14, 0x0

    goto :goto_4b

    :cond_68
    :goto_4a
    const/4 v14, 0x1

    :goto_4b
    if-eqz v14, :cond_69

    const/16 v18, 0x1

    :cond_69
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v27

    move/from16 v14, v28

    move/from16 v8, v29

    goto :goto_49

    :cond_6a
    move/from16 v29, v8

    const/4 v8, -0x1

    goto :goto_4d

    :cond_6b
    move/from16 v29, v8

    const/4 v8, -0x1

    invoke-virtual {v1, v3, v11}, Lv/f;->Q(Lt/f;Z)V

    const/4 v12, 0x0

    :goto_4c
    if-ge v12, v13, :cond_6c

    iget-object v14, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/f;

    invoke-virtual {v14, v3, v11}, Lv/f;->Q(Lt/f;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4c

    :cond_6c
    const/16 v18, 0x0

    :goto_4d
    const/16 v12, 0x8

    if-eqz v10, :cond_6f

    if-ge v9, v12, :cond_6f

    const/4 v14, 0x2

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_4e
    if-ge v0, v13, :cond_6d

    iget-object v14, v1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/f;

    iget v12, v14, Lv/f;->b0:I

    invoke-virtual {v14}, Lv/f;->r()I

    move-result v28

    add-int v12, v28, v12

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v12, v14, Lv/f;->c0:I

    invoke-virtual {v14}, Lv/f;->l()I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    const/16 v12, 0x8

    const/4 v14, 0x2

    goto :goto_4e

    :cond_6d
    iget v0, v1, Lv/f;->e0:I

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v12, v1, Lv/f;->f0:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-ne v4, v5, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v12

    if-ge v12, v0, :cond_6e

    invoke-virtual {v1, v0}, Lv/f;->O(I)V

    const/4 v12, 0x0

    aput-object v5, v19, v12

    const/16 v18, 0x1

    const/16 v24, 0x1

    :cond_6e
    if-ne v7, v5, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v0

    if-ge v0, v8, :cond_6f

    invoke-virtual {v1, v8}, Lv/f;->L(I)V

    const/4 v8, 0x1

    aput-object v5, v19, v8

    const/16 v18, 0x1

    const/16 v24, 0x1

    :cond_6f
    iget v0, v1, Lv/f;->e0:I

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v8

    if-le v0, v8, :cond_70

    invoke-virtual {v1, v0}, Lv/f;->O(I)V

    const/4 v8, 0x0

    aput-object v2, v19, v8

    const/16 v18, 0x1

    const/16 v24, 0x1

    :cond_70
    iget v0, v1, Lv/f;->f0:I

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v8

    if-le v0, v8, :cond_71

    invoke-virtual {v1, v0}, Lv/f;->L(I)V

    const/4 v8, 0x1

    aput-object v2, v19, v8

    move/from16 v18, v8

    move/from16 v24, v18

    goto :goto_4f

    :cond_71
    const/4 v8, 0x1

    :goto_4f
    if-nez v24, :cond_73

    const/4 v12, 0x0

    aget-object v0, v19, v12

    if-ne v0, v5, :cond_72

    if-lez v6, :cond_72

    invoke-virtual/range {p0 .. p0}, Lv/f;->r()I

    move-result v0

    if-le v0, v6, :cond_72

    iput-boolean v8, v1, Lv/g;->G0:Z

    aput-object v2, v19, v12

    invoke-virtual {v1, v6}, Lv/f;->O(I)V

    move/from16 v18, v8

    move/from16 v24, v18

    :cond_72
    aget-object v0, v19, v8

    if-ne v0, v5, :cond_73

    if-lez v29, :cond_73

    invoke-virtual/range {p0 .. p0}, Lv/f;->l()I

    move-result v0

    move/from16 v12, v29

    if-le v0, v12, :cond_74

    iput-boolean v8, v1, Lv/g;->H0:Z

    aput-object v2, v19, v8

    invoke-virtual {v1, v12}, Lv/f;->L(I)V

    const/16 v0, 0x8

    const/4 v14, 0x1

    const/16 v18, 0x1

    goto :goto_50

    :cond_73
    move/from16 v12, v29

    :cond_74
    move/from16 v14, v24

    const/16 v0, 0x8

    :goto_50
    if-le v9, v0, :cond_75

    const/4 v15, 0x0

    goto :goto_51

    :cond_75
    move/from16 v15, v18

    :goto_51
    move v0, v9

    move v8, v12

    move-object/from16 v24, v25

    move-object/from16 v12, v26

    const/16 v9, 0x40

    goto/16 :goto_3e

    :cond_76
    move-object v8, v12

    move/from16 v24, v14

    iput-object v8, v1, Lv/o;->s0:Ljava/util/ArrayList;

    if-eqz v24, :cond_77

    const/4 v2, 0x0

    aput-object v4, v19, v2

    const/4 v2, 0x1

    aput-object v7, v19, v2

    :cond_77
    iget-object v0, v3, Lt/f;->l:Lt/e;

    invoke-virtual {v1, v0}, Lv/o;->G(Lt/e;)V

    return-void
.end method

.method public final S(ILv/f;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lv/g;->B0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lv/g;->E0:[Lv/c;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lv/c;

    iput-object p1, p0, Lv/g;->E0:[Lv/c;

    :cond_0
    iget-object p1, p0, Lv/g;->E0:[Lv/c;

    iget v1, p0, Lv/g;->B0:I

    new-instance v2, Lv/c;

    iget-boolean v3, p0, Lv/g;->x0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p2, v4, v3}, Lv/c;-><init>(Lv/f;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lv/g;->B0:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget p1, p0, Lv/g;->C0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lv/g;->D0:[Lv/c;

    array-length v2, v1

    if-lt p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lv/c;

    iput-object p1, p0, Lv/g;->D0:[Lv/c;

    :cond_2
    iget-object p1, p0, Lv/g;->D0:[Lv/c;

    iget v1, p0, Lv/g;->C0:I

    new-instance v2, Lv/c;

    iget-boolean v3, p0, Lv/g;->x0:Z

    invoke-direct {v2, p2, v0, v3}, Lv/c;-><init>(Lv/f;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lv/g;->C0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final T(Lt/f;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lv/g;->W(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lv/f;->c(Lt/f;Z)V

    iget-object v1, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/f;

    iget-object v7, v6, Lv/f;->U:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Lv/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_8

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/f;

    instance-of v6, v4, Lv/a;

    if-eqz v6, :cond_7

    check-cast v4, Lv/a;

    move v6, v2

    :goto_2
    iget v7, v4, Lv/l;->t0:I

    if-ge v6, v7, :cond_7

    iget-object v7, v4, Lv/l;->s0:[Lv/f;

    aget-object v7, v7, v6

    iget-boolean v8, v4, Lv/a;->v0:Z

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lv/f;->d()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    iget v8, v4, Lv/a;->u0:I

    if-eqz v8, :cond_5

    if-ne v8, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v7, v7, Lv/f;->U:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v7, v7, Lv/f;->U:[Z

    aput-boolean v5, v7, v2

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lv/g;->M0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v4, v2

    :goto_5
    if-ge v4, v1, :cond_d

    iget-object v6, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lv/n;

    if-nez v7, :cond_a

    instance-of v7, v6, Lv/j;

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    move v7, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v5

    :goto_7
    if-eqz v7, :cond_c

    instance-of v7, v6, Lv/n;

    if-eqz v7, :cond_b

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v6, p1, v0}, Lv/f;->c(Lt/f;Z)V

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv/f;

    check-cast v7, Lv/n;

    move v8, v2

    :goto_a
    iget v9, v7, Lv/l;->t0:I

    if-ge v8, v9, :cond_10

    iget-object v9, v7, Lv/l;->s0:[Lv/f;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v8, v5

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move v8, v2

    :goto_b
    if-eqz v8, :cond_e

    invoke-virtual {v7, p1, v0}, Lv/f;->c(Lt/f;Z)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v4, v6, :cond_d

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/f;

    invoke-virtual {v6, p1, v0}, Lv/f;->c(Lt/f;Z)V

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_9

    :cond_13
    sget-boolean v3, Lt/f;->p:Z

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_19

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v6, v2

    :goto_d
    if-ge v6, v1, :cond_17

    iget-object v7, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv/f;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Lv/n;

    if-nez v8, :cond_15

    instance-of v8, v7, Lv/j;

    if-eqz v8, :cond_14

    goto :goto_e

    :cond_14
    move v8, v2

    goto :goto_f

    :cond_15
    :goto_e
    move v8, v5

    :goto_f
    if-nez v8, :cond_16

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    iget-object v1, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v2

    if-ne v1, v4, :cond_18

    move v10, v2

    goto :goto_10

    :cond_18
    move v10, v5

    :goto_10
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/f;

    invoke-static {p0, p1, v3}, Lv/m;->a(Lv/g;Lt/f;Lv/f;)V

    invoke-virtual {v3, p1, v0}, Lv/f;->c(Lt/f;Z)V

    goto :goto_11

    :cond_19
    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_21

    iget-object v6, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/f;

    instance-of v7, v6, Lv/g;

    if-eqz v7, :cond_1d

    iget-object v7, v6, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v7, v2

    aget-object v7, v7, v5

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v4, :cond_1a

    invoke-virtual {v6, v9}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1a
    if-ne v7, v4, :cond_1b

    invoke-virtual {v6, v9}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1b
    invoke-virtual {v6, p1, v0}, Lv/f;->c(Lt/f;Z)V

    if-ne v8, v4, :cond_1c

    invoke-virtual {v6, v8}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1c
    if-ne v7, v4, :cond_20

    invoke-virtual {v6, v7}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_15

    :cond_1d
    invoke-static {p0, p1, v6}, Lv/m;->a(Lv/g;Lt/f;Lv/f;)V

    instance-of v7, v6, Lv/n;

    if-nez v7, :cond_1f

    instance-of v7, v6, Lv/j;

    if-eqz v7, :cond_1e

    goto :goto_13

    :cond_1e
    move v7, v2

    goto :goto_14

    :cond_1f
    :goto_13
    move v7, v5

    :goto_14
    if-nez v7, :cond_20

    invoke-virtual {v6, p1, v0}, Lv/f;->c(Lt/f;Z)V

    :cond_20
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    iget v0, p0, Lv/g;->B0:I

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-static {p0, p1, v1, v2}, Lv/b;->a(Lv/g;Lt/f;Ljava/util/ArrayList;I)V

    :cond_22
    iget v0, p0, Lv/g;->C0:I

    if-lez v0, :cond_23

    invoke-static {p0, p1, v1, v5}, Lv/b;->a(Lv/g;Lt/f;Ljava/util/ArrayList;I)V

    :cond_23
    return-void
.end method

.method public final U(IZ)Z
    .locals 13

    const/4 v0, 0x1

    and-int/2addr p2, v0

    iget-object p0, p0, Lv/g;->u0:Lw/g;

    iget-object v1, p0, Lw/g;->a:Lv/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v1, v0}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v1}, Lv/f;->s()I

    move-result v5

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v6

    iget-object v7, p0, Lw/g;->e:Ljava/util/ArrayList;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p2, :cond_4

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v9, :cond_0

    if-ne v4, v9, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    if-ne v12, p1, :cond_1

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/f;->k()Z

    move-result v11

    if-nez v11, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    if-ne v3, v9, :cond_4

    invoke-virtual {v1, v8}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v2}, Lw/g;->d(Lv/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lv/f;->O(I)V

    iget-object p2, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->r()I

    move-result v9

    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v9, :cond_4

    invoke-virtual {v1, v8}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v0}, Lw/g;->d(Lv/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lv/f;->L(I)V

    iget-object p2, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v9

    invoke-virtual {p2, v9}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_4
    :goto_0
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v9, v1, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_6

    aget-object v6, v9, v2

    if-eq v6, v8, :cond_5

    if-ne v6, p2, :cond_7

    :cond_5
    invoke-virtual {v1}, Lv/f;->r()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v6, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_2

    :cond_6
    aget-object v5, v9, v0

    if-eq v5, v8, :cond_8

    if-ne v5, p2, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {v1}, Lv/f;->l()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v5, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :goto_2
    move p2, v0

    :goto_3
    invoke-virtual {p0}, Lw/g;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-ne v6, v1, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/f;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    if-ne v6, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lw/d;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v5, :cond_c

    :goto_6
    move v0, v2

    :cond_11
    invoke-virtual {v1, v3}, Lv/f;->M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Lv/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public final W(I)Z
    .locals 0

    iget p0, p0, Lv/g;->F0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lv/f;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lv/f;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/f;

    invoke-virtual {v0, p1}, Lv/f;->o(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
