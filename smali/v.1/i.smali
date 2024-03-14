.class public final Lv/i;
.super Lv/n;
.source "SourceFile"


# instance fields
.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:I

.field public K0:I

.field public L0:F

.field public M0:F

.field public N0:F

.field public O0:F

.field public P0:F

.field public Q0:F

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:I

.field public X0:I

.field public final Y0:Ljava/util/ArrayList;

.field public Z0:[Lv/f;

.field public a1:[Lv/f;

.field public b1:[I

.field public c1:[Lv/f;

.field public d1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lv/n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lv/i;->F0:I

    iput v0, p0, Lv/i;->G0:I

    iput v0, p0, Lv/i;->H0:I

    iput v0, p0, Lv/i;->I0:I

    iput v0, p0, Lv/i;->J0:I

    iput v0, p0, Lv/i;->K0:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lv/i;->L0:F

    iput v1, p0, Lv/i;->M0:F

    iput v1, p0, Lv/i;->N0:F

    iput v1, p0, Lv/i;->O0:F

    iput v1, p0, Lv/i;->P0:F

    iput v1, p0, Lv/i;->Q0:F

    const/4 v1, 0x0

    iput v1, p0, Lv/i;->R0:I

    iput v1, p0, Lv/i;->S0:I

    const/4 v2, 0x2

    iput v2, p0, Lv/i;->T0:I

    iput v2, p0, Lv/i;->U0:I

    iput v1, p0, Lv/i;->V0:I

    iput v0, p0, Lv/i;->W0:I

    iput v1, p0, Lv/i;->X0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/i;->Y0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lv/i;->Z0:[Lv/f;

    iput-object v0, p0, Lv/i;->a1:[Lv/f;

    iput-object v0, p0, Lv/i;->b1:[I

    iput v1, p0, Lv/i;->d1:I

    return-void
.end method


# virtual methods
.method public final S(IIII)V
    .locals 37

    move-object/from16 v8, p0

    iget v0, v8, Lv/l;->t0:I

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v0, :cond_a

    iget-object v0, v8, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_0

    check-cast v0, Lv/g;

    iget-object v0, v0, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v0, v11

    goto/16 :goto_5

    :cond_1
    move v2, v11

    :goto_1
    iget v3, v8, Lv/l;->t0:I

    if-ge v2, v3, :cond_9

    iget-object v3, v8, Lv/l;->s0:[Lv/f;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    instance-of v4, v3, Lv/j;

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v11}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v3, v12}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    if-ne v4, v10, :cond_4

    iget v6, v3, Lv/f;->s:I

    if-eq v6, v12, :cond_4

    if-ne v5, v10, :cond_4

    iget v6, v3, Lv/f;->t:I

    if-eq v6, v12, :cond_4

    move v6, v12

    goto :goto_2

    :cond_4
    move v6, v11

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    if-ne v4, v10, :cond_6

    move-object v4, v9

    :cond_6
    if-ne v5, v10, :cond_7

    move-object v5, v9

    :cond_7
    iget-object v6, v8, Lv/n;->D0:Lw/b;

    iput-object v4, v6, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v5, v6, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Lv/f;->r()I

    move-result v4

    iput v4, v6, Lw/b;->c:I

    invoke-virtual {v3}, Lv/f;->l()I

    move-result v4

    iput v4, v6, Lw/b;->d:I

    invoke-virtual {v0, v3, v6}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget v4, v6, Lw/b;->e:I

    invoke-virtual {v3, v4}, Lv/f;->O(I)V

    iget v4, v6, Lw/b;->f:I

    invoke-virtual {v3, v4}, Lv/f;->L(I)V

    iget v4, v6, Lw/b;->g:I

    iput v4, v3, Lv/f;->d0:I

    if-lez v4, :cond_8

    move v4, v12

    goto :goto_3

    :cond_8
    move v4, v11

    :goto_3
    iput-boolean v4, v3, Lv/f;->F:Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    move v0, v12

    :goto_5
    if-nez v0, :cond_a

    iput v11, v8, Lv/n;->B0:I

    iput v11, v8, Lv/n;->C0:I

    iput-boolean v11, v8, Lv/n;->A0:Z

    return-void

    :cond_a
    iget v13, v8, Lv/n;->y0:I

    iget v14, v8, Lv/n;->z0:I

    iget v15, v8, Lv/n;->u0:I

    iget v7, v8, Lv/n;->v0:I

    const/4 v0, 0x2

    new-array v6, v0, [I

    sub-int v2, p2, v13

    sub-int/2addr v2, v14

    iget v3, v8, Lv/i;->X0:I

    if-ne v3, v12, :cond_b

    sub-int v2, p4, v15

    sub-int/2addr v2, v7

    :cond_b
    move v5, v2

    const/4 v2, -0x1

    if-nez v3, :cond_d

    iget v3, v8, Lv/i;->F0:I

    if-ne v3, v2, :cond_c

    iput v11, v8, Lv/i;->F0:I

    :cond_c
    iget v3, v8, Lv/i;->G0:I

    if-ne v3, v2, :cond_f

    iput v11, v8, Lv/i;->G0:I

    goto :goto_6

    :cond_d
    iget v3, v8, Lv/i;->F0:I

    if-ne v3, v2, :cond_e

    iput v11, v8, Lv/i;->F0:I

    :cond_e
    iget v3, v8, Lv/i;->G0:I

    if-ne v3, v2, :cond_f

    iput v11, v8, Lv/i;->G0:I

    :cond_f
    :goto_6
    iget-object v2, v8, Lv/l;->s0:[Lv/f;

    move v3, v11

    move v4, v3

    :goto_7
    iget v1, v8, Lv/l;->t0:I

    const/16 v11, 0x8

    if-ge v3, v1, :cond_11

    iget-object v1, v8, Lv/l;->s0:[Lv/f;

    aget-object v1, v1, v3

    iget v1, v1, Lv/f;->j0:I

    if-ne v1, v11, :cond_10

    add-int/lit8 v4, v4, 0x1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    goto :goto_7

    :cond_11
    if-lez v4, :cond_13

    sub-int/2addr v1, v4

    new-array v2, v1, [Lv/f;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    iget v4, v8, Lv/l;->t0:I

    if-ge v3, v4, :cond_13

    iget-object v4, v8, Lv/l;->s0:[Lv/f;

    aget-object v4, v4, v3

    iget v0, v4, Lv/f;->j0:I

    if-eq v0, v11, :cond_12

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x2

    goto :goto_8

    :cond_13
    move v11, v1

    move-object v4, v2

    iput-object v4, v8, Lv/i;->c1:[Lv/f;

    iput v11, v8, Lv/i;->d1:I

    iget v0, v8, Lv/i;->V0:I

    iget-object v3, v8, Lv/i;->Y0:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    iget-object v2, v8, Lv/f;->L:Lv/d;

    iget-object v1, v8, Lv/f;->K:Lv/d;

    iget-object v12, v8, Lv/f;->M:Lv/d;

    move-object/from16 v27, v12

    iget-object v12, v8, Lv/f;->N:Lv/d;

    move-object/from16 v28, v12

    iget-object v12, v8, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_9

    :cond_14
    iget v1, v8, Lv/i;->X0:I

    if-nez v11, :cond_15

    :goto_9
    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v36, v15

    goto/16 :goto_3f

    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lv/h;

    move-object/from16 v19, v3

    iget-object v3, v8, Lv/f;->K:Lv/d;

    move-object/from16 v20, v4

    iget-object v4, v8, Lv/f;->L:Lv/d;

    move/from16 v21, v5

    iget-object v5, v8, Lv/f;->M:Lv/d;

    move-object/from16 v22, v6

    iget-object v6, v8, Lv/f;->N:Lv/d;

    move-object/from16 v16, v0

    move/from16 v29, v1

    move-object/from16 v17, v18

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move/from16 v2, v29

    move/from16 v30, v13

    move-object/from16 v13, v19

    move-object/from16 v31, v20

    move/from16 v32, v21

    move-object/from16 v33, v22

    move/from16 v34, v7

    move/from16 v7, v32

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v29, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v11, :cond_1c

    const/4 v4, 0x1

    add-int/2addr v1, v4

    aget-object v6, v31, v7

    move/from16 v5, v32

    invoke-virtual {v8, v5, v6}, Lv/i;->V(ILv/f;)I

    move-result v16

    iget-object v4, v6, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x0

    aget-object v4, v4, v19

    if-ne v4, v10, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    move/from16 v19, v2

    if-eq v3, v5, :cond_17

    iget v2, v8, Lv/i;->R0:I

    add-int/2addr v2, v3

    add-int v2, v2, v16

    if-le v2, v5, :cond_18

    :cond_17
    iget-object v2, v0, Lv/h;->b:Lv/f;

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_19

    if-lez v7, :cond_19

    iget v4, v8, Lv/i;->W0:I

    if-lez v4, :cond_19

    if-le v1, v4, :cond_19

    const/4 v2, 0x1

    :cond_19
    if-eqz v2, :cond_1a

    new-instance v4, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v2, v8, Lv/f;->L:Lv/d;

    iget-object v1, v8, Lv/f;->M:Lv/d;

    iget-object v0, v8, Lv/f;->N:Lv/d;

    move-object/from16 v20, v0

    move-object v0, v4

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move/from16 v2, v29

    move/from16 v32, v14

    move-object v14, v4

    move-object/from16 v4, v22

    move/from16 v35, v5

    move-object/from16 v5, v21

    move/from16 v36, v15

    move-object v15, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move v9, v7

    move/from16 v7, v35

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    iput v9, v14, Lv/h;->n:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v14

    move/from16 v3, v16

    const/4 v1, 0x1

    goto :goto_c

    :cond_1a
    move/from16 v35, v5

    move-object/from16 v20, v9

    move/from16 v32, v14

    move/from16 v36, v15

    move-object v15, v6

    move v9, v7

    if-lez v9, :cond_1b

    iget v2, v8, Lv/i;->R0:I

    add-int v2, v2, v16

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_c

    :cond_1b
    move/from16 v3, v16

    :goto_c
    invoke-virtual {v0, v15}, Lv/h;->a(Lv/f;)V

    add-int/lit8 v7, v9, 0x1

    move/from16 v2, v19

    move-object/from16 v9, v20

    move/from16 v14, v32

    move/from16 v32, v35

    move/from16 v15, v36

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v20, v9

    move/from16 v36, v15

    move/from16 v35, v32

    move/from16 v32, v14

    goto/16 :goto_10

    :cond_1d
    move-object/from16 v20, v9

    move/from16 v36, v15

    move/from16 v35, v32

    move/from16 v32, v14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v11, :cond_24

    const/4 v4, 0x1

    add-int/2addr v1, v4

    aget-object v14, v31, v9

    move/from16 v15, v35

    invoke-virtual {v8, v15, v14}, Lv/i;->U(ILv/f;)I

    move-result v16

    iget-object v5, v14, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    if-ne v5, v10, :cond_1e

    add-int/lit8 v2, v2, 0x1

    :cond_1e
    move/from16 v19, v2

    if-eq v3, v15, :cond_1f

    iget v2, v8, Lv/i;->S0:I

    add-int/2addr v2, v3

    add-int v2, v2, v16

    if-le v2, v15, :cond_20

    :cond_1f
    iget-object v2, v0, Lv/h;->b:Lv/f;

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_e

    :cond_20
    const/4 v2, 0x0

    :goto_e
    if-nez v2, :cond_21

    if-lez v9, :cond_21

    iget v4, v8, Lv/i;->W0:I

    if-lez v4, :cond_21

    if-le v1, v4, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-eqz v2, :cond_22

    new-instance v7, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v4, v8, Lv/f;->L:Lv/d;

    iget-object v5, v8, Lv/f;->M:Lv/d;

    iget-object v6, v8, Lv/f;->N:Lv/d;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v21, v10

    move-object v10, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    iput v9, v10, Lv/h;->n:I

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v10

    move/from16 v3, v16

    const/4 v1, 0x1

    goto :goto_f

    :cond_22
    move-object/from16 v21, v10

    if-lez v9, :cond_23

    iget v2, v8, Lv/i;->S0:I

    add-int v2, v2, v16

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_f

    :cond_23
    move/from16 v3, v16

    :goto_f
    invoke-virtual {v0, v14}, Lv/h;->a(Lv/f;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v35, v15

    move/from16 v2, v19

    move-object/from16 v10, v21

    goto :goto_d

    :cond_24
    :goto_10
    move/from16 v15, v35

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v8, Lv/n;->y0:I

    iget v3, v8, Lv/n;->u0:I

    iget v4, v8, Lv/n;->z0:I

    iget v5, v8, Lv/n;->v0:I

    const/4 v6, 0x0

    aget-object v7, v12, v6

    move-object/from16 v9, v20

    if-eq v7, v9, :cond_26

    const/4 v6, 0x1

    aget-object v7, v12, v6

    if-ne v7, v9, :cond_25

    goto :goto_11

    :cond_25
    const/4 v6, 0x0

    goto :goto_12

    :cond_26
    :goto_11
    const/4 v6, 0x1

    :goto_12
    if-lez v2, :cond_28

    if-eqz v6, :cond_28

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_28

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/h;

    if-nez v29, :cond_27

    invoke-virtual {v6}, Lv/h;->d()I

    move-result v7

    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Lv/h;->e(I)V

    goto :goto_14

    :cond_27
    invoke-virtual {v6}, Lv/h;->c()I

    move-result v7

    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Lv/h;->e(I)V

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_28
    move v6, v3

    move-object/from16 v2, v18

    move-object/from16 v12, v27

    move-object/from16 v11, v28

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, v1

    move-object/from16 v1, v17

    :goto_15
    if-ge v7, v0, :cond_2e

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/h;

    if-nez v29, :cond_2b

    add-int/lit8 v5, v0, -0x1

    if-ge v7, v5, :cond_29

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/h;

    iget-object v5, v5, Lv/h;->b:Lv/f;

    iget-object v5, v5, Lv/f;->L:Lv/d;

    move-object v11, v5

    move-object/from16 v35, v13

    const/4 v5, 0x0

    goto :goto_16

    :cond_29
    iget v5, v8, Lv/n;->v0:I

    move-object/from16 v35, v13

    move-object/from16 v11, v28

    :goto_16
    iget-object v13, v14, Lv/h;->b:Lv/f;

    iget-object v13, v13, Lv/f;->N:Lv/d;

    move-object/from16 v16, v14

    move/from16 v17, v29

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lv/h;->f(ILv/d;Lv/d;Lv/d;Lv/d;IIIII)V

    invoke-virtual {v14}, Lv/h;->d()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v14}, Lv/h;->c()I

    move-result v6

    add-int/2addr v6, v10

    if-lez v7, :cond_2a

    iget v9, v8, Lv/i;->S0:I

    add-int/2addr v6, v9

    :cond_2a
    move/from16 v31, v0

    move v9, v2

    move v10, v6

    move-object v2, v13

    move-object/from16 v13, v35

    const/4 v6, 0x0

    goto :goto_18

    :cond_2b
    move-object/from16 v35, v13

    add-int/lit8 v4, v0, -0x1

    if-ge v7, v4, :cond_2c

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v13, v35

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/h;

    iget-object v4, v4, Lv/h;->b:Lv/f;

    iget-object v4, v4, Lv/f;->K:Lv/d;

    move/from16 v31, v0

    move-object v12, v4

    const/4 v4, 0x0

    goto :goto_17

    :cond_2c
    move-object/from16 v13, v35

    iget v4, v8, Lv/n;->z0:I

    move/from16 v31, v0

    move-object/from16 v12, v27

    :goto_17
    iget-object v0, v14, Lv/h;->b:Lv/f;

    iget-object v0, v0, Lv/f;->M:Lv/d;

    move-object/from16 v16, v14

    move/from16 v17, v29

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lv/h;->f(ILv/d;Lv/d;Lv/d;Lv/d;IIIII)V

    invoke-virtual {v14}, Lv/h;->d()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v14}, Lv/h;->c()I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_2d

    iget v9, v8, Lv/i;->R0:I

    add-int/2addr v1, v9

    :cond_2d
    move v9, v1

    move v10, v3

    const/4 v3, 0x0

    move-object v1, v0

    :goto_18
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v31

    goto/16 :goto_15

    :cond_2e
    const/4 v0, 0x0

    aput v9, v33, v0

    const/4 v0, 0x1

    aput v10, v33, v0

    goto/16 :goto_3f

    :cond_2f
    move-object/from16 v31, v4

    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move v15, v5

    iget v0, v8, Lv/i;->X0:I

    if-nez v0, :cond_35

    iget v1, v8, Lv/i;->W0:I

    if-gtz v1, :cond_34

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v1, v11, :cond_33

    if-lez v1, :cond_30

    iget v4, v8, Lv/i;->R0:I

    add-int/2addr v2, v4

    :cond_30
    aget-object v4, v31, v1

    if-nez v4, :cond_31

    goto :goto_1a

    :cond_31
    invoke-virtual {v8, v15, v4}, Lv/i;->V(ILv/f;)I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v15, :cond_32

    goto :goto_1b

    :cond_32
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_33
    :goto_1b
    move v1, v3

    :cond_34
    move v2, v1

    const/4 v1, 0x0

    goto :goto_1f

    :cond_35
    iget v1, v8, Lv/i;->W0:I

    if-gtz v1, :cond_3a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v1, v11, :cond_39

    if-lez v1, :cond_36

    iget v4, v8, Lv/i;->S0:I

    add-int/2addr v2, v4

    :cond_36
    aget-object v4, v31, v1

    if-nez v4, :cond_37

    goto :goto_1d

    :cond_37
    invoke-virtual {v8, v15, v4}, Lv/i;->U(ILv/f;)I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v15, :cond_38

    goto :goto_1e

    :cond_38
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_39
    :goto_1e
    move v1, v3

    :cond_3a
    const/4 v2, 0x0

    :goto_1f
    iget-object v3, v8, Lv/i;->b1:[I

    if-nez v3, :cond_3b

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v8, Lv/i;->b1:[I

    :cond_3b
    if-nez v1, :cond_3c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3d

    :cond_3c
    if-nez v2, :cond_3e

    if-nez v0, :cond_3e

    :cond_3d
    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v9, v8

    move/from16 v13, v30

    move/from16 v14, v32

    move-object/from16 v10, v33

    const/4 v0, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2d

    :cond_3e
    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v0, v8

    move/from16 v13, v30

    move-object/from16 v9, v31

    move/from16 v14, v32

    move-object/from16 v10, v33

    const/4 v12, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    :goto_20
    if-nez v12, :cond_55

    if-nez v5, :cond_3f

    int-to-float v6, v11

    move-object/from16 p0, v0

    int-to-float v0, v7

    div-float/2addr v6, v0

    move/from16 p1, v1

    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v6, v0

    goto :goto_21

    :cond_3f
    move-object/from16 p0, v0

    move/from16 p1, v1

    int-to-float v0, v11

    int-to-float v1, v6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v7, v0

    :goto_21
    iget-object v0, v8, Lv/i;->a1:[Lv/f;

    if-eqz v0, :cond_41

    array-length v1, v0

    if-ge v1, v7, :cond_40

    goto :goto_22

    :cond_40
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :cond_41
    :goto_22
    const/4 v1, 0x0

    new-array v0, v7, [Lv/f;

    iput-object v0, v8, Lv/i;->a1:[Lv/f;

    :goto_23
    iget-object v0, v8, Lv/i;->Z0:[Lv/f;

    if-eqz v0, :cond_43

    array-length v1, v0

    if-ge v1, v6, :cond_42

    goto :goto_24

    :cond_42
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    :cond_43
    :goto_24
    new-array v0, v6, [Lv/f;

    iput-object v0, v8, Lv/i;->Z0:[Lv/f;

    :goto_25
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v7, :cond_4c

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v6, :cond_4b

    mul-int v17, v1, v7

    add-int v17, v17, v0

    move/from16 p2, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_44

    mul-int v2, v0, v6

    add-int v17, v2, v1

    :cond_44
    move/from16 p3, v3

    move/from16 v2, v17

    array-length v3, v9

    if-lt v2, v3, :cond_45

    :goto_28
    move/from16 p4, v4

    goto :goto_29

    :cond_45
    aget-object v2, v9, v2

    if-nez v2, :cond_46

    goto :goto_28

    :cond_46
    invoke-virtual {v8, v15, v2}, Lv/i;->V(ILv/f;)I

    move-result v3

    move/from16 p4, v4

    iget-object v4, v8, Lv/i;->a1:[Lv/f;

    aget-object v4, v4, v0

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lv/f;->r()I

    move-result v4

    if-ge v4, v3, :cond_48

    :cond_47
    iget-object v3, v8, Lv/i;->a1:[Lv/f;

    aput-object v2, v3, v0

    :cond_48
    invoke-virtual {v8, v15, v2}, Lv/i;->U(ILv/f;)I

    move-result v3

    iget-object v4, v8, Lv/i;->Z0:[Lv/f;

    aget-object v4, v4, v1

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Lv/f;->l()I

    move-result v4

    if-ge v4, v3, :cond_4a

    :cond_49
    iget-object v3, v8, Lv/i;->Z0:[Lv/f;

    aput-object v2, v3, v1

    :cond_4a
    :goto_29
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_27

    :cond_4b
    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_4c
    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2a
    if-ge v0, v7, :cond_4f

    iget-object v2, v8, Lv/i;->a1:[Lv/f;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4e

    if-lez v0, :cond_4d

    iget v3, v8, Lv/i;->R0:I

    add-int/2addr v1, v3

    :cond_4d
    invoke-virtual {v8, v15, v2}, Lv/i;->V(ILv/f;)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2b
    if-ge v0, v6, :cond_52

    iget-object v3, v8, Lv/i;->Z0:[Lv/f;

    aget-object v3, v3, v0

    if-eqz v3, :cond_51

    if-lez v0, :cond_50

    iget v4, v8, Lv/i;->S0:I

    add-int/2addr v2, v4

    :cond_50
    invoke-virtual {v8, v15, v3}, Lv/i;->U(ILv/f;)I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_52
    const/4 v0, 0x0

    aput v1, v10, v0

    const/4 v0, 0x1

    aput v2, v10, v0

    if-nez v5, :cond_53

    if-le v1, v15, :cond_54

    if-le v7, v0, :cond_54

    add-int/lit8 v7, v7, -0x1

    goto :goto_2c

    :cond_53
    if-le v2, v15, :cond_54

    if-le v6, v0, :cond_54

    add-int/lit8 v6, v6, -0x1

    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    goto/16 :goto_20

    :cond_54
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, p0

    :goto_2d
    move v12, v0

    move-object v0, v8

    move-object v8, v9

    move-object/from16 v9, v31

    goto/16 :goto_20

    :cond_55
    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    const/4 v0, 0x1

    iget-object v1, v8, Lv/i;->b1:[I

    const/4 v2, 0x0

    aput v7, v1, v2

    aput v6, v1, v0

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    goto/16 :goto_40

    :cond_56
    move-object/from16 v31, v4

    move-object/from16 v33, v6

    move/from16 v34, v7

    move-object/from16 v21, v10

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    move-object v13, v3

    move v15, v5

    iget v10, v8, Lv/i;->X0:I

    if-nez v11, :cond_57

    goto/16 :goto_3f

    :cond_57
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v14, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v4, v8, Lv/f;->L:Lv/d;

    iget-object v5, v8, Lv/f;->M:Lv/d;

    iget-object v6, v8, Lv/f;->N:Lv/d;

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v10

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_5f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v11, :cond_5e

    aget-object v6, v31, v7

    invoke-virtual {v8, v15, v6}, Lv/i;->V(ILv/f;)I

    move-result v16

    iget-object v2, v6, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v5, v21

    if-ne v2, v5, :cond_58

    add-int/lit8 v0, v0, 0x1

    :cond_58
    move/from16 v19, v0

    if-eq v1, v15, :cond_59

    iget v0, v8, Lv/i;->R0:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_5a

    :cond_59
    iget-object v0, v14, Lv/h;->b:Lv/f;

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_2f

    :cond_5a
    const/4 v0, 0x0

    :goto_2f
    if-nez v0, :cond_5b

    if-lez v7, :cond_5b

    iget v2, v8, Lv/i;->W0:I

    if-lez v2, :cond_5b

    rem-int v2, v7, v2

    if-nez v2, :cond_5b

    const/4 v0, 0x1

    :cond_5b
    if-eqz v0, :cond_5c

    new-instance v14, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v4, v8, Lv/f;->L:Lv/d;

    iget-object v2, v8, Lv/f;->M:Lv/d;

    iget-object v1, v8, Lv/f;->N:Lv/d;

    move-object v0, v14

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move v2, v10

    move-object/from16 v22, v9

    move-object v9, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, v20

    move/from16 v29, v10

    move v10, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    iput v10, v14, Lv/h;->n:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5c
    move-object/from16 v22, v9

    move/from16 v29, v10

    move-object/from16 v21, v12

    move-object v9, v5

    move-object v12, v6

    move v10, v7

    if-lez v10, :cond_5d

    iget v0, v8, Lv/i;->R0:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_31

    :cond_5d
    :goto_30
    move/from16 v1, v16

    :goto_31
    invoke-virtual {v14, v12}, Lv/h;->a(Lv/f;)V

    add-int/lit8 v7, v10, 0x1

    move/from16 v0, v19

    move-object/from16 v12, v21

    move/from16 v10, v29

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    goto/16 :goto_2e

    :cond_5e
    move-object/from16 v22, v9

    move/from16 v29, v10

    move-object/from16 v21, v12

    goto/16 :goto_36

    :cond_5f
    move-object/from16 v22, v9

    move/from16 v29, v10

    move-object/from16 v9, v21

    move-object/from16 v21, v12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_32
    if-ge v10, v11, :cond_66

    aget-object v12, v31, v10

    invoke-virtual {v8, v15, v12}, Lv/i;->U(ILv/f;)I

    move-result v16

    iget-object v2, v12, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-ne v2, v9, :cond_60

    add-int/lit8 v0, v0, 0x1

    :cond_60
    move/from16 v19, v0

    if-eq v1, v15, :cond_61

    iget v0, v8, Lv/i;->S0:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_62

    :cond_61
    iget-object v0, v14, Lv/h;->b:Lv/f;

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    goto :goto_33

    :cond_62
    const/4 v0, 0x0

    :goto_33
    if-nez v0, :cond_63

    if-lez v10, :cond_63

    iget v2, v8, Lv/i;->W0:I

    if-lez v2, :cond_63

    rem-int v2, v10, v2

    if-nez v2, :cond_63

    const/4 v0, 0x1

    :cond_63
    if-eqz v0, :cond_64

    new-instance v14, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v4, v8, Lv/f;->L:Lv/d;

    iget-object v5, v8, Lv/f;->M:Lv/d;

    iget-object v6, v8, Lv/f;->N:Lv/d;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, v29

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    iput v10, v14, Lv/h;->n:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_64
    if-lez v10, :cond_65

    iget v0, v8, Lv/i;->S0:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_35

    :cond_65
    :goto_34
    move/from16 v1, v16

    :goto_35
    invoke-virtual {v14, v12}, Lv/h;->a(Lv/f;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v19

    goto :goto_32

    :cond_66
    :goto_36
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v8, Lv/n;->y0:I

    iget v3, v8, Lv/n;->u0:I

    iget v4, v8, Lv/n;->z0:I

    iget v5, v8, Lv/n;->v0:I

    const/4 v6, 0x0

    aget-object v7, v21, v6

    move-object/from16 v6, v22

    if-eq v7, v6, :cond_68

    const/4 v7, 0x1

    aget-object v9, v21, v7

    if-ne v9, v6, :cond_67

    goto :goto_37

    :cond_67
    const/4 v6, 0x0

    goto :goto_38

    :cond_68
    :goto_37
    const/4 v6, 0x1

    :goto_38
    if-lez v0, :cond_6a

    if-eqz v6, :cond_6a

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_6a

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/h;

    if-nez v29, :cond_69

    invoke-virtual {v6}, Lv/h;->d()I

    move-result v7

    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Lv/h;->e(I)V

    goto :goto_3a

    :cond_69
    invoke-virtual {v6}, Lv/h;->c()I

    move-result v7

    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Lv/h;->e(I)V

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_6a
    move v6, v3

    move-object/from16 v0, v17

    move-object/from16 v12, v27

    move-object/from16 v11, v28

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, v2

    move-object/from16 v2, v18

    :goto_3b
    if-ge v7, v1, :cond_70

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/h;

    if-nez v29, :cond_6d

    add-int/lit8 v5, v1, -0x1

    if-ge v7, v5, :cond_6b

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/h;

    iget-object v5, v5, Lv/h;->b:Lv/f;

    iget-object v5, v5, Lv/f;->L:Lv/d;

    move-object v11, v5

    move-object/from16 v35, v13

    const/4 v5, 0x0

    goto :goto_3c

    :cond_6b
    iget v5, v8, Lv/n;->v0:I

    move-object/from16 v35, v13

    move-object/from16 v11, v28

    :goto_3c
    iget-object v13, v14, Lv/h;->b:Lv/f;

    iget-object v13, v13, Lv/f;->N:Lv/d;

    move-object/from16 v16, v14

    move/from16 v17, v29

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lv/h;->f(ILv/d;Lv/d;Lv/d;Lv/d;IIIII)V

    invoke-virtual {v14}, Lv/h;->d()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v14}, Lv/h;->c()I

    move-result v6

    add-int/2addr v6, v10

    if-lez v7, :cond_6c

    iget v9, v8, Lv/i;->S0:I

    add-int/2addr v6, v9

    :cond_6c
    move/from16 v31, v1

    move v9, v2

    move v10, v6

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v12, v35

    const/4 v6, 0x0

    goto :goto_3e

    :cond_6d
    move-object/from16 v35, v13

    add-int/lit8 v4, v1, -0x1

    if-ge v7, v4, :cond_6e

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v12, v35

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/h;

    iget-object v4, v4, Lv/h;->b:Lv/f;

    iget-object v4, v4, Lv/f;->K:Lv/d;

    move/from16 v31, v1

    const/4 v13, 0x0

    goto :goto_3d

    :cond_6e
    move-object/from16 v12, v35

    iget v4, v8, Lv/n;->z0:I

    move/from16 v31, v1

    move v13, v4

    move-object/from16 v4, v27

    :goto_3d
    iget-object v1, v14, Lv/h;->b:Lv/f;

    iget-object v1, v1, Lv/f;->M:Lv/d;

    move-object/from16 v16, v14

    move/from16 v17, v29

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v13

    move/from16 v25, v5

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lv/h;->f(ILv/d;Lv/d;Lv/d;Lv/d;IIIII)V

    invoke-virtual {v14}, Lv/h;->d()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v14}, Lv/h;->c()I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_6f

    iget v9, v8, Lv/i;->R0:I

    add-int/2addr v0, v9

    :cond_6f
    move v9, v0

    move-object v0, v1

    move v10, v3

    move-object v1, v4

    move v4, v13

    const/4 v3, 0x0

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    move-object v13, v12

    move-object v12, v1

    move/from16 v1, v31

    goto/16 :goto_3b

    :cond_70
    const/4 v0, 0x0

    aput v9, v33, v0

    const/4 v0, 0x1

    aput v10, v33, v0

    goto :goto_3f

    :cond_71
    move-object v12, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v6

    move/from16 v34, v7

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move v15, v5

    iget v2, v8, Lv/i;->X0:I

    if-nez v11, :cond_72

    :goto_3f
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v13, v30

    move/from16 v14, v32

    :goto_40
    move-object/from16 v6, v33

    move/from16 v7, v34

    move/from16 v15, v36

    move v4, v3

    const/16 v19, 0x0

    move v3, v2

    move v2, v1

    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_72
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_73

    new-instance v9, Lv/h;

    iget-object v3, v8, Lv/f;->K:Lv/d;

    iget-object v4, v8, Lv/f;->L:Lv/d;

    iget-object v5, v8, Lv/f;->M:Lv/d;

    iget-object v6, v8, Lv/f;->N:Lv/d;

    move-object v0, v9

    move-object/from16 v1, p0

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lv/h;-><init>(Lv/i;ILv/d;Lv/d;Lv/d;Lv/d;I)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_73
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lv/h;

    iput v0, v9, Lv/h;->c:I

    const/4 v1, 0x0

    iput-object v1, v9, Lv/h;->b:Lv/f;

    iput v0, v9, Lv/h;->l:I

    iput v0, v9, Lv/h;->m:I

    iput v0, v9, Lv/h;->n:I

    iput v0, v9, Lv/h;->o:I

    iput v0, v9, Lv/h;->p:I

    iget-object v0, v8, Lv/f;->K:Lv/d;

    iget-object v1, v8, Lv/f;->L:Lv/d;

    iget-object v3, v8, Lv/f;->M:Lv/d;

    iget-object v4, v8, Lv/f;->N:Lv/d;

    iget v5, v8, Lv/n;->y0:I

    iget v6, v8, Lv/n;->u0:I

    iget v7, v8, Lv/n;->z0:I

    iget v10, v8, Lv/n;->v0:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lv/h;->f(ILv/d;Lv/d;Lv/d;Lv/d;IIIII)V

    :goto_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v11, :cond_74

    aget-object v1, v31, v0

    invoke-virtual {v9, v1}, Lv/h;->a(Lv/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_74
    invoke-virtual {v9}, Lv/h;->d()I

    move-result v0

    const/16 v19, 0x0

    aput v0, v33, v19

    invoke-virtual {v9}, Lv/h;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v33, v1

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v13, v30

    move/from16 v14, v32

    move-object/from16 v6, v33

    move/from16 v7, v34

    move/from16 v15, v36

    :goto_43
    aget v5, v6, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v14

    aget v6, v6, v1

    add-int/2addr v6, v15

    add-int/2addr v6, v7

    const/high16 v7, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v9, :cond_75

    move v0, v2

    goto :goto_44

    :cond_75
    if-ne v0, v7, :cond_76

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_44

    :cond_76
    if-nez v0, :cond_77

    move v0, v5

    goto :goto_44

    :cond_77
    move/from16 v0, v19

    :goto_44
    if-ne v3, v9, :cond_78

    move v2, v4

    goto :goto_45

    :cond_78
    if-ne v3, v7, :cond_79

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_45

    :cond_79
    if-nez v3, :cond_7a

    move v2, v6

    goto :goto_45

    :cond_7a
    move/from16 v2, v19

    :goto_45
    iput v0, v8, Lv/n;->B0:I

    iput v2, v8, Lv/n;->C0:I

    invoke-virtual {v8, v0}, Lv/f;->O(I)V

    invoke-virtual {v8, v2}, Lv/f;->L(I)V

    iget v0, v8, Lv/l;->t0:I

    if-lez v0, :cond_7b

    move v11, v1

    goto :goto_46

    :cond_7b
    move/from16 v11, v19

    :goto_46
    iput-boolean v11, v8, Lv/n;->A0:Z

    return-void
.end method

.method public final U(ILv/f;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_5

    iget v3, p2, Lv/f;->t:I

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v3, p2, Lv/f;->A:F

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {p2}, Lv/f;->l()I

    move-result v3

    if-eq p1, v3, :cond_2

    iput-boolean v2, p2, Lv/f;->g:Z

    aget-object v6, v1, v0

    invoke-virtual {p2}, Lv/f;->r()I

    move-result v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v4, p0

    move-object v5, p2

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lv/n;->T(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p1

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {p2}, Lv/f;->l()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x3

    if-ne v3, p0, :cond_5

    invoke-virtual {p2}, Lv/f;->r()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Lv/f;->Z:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p2}, Lv/f;->l()I

    move-result p0

    return p0
.end method

.method public final V(ILv/f;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v1, v0

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_5

    iget v2, p2, Lv/f;->s:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p2, Lv/f;->x:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2}, Lv/f;->r()I

    move-result v0

    if-eq p1, v0, :cond_2

    iput-boolean v3, p2, Lv/f;->g:Z

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v1, v3

    invoke-virtual {p2}, Lv/f;->l()I

    move-result v9

    move-object v4, p0

    move-object v5, p2

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lv/n;->T(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p1

    :cond_3
    if-ne v2, v3, :cond_4

    invoke-virtual {p2}, Lv/f;->r()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x3

    if-ne v2, p0, :cond_5

    invoke-virtual {p2}, Lv/f;->l()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Lv/f;->Z:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p2}, Lv/f;->r()I

    move-result p0

    return p0
.end method

.method public final c(Lt/f;Z)V
    .locals 11

    invoke-super {p0, p1, p2}, Lv/f;->c(Lt/f;Z)V

    iget-object p1, p0, Lv/f;->W:Lv/f;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lv/g;

    iget-boolean p1, p1, Lv/g;->x0:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v1, p0, Lv/i;->V0:I

    iget-object v2, p0, Lv/i;->Y0:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    if-eq v1, v0, :cond_19

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_1
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/h;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Lv/h;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lv/i;->b1:[I

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lv/i;->a1:[Lv/f;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lv/i;->Z0:[Lv/f;

    if-nez v1, :cond_4

    goto/16 :goto_e

    :cond_4
    move v1, p2

    :goto_3
    iget v2, p0, Lv/i;->d1:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lv/i;->c1:[Lv/f;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lv/f;->E()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lv/i;->b1:[I

    aget v2, v1, p2

    aget v1, v1, v0

    iget v3, p0, Lv/i;->L0:F

    const/4 v4, 0x0

    move v5, p2

    :goto_4
    const/16 v6, 0x8

    if-ge v5, v2, :cond_c

    if-eqz p1, :cond_6

    sub-int v3, v2, v5

    sub-int/2addr v3, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lv/i;->L0:F

    sub-float/2addr v7, v8

    goto :goto_5

    :cond_6
    move v7, v3

    move v3, v5

    :goto_5
    iget-object v8, p0, Lv/i;->a1:[Lv/f;

    aget-object v3, v8, v3

    if-eqz v3, :cond_b

    iget v8, v3, Lv/f;->j0:I

    if-ne v8, v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v6, v3, Lv/f;->K:Lv/d;

    if-nez v5, :cond_8

    iget v8, p0, Lv/n;->y0:I

    iget-object v9, p0, Lv/f;->K:Lv/d;

    invoke-virtual {v3, v6, v9, v8}, Lv/f;->g(Lv/d;Lv/d;I)V

    iget v8, p0, Lv/i;->F0:I

    iput v8, v3, Lv/f;->l0:I

    iput v7, v3, Lv/f;->g0:F

    :cond_8
    add-int/lit8 v8, v2, -0x1

    if-ne v5, v8, :cond_9

    iget v8, p0, Lv/n;->z0:I

    iget-object v9, v3, Lv/f;->M:Lv/d;

    iget-object v10, p0, Lv/f;->M:Lv/d;

    invoke-virtual {v3, v9, v10, v8}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_9
    if-lez v5, :cond_a

    if-eqz v4, :cond_a

    iget v8, p0, Lv/i;->R0:I

    iget-object v9, v4, Lv/f;->M:Lv/d;

    invoke-virtual {v3, v6, v9, v8}, Lv/f;->g(Lv/d;Lv/d;I)V

    invoke-virtual {v4, v9, v6, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_a
    move-object v4, v3

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_4

    :cond_c
    move p1, p2

    :goto_7
    if-ge p1, v1, :cond_12

    iget-object v3, p0, Lv/i;->Z0:[Lv/f;

    aget-object v3, v3, p1

    if-eqz v3, :cond_11

    iget v5, v3, Lv/f;->j0:I

    if-ne v5, v6, :cond_d

    goto :goto_8

    :cond_d
    iget-object v5, v3, Lv/f;->L:Lv/d;

    if-nez p1, :cond_e

    iget v7, p0, Lv/n;->u0:I

    iget-object v8, p0, Lv/f;->L:Lv/d;

    invoke-virtual {v3, v5, v8, v7}, Lv/f;->g(Lv/d;Lv/d;I)V

    iget v7, p0, Lv/i;->G0:I

    iput v7, v3, Lv/f;->m0:I

    iget v7, p0, Lv/i;->M0:F

    iput v7, v3, Lv/f;->h0:F

    :cond_e
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_f

    iget v7, p0, Lv/n;->v0:I

    iget-object v8, v3, Lv/f;->N:Lv/d;

    iget-object v9, p0, Lv/f;->N:Lv/d;

    invoke-virtual {v3, v8, v9, v7}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_f
    if-lez p1, :cond_10

    if-eqz v4, :cond_10

    iget v7, p0, Lv/i;->S0:I

    iget-object v8, v4, Lv/f;->N:Lv/d;

    invoke-virtual {v3, v5, v8, v7}, Lv/f;->g(Lv/d;Lv/d;I)V

    invoke-virtual {v4, v8, v5, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_10
    move-object v4, v3

    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    move p1, p2

    :goto_9
    if-ge p1, v2, :cond_1c

    move v3, p2

    :goto_a
    if-ge v3, v1, :cond_18

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Lv/i;->X0:I

    if-ne v5, v0, :cond_13

    mul-int v4, p1, v1

    add-int/2addr v4, v3

    :cond_13
    iget-object v5, p0, Lv/i;->c1:[Lv/f;

    array-length v7, v5

    if-lt v4, v7, :cond_14

    goto :goto_b

    :cond_14
    aget-object v4, v5, v4

    if-eqz v4, :cond_17

    iget v5, v4, Lv/f;->j0:I

    if-ne v5, v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lv/i;->a1:[Lv/f;

    aget-object v5, v5, p1

    iget-object v7, p0, Lv/i;->Z0:[Lv/f;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_16

    iget-object v8, v5, Lv/f;->K:Lv/d;

    iget-object v9, v4, Lv/f;->K:Lv/d;

    invoke-virtual {v4, v9, v8, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    iget-object v8, v4, Lv/f;->M:Lv/d;

    iget-object v5, v5, Lv/f;->M:Lv/d;

    invoke-virtual {v4, v8, v5, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_16
    if-eq v4, v7, :cond_17

    iget-object v5, v7, Lv/f;->L:Lv/d;

    iget-object v8, v4, Lv/f;->L:Lv/d;

    invoke-virtual {v4, v8, v5, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    iget-object v5, v4, Lv/f;->N:Lv/d;

    iget-object v7, v7, Lv/f;->N:Lv/d;

    invoke-virtual {v4, v5, v7, p2}, Lv/f;->g(Lv/d;Lv/d;I)V

    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_c
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/h;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_1a

    move v5, v0

    goto :goto_d

    :cond_1a
    move v5, p2

    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Lv/h;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/h;

    invoke-virtual {v1, p2, p1, v0}, Lv/h;->b(IZZ)V

    :cond_1c
    :goto_e
    iput-boolean p2, p0, Lv/n;->A0:Z

    return-void
.end method
