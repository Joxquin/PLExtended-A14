.class public final Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lv/g;Lt/f;Ljava/util/ArrayList;I)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-nez p3, :cond_0

    iget v1, v0, Lv/g;->B0:I

    iget-object v2, v0, Lv/g;->E0:[Lv/c;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lv/g;->C0:I

    iget-object v2, v0, Lv/g;->D0:[Lv/c;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_6f

    aget-object v1, v15, v9

    iget-boolean v2, v1, Lv/c;->q:Z

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v8, 0x8

    const/4 v5, 0x1

    iget-object v7, v1, Lv/c;->a:Lv/f;

    const/16 v17, 0x0

    if-nez v2, :cond_15

    iget v2, v1, Lv/c;->l:I

    mul-int/lit8 v6, v2, 0x2

    move-object v13, v7

    move-object/from16 v20, v13

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_10

    iget v4, v1, Lv/c;->i:I

    add-int/2addr v4, v5

    iput v4, v1, Lv/c;->i:I

    iget-object v4, v13, Lv/f;->p0:[Lv/f;

    aput-object v17, v4, v2

    iget-object v4, v13, Lv/f;->o0:[Lv/f;

    aput-object v17, v4, v2

    iget v4, v13, Lv/f;->j0:I

    iget-object v5, v13, Lv/f;->S:[Lv/d;

    if-eq v4, v8, :cond_b

    invoke-virtual {v13, v2}, Lv/f;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    aget-object v4, v5, v6

    invoke-virtual {v4}, Lv/d;->e()I

    add-int/lit8 v4, v6, 0x1

    aget-object v23, v5, v4

    invoke-virtual/range {v23 .. v23}, Lv/d;->e()I

    aget-object v23, v5, v6

    invoke-virtual/range {v23 .. v23}, Lv/d;->e()I

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lv/d;->e()I

    iget-object v4, v1, Lv/c;->b:Lv/f;

    if-nez v4, :cond_1

    iput-object v13, v1, Lv/c;->b:Lv/f;

    :cond_1
    iput-object v13, v1, Lv/c;->d:Lv/f;

    iget-object v4, v13, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v2

    if-ne v4, v3, :cond_b

    iget-object v8, v13, Lv/f;->u:[I

    aget v8, v8, v2

    const/4 v12, 0x3

    if-eqz v8, :cond_2

    if-eq v8, v12, :cond_2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_b

    :cond_2
    iget v12, v1, Lv/c;->j:I

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lv/c;->j:I

    iget-object v12, v13, Lv/f;->n0:[F

    aget v12, v12, v2

    const/16 v21, 0x0

    cmpl-float v25, v12, v21

    if-lez v25, :cond_3

    move/from16 v25, v9

    iget v9, v1, Lv/c;->k:F

    add-float/2addr v9, v12

    iput v9, v1, Lv/c;->k:F

    goto :goto_3

    :cond_3
    move/from16 v25, v9

    :goto_3
    iget v9, v13, Lv/f;->j0:I

    move/from16 v26, v14

    const/16 v14, 0x8

    if-eq v9, v14, :cond_5

    if-ne v4, v3, :cond_5

    if-eqz v8, :cond_4

    const/4 v4, 0x3

    if-ne v8, v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    const/4 v4, 0x0

    cmpg-float v8, v12, v4

    if-gez v8, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v1, Lv/c;->n:Z

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v1, Lv/c;->o:Z

    :goto_5
    iget-object v4, v1, Lv/c;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lv/c;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v4, v1, Lv/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v4, v1, Lv/c;->f:Lv/f;

    if-nez v4, :cond_9

    iput-object v13, v1, Lv/c;->f:Lv/f;

    :cond_9
    iget-object v4, v1, Lv/c;->g:Lv/f;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lv/f;->o0:[Lv/f;

    aput-object v13, v4, v2

    :cond_a
    iput-object v13, v1, Lv/c;->g:Lv/f;

    goto :goto_6

    :cond_b
    move/from16 v25, v9

    move/from16 v26, v14

    :goto_6
    move-object/from16 v4, v20

    if-eq v4, v13, :cond_c

    iget-object v4, v4, Lv/f;->p0:[Lv/f;

    aput-object v13, v4, v2

    :cond_c
    add-int/lit8 v4, v6, 0x1

    aget-object v4, v5, v4

    iget-object v4, v4, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lv/d;->d:Lv/f;

    iget-object v5, v4, Lv/f;->S:[Lv/d;

    aget-object v5, v5, v6

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lv/d;->d:Lv/f;

    if-eq v5, v13, :cond_e

    :cond_d
    move-object/from16 v4, v17

    :cond_e
    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    move-object v4, v13

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v20, v13

    move/from16 v9, v25

    move/from16 v14, v26

    const/4 v5, 0x1

    const/16 v8, 0x8

    move-object v13, v4

    goto/16 :goto_2

    :cond_10
    move/from16 v25, v9

    move/from16 v26, v14

    iget-object v4, v1, Lv/c;->b:Lv/f;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lv/d;->e()I

    :cond_11
    iget-object v4, v1, Lv/c;->d:Lv/f;

    if-eqz v4, :cond_12

    add-int/lit8 v6, v6, 0x1

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lv/d;->e()I

    :cond_12
    iput-object v13, v1, Lv/c;->c:Lv/f;

    if-nez v2, :cond_13

    iget-boolean v2, v1, Lv/c;->m:Z

    if-eqz v2, :cond_13

    iput-object v13, v1, Lv/c;->e:Lv/f;

    goto :goto_8

    :cond_13
    iput-object v7, v1, Lv/c;->e:Lv/f;

    :goto_8
    iget-boolean v2, v1, Lv/c;->o:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v1, Lv/c;->n:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v1, Lv/c;->p:Z

    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    move/from16 v25, v9

    move/from16 v26, v14

    move v2, v5

    :goto_a
    iput-boolean v2, v1, Lv/c;->q:Z

    if-eqz v11, :cond_17

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    move-object/from16 v31, v15

    move/from16 v27, v25

    const/16 v19, 0x0

    goto/16 :goto_48

    :cond_17
    :goto_b
    iget-object v12, v1, Lv/c;->c:Lv/f;

    iget-object v13, v1, Lv/c;->b:Lv/f;

    iget-object v14, v1, Lv/c;->d:Lv/f;

    iget-object v2, v1, Lv/c;->e:Lv/f;

    iget v4, v1, Lv/c;->k:F

    iget-object v5, v0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p3

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_18

    const/4 v5, 0x1

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    if-nez p3, :cond_1c

    iget v6, v2, Lv/f;->l0:I

    const/4 v8, 0x1

    if-nez v6, :cond_19

    const/16 v22, 0x1

    goto :goto_d

    :cond_19
    const/16 v22, 0x0

    :goto_d
    if-ne v6, v8, :cond_1a

    move/from16 v18, v8

    const/4 v9, 0x2

    goto :goto_e

    :cond_1a
    const/4 v9, 0x2

    const/16 v18, 0x0

    :goto_e
    if-ne v6, v9, :cond_1b

    move/from16 v6, v22

    goto :goto_11

    :cond_1b
    move/from16 v6, v22

    goto :goto_12

    :cond_1c
    const/4 v8, 0x1

    const/4 v9, 0x2

    iget v6, v2, Lv/f;->m0:I

    if-nez v6, :cond_1d

    move/from16 v18, v8

    goto :goto_f

    :cond_1d
    const/16 v18, 0x0

    :goto_f
    if-ne v6, v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_10

    :cond_1e
    const/4 v8, 0x0

    :goto_10
    if-ne v6, v9, :cond_1f

    move/from16 v6, v18

    move/from16 v18, v8

    :goto_11
    move/from16 v20, v18

    move/from16 v18, v6

    const/4 v6, 0x1

    goto :goto_13

    :cond_1f
    move/from16 v6, v18

    move/from16 v18, v8

    :goto_12
    move/from16 v20, v18

    move/from16 v18, v6

    const/4 v6, 0x0

    :goto_13
    move/from16 v24, v4

    move-object v9, v7

    const/4 v8, 0x0

    :goto_14
    iget-object v4, v0, Lv/f;->S:[Lv/d;

    if-nez v8, :cond_2d

    move/from16 v29, v8

    iget-object v8, v9, Lv/f;->S:[Lv/d;

    aget-object v8, v8, v16

    if-eqz v6, :cond_20

    const/16 v28, 0x1

    goto :goto_15

    :cond_20
    const/16 v28, 0x4

    :goto_15
    invoke-virtual {v8}, Lv/d;->e()I

    move-result v30

    iget-object v11, v9, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v31, v15

    aget-object v15, v11, p3

    if-ne v15, v3, :cond_21

    iget-object v15, v9, Lv/f;->u:[I

    aget v15, v15, p3

    if-nez v15, :cond_21

    move-object/from16 v32, v2

    const/4 v15, 0x1

    goto :goto_16

    :cond_21
    move-object/from16 v32, v2

    const/4 v15, 0x0

    :goto_16
    iget-object v2, v8, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_22

    if-eq v9, v7, :cond_22

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    add-int v30, v2, v30

    :cond_22
    move/from16 v2, v30

    if-eqz v6, :cond_23

    if-eq v9, v7, :cond_23

    if-eq v9, v13, :cond_23

    move-object/from16 v30, v7

    const/16 v28, 0x8

    goto :goto_17

    :cond_23
    move-object/from16 v30, v7

    :goto_17
    iget-object v7, v8, Lv/d;->f:Lv/d;

    if-eqz v7, :cond_27

    if-ne v9, v13, :cond_24

    move-object/from16 v33, v1

    iget-object v1, v8, Lv/d;->i:Lt/m;

    iget-object v7, v7, Lv/d;->i:Lt/m;

    const/4 v0, 0x6

    invoke-virtual {v10, v1, v7, v2, v0}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_18

    :cond_24
    move-object/from16 v33, v1

    iget-object v0, v8, Lv/d;->i:Lt/m;

    iget-object v1, v7, Lv/d;->i:Lt/m;

    const/16 v7, 0x8

    invoke-virtual {v10, v0, v1, v2, v7}, Lt/f;->f(Lt/m;Lt/m;II)V

    :goto_18
    if-eqz v15, :cond_25

    if-nez v6, :cond_25

    const/16 v28, 0x5

    :cond_25
    if-ne v9, v13, :cond_26

    if-eqz v6, :cond_26

    iget-object v0, v9, Lv/f;->U:[Z

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_26

    const/4 v0, 0x5

    goto :goto_19

    :cond_26
    move/from16 v0, v28

    :goto_19
    iget-object v1, v8, Lv/d;->i:Lt/m;

    iget-object v7, v8, Lv/d;->f:Lv/d;

    iget-object v7, v7, Lv/d;->i:Lt/m;

    invoke-virtual {v10, v1, v7, v2, v0}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_1a

    :cond_27
    move-object/from16 v33, v1

    :goto_1a
    iget-object v0, v9, Lv/f;->S:[Lv/d;

    if-eqz v5, :cond_29

    iget v1, v9, Lv/f;->j0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    aget-object v1, v11, p3

    if-ne v1, v3, :cond_28

    add-int/lit8 v1, v16, 0x1

    aget-object v1, v0, v1

    iget-object v1, v1, Lv/d;->i:Lt/m;

    aget-object v2, v0, v16

    iget-object v2, v2, Lv/d;->i:Lt/m;

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v10, v1, v2, v8, v7}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_1b

    :cond_28
    const/4 v8, 0x0

    :goto_1b
    aget-object v1, v0, v16

    iget-object v1, v1, Lv/d;->i:Lt/m;

    aget-object v2, v4, v16

    iget-object v2, v2, Lv/d;->i:Lt/m;

    const/16 v4, 0x8

    invoke-virtual {v10, v1, v2, v8, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_29
    add-int/lit8 v1, v16, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lv/d;->d:Lv/f;

    iget-object v1, v0, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v16

    iget-object v1, v1, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lv/d;->d:Lv/f;

    if-eq v1, v9, :cond_2b

    :cond_2a
    move-object/from16 v0, v17

    :cond_2b
    if-eqz v0, :cond_2c

    move-object v9, v0

    move/from16 v8, v29

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x1

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v7, v30

    move-object/from16 v15, v31

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    goto/16 :goto_14

    :cond_2d
    move-object/from16 v33, v1

    move-object/from16 v32, v2

    move-object/from16 v30, v7

    move-object/from16 v31, v15

    if-eqz v14, :cond_32

    iget-object v0, v12, Lv/f;->S:[Lv/d;

    add-int/lit8 v1, v16, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_32

    iget-object v0, v14, Lv/f;->S:[Lv/d;

    aget-object v0, v0, v1

    iget-object v2, v14, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p3

    if-ne v2, v3, :cond_2e

    iget-object v2, v14, Lv/f;->u:[I

    aget v2, v2, p3

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_30

    if-nez v6, :cond_30

    iget-object v2, v0, Lv/d;->f:Lv/d;

    iget-object v3, v2, Lv/d;->d:Lv/f;

    move-object/from16 v11, p0

    if-ne v3, v11, :cond_2f

    iget-object v3, v0, Lv/d;->i:Lt/m;

    iget-object v2, v2, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v8, 0x5

    invoke-virtual {v10, v3, v2, v7, v8}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_1f

    :cond_2f
    const/4 v8, 0x5

    goto :goto_1e

    :cond_30
    const/4 v8, 0x5

    move-object/from16 v11, p0

    :goto_1e
    if-eqz v6, :cond_31

    iget-object v2, v0, Lv/d;->f:Lv/d;

    iget-object v3, v2, Lv/d;->d:Lv/f;

    if-ne v3, v11, :cond_31

    iget-object v3, v0, Lv/d;->i:Lt/m;

    iget-object v2, v2, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v9, 0x4

    invoke-virtual {v10, v3, v2, v7, v9}, Lt/f;->e(Lt/m;Lt/m;II)V

    :cond_31
    :goto_1f
    iget-object v2, v0, Lv/d;->i:Lt/m;

    iget-object v3, v12, Lv/f;->S:[Lv/d;

    aget-object v1, v3, v1

    iget-object v1, v1, Lv/d;->f:Lv/d;

    iget-object v1, v1, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v0

    neg-int v0, v0

    const/4 v3, 0x6

    invoke-virtual {v10, v2, v1, v0, v3}, Lt/f;->g(Lt/m;Lt/m;II)V

    goto :goto_20

    :cond_32
    const/4 v8, 0x5

    move-object/from16 v11, p0

    :goto_20
    if-eqz v5, :cond_33

    add-int/lit8 v0, v16, 0x1

    aget-object v1, v4, v0

    iget-object v1, v1, Lv/d;->i:Lt/m;

    iget-object v2, v12, Lv/f;->S:[Lv/d;

    aget-object v0, v2, v0

    iget-object v2, v0, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v0

    const/16 v3, 0x8

    invoke-virtual {v10, v1, v2, v0, v3}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_33
    move-object/from16 v0, v33

    iget-object v1, v0, Lv/c;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3d

    iget-boolean v4, v0, Lv/c;->n:Z

    if-eqz v4, :cond_34

    iget-boolean v4, v0, Lv/c;->p:Z

    if-nez v4, :cond_34

    iget v4, v0, Lv/c;->j:I

    int-to-float v4, v4

    goto :goto_21

    :cond_34
    move/from16 v4, v24

    :goto_21
    move-object/from16 v9, v17

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_22
    if-ge v5, v2, :cond_3d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv/f;

    iget-object v3, v15, Lv/f;->n0:[F

    aget v3, v3, p3

    const/16 v21, 0x0

    cmpg-float v24, v3, v21

    iget-object v8, v15, Lv/f;->S:[Lv/d;

    if-gez v24, :cond_36

    iget-boolean v3, v0, Lv/c;->p:Z

    if-eqz v3, :cond_35

    add-int/lit8 v3, v16, 0x1

    aget-object v3, v8, v3

    iget-object v3, v3, Lv/d;->i:Lt/m;

    aget-object v8, v8, v16

    iget-object v8, v8, Lv/d;->i:Lt/m;

    move-object/from16 v24, v1

    const/4 v1, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v3, v8, v1, v15}, Lt/f;->e(Lt/m;Lt/m;II)V

    move/from16 v28, v15

    move v15, v1

    goto :goto_24

    :cond_35
    move-object/from16 v24, v1

    const/16 v28, 0x4

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_36
    move-object/from16 v24, v1

    const/16 v28, 0x4

    const/4 v1, 0x0

    :goto_23
    cmpl-float v29, v3, v1

    if-nez v29, :cond_37

    add-int/lit8 v1, v16, 0x1

    aget-object v1, v8, v1

    iget-object v1, v1, Lv/d;->i:Lt/m;

    aget-object v3, v8, v16

    iget-object v3, v3, Lv/d;->i:Lt/m;

    const/16 v8, 0x8

    const/4 v15, 0x0

    invoke-virtual {v10, v1, v3, v15, v8}, Lt/f;->e(Lt/m;Lt/m;II)V

    :goto_24
    move/from16 v34, v2

    move/from16 v19, v15

    const/16 v21, 0x0

    goto/16 :goto_29

    :cond_37
    const/16 v19, 0x0

    if-eqz v9, :cond_3c

    iget-object v1, v9, Lv/f;->S:[Lv/d;

    aget-object v9, v1, v16

    iget-object v9, v9, Lv/d;->i:Lt/m;

    add-int/lit8 v33, v16, 0x1

    aget-object v1, v1, v33

    iget-object v1, v1, Lv/d;->i:Lt/m;

    move/from16 v34, v2

    aget-object v2, v8, v16

    iget-object v2, v2, Lv/d;->i:Lt/m;

    aget-object v8, v8, v33

    iget-object v8, v8, Lv/d;->i:Lt/m;

    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v11

    move-object/from16 v33, v15

    const/4 v15, 0x0

    iput v15, v11, Lt/d;->b:F

    cmpl-float v21, v4, v15

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v21, :cond_3b

    cmpl-float v21, v7, v3

    if-nez v21, :cond_38

    goto :goto_26

    :cond_38
    const/16 v21, 0x0

    cmpl-float v35, v7, v21

    if-nez v35, :cond_39

    iget-object v2, v11, Lt/d;->d:Lt/c;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v2, v9, v7}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v11, Lt/d;->d:Lt/c;

    invoke-interface {v2, v1, v15}, Lt/c;->d(Lt/m;F)V

    goto :goto_25

    :cond_39
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v29, :cond_3a

    iget-object v1, v11, Lt/d;->d:Lt/c;

    invoke-interface {v1, v2, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v11, Lt/d;->d:Lt/c;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v8, v2}, Lt/c;->d(Lt/m;F)V

    :goto_25
    move/from16 v27, v3

    goto :goto_27

    :cond_3a
    div-float/2addr v7, v4

    div-float v27, v3, v4

    div-float v7, v7, v27

    move/from16 v27, v3

    iget-object v3, v11, Lt/d;->d:Lt/c;

    invoke-interface {v3, v9, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v3, v11, Lt/d;->d:Lt/c;

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v3, v1, v9}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v11, Lt/d;->d:Lt/c;

    invoke-interface {v1, v8, v7}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v11, Lt/d;->d:Lt/c;

    neg-float v3, v7

    invoke-interface {v1, v2, v3}, Lt/c;->d(Lt/m;F)V

    goto :goto_27

    :cond_3b
    :goto_26
    move/from16 v27, v3

    move v3, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    iget-object v7, v11, Lt/d;->d:Lt/c;

    invoke-interface {v7, v9, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v7, v11, Lt/d;->d:Lt/c;

    invoke-interface {v7, v1, v3}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v11, Lt/d;->d:Lt/c;

    invoke-interface {v1, v8, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v11, Lt/d;->d:Lt/c;

    invoke-interface {v1, v2, v3}, Lt/c;->d(Lt/m;F)V

    :goto_27
    invoke-virtual {v10, v11}, Lt/f;->c(Lt/d;)V

    goto :goto_28

    :cond_3c
    move/from16 v34, v2

    move/from16 v27, v3

    move-object/from16 v33, v15

    const/16 v21, 0x0

    :goto_28
    move/from16 v7, v27

    move-object/from16 v9, v33

    :goto_29
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    move/from16 v2, v34

    const/4 v3, 0x1

    const/4 v8, 0x5

    move-object/from16 v11, p0

    goto/16 :goto_22

    :cond_3d
    const/16 v19, 0x0

    const/16 v28, 0x4

    if-eqz v13, :cond_44

    if-eq v13, v14, :cond_3e

    if-eqz v6, :cond_44

    :cond_3e
    move-object/from16 v7, v30

    iget-object v0, v7, Lv/f;->S:[Lv/d;

    aget-object v0, v0, v16

    iget-object v1, v12, Lv/f;->S:[Lv/d;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lv/d;->i:Lt/m;

    move-object v3, v0

    goto :goto_2a

    :cond_3f
    move-object/from16 v3, v17

    :goto_2a
    iget-object v0, v1, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_40

    iget-object v0, v0, Lv/d;->i:Lt/m;

    move-object v6, v0

    goto :goto_2b

    :cond_40
    move-object/from16 v6, v17

    :goto_2b
    iget-object v0, v13, Lv/f;->S:[Lv/d;

    aget-object v0, v0, v16

    if-eqz v14, :cond_41

    iget-object v1, v14, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v2

    :cond_41
    if-eqz v3, :cond_43

    if-eqz v6, :cond_43

    if-nez p3, :cond_42

    move-object/from16 v2, v32

    iget v2, v2, Lv/f;->g0:F

    goto :goto_2c

    :cond_42
    move-object/from16 v2, v32

    iget v2, v2, Lv/f;->h0:F

    :goto_2c
    move v5, v2

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v4

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v8

    iget-object v2, v0, Lv/d;->i:Lt/m;

    iget-object v7, v1, Lv/d;->i:Lt/m;

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move/from16 v11, v25

    const/4 v15, 0x2

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    goto/16 :goto_37

    :cond_43
    move/from16 v11, v25

    const/4 v15, 0x2

    goto/16 :goto_37

    :cond_44
    move/from16 v11, v25

    move-object/from16 v7, v30

    const/4 v15, 0x2

    if-eqz v18, :cond_57

    if-eqz v13, :cond_57

    iget v1, v0, Lv/c;->j:I

    if-lez v1, :cond_45

    iget v0, v0, Lv/c;->i:I

    if-ne v0, v1, :cond_45

    const/16 v22, 0x1

    goto :goto_2d

    :cond_45
    move/from16 v22, v19

    :goto_2d
    move-object v0, v13

    move-object v9, v0

    :goto_2e
    if-eqz v0, :cond_56

    iget-object v1, v0, Lv/f;->p0:[Lv/f;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2f
    if-eqz v8, :cond_46

    iget v1, v8, Lv/f;->j0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_47

    iget-object v1, v8, Lv/f;->p0:[Lv/f;

    aget-object v8, v1, p3

    goto :goto_2f

    :cond_46
    const/16 v6, 0x8

    :cond_47
    if-nez v8, :cond_49

    if-ne v0, v14, :cond_48

    goto :goto_30

    :cond_48
    move-object v15, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move/from16 v27, v11

    move v11, v6

    goto/16 :goto_35

    :cond_49
    :goto_30
    iget-object v1, v0, Lv/f;->S:[Lv/d;

    aget-object v2, v1, v16

    iget-object v3, v2, Lv/d;->i:Lt/m;

    iget-object v4, v2, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_4a

    iget-object v4, v4, Lv/d;->i:Lt/m;

    goto :goto_31

    :cond_4a
    move-object/from16 v4, v17

    :goto_31
    if-eq v9, v0, :cond_4b

    iget-object v4, v9, Lv/f;->S:[Lv/d;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lv/d;->i:Lt/m;

    goto :goto_32

    :cond_4b
    if-ne v0, v13, :cond_4d

    iget-object v4, v7, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_4c

    iget-object v4, v4, Lv/d;->i:Lt/m;

    goto :goto_32

    :cond_4c
    move-object/from16 v4, v17

    :cond_4d
    :goto_32
    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v21, v1, v5

    invoke-virtual/range {v21 .. v21}, Lv/d;->e()I

    move-result v21

    if-eqz v8, :cond_4e

    iget-object v6, v8, Lv/f;->S:[Lv/d;

    aget-object v6, v6, v16

    iget-object v15, v6, Lv/d;->i:Lt/m;

    goto :goto_33

    :cond_4e
    iget-object v6, v12, Lv/f;->S:[Lv/d;

    aget-object v6, v6, v5

    iget-object v6, v6, Lv/d;->f:Lv/d;

    if-eqz v6, :cond_4f

    iget-object v15, v6, Lv/d;->i:Lt/m;

    goto :goto_33

    :cond_4f
    move-object/from16 v15, v17

    :goto_33
    aget-object v1, v1, v5

    iget-object v1, v1, Lv/d;->i:Lt/m;

    if-eqz v6, :cond_50

    invoke-virtual {v6}, Lv/d;->e()I

    move-result v6

    add-int v21, v6, v21

    :cond_50
    iget-object v6, v9, Lv/f;->S:[Lv/d;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lv/d;->e()I

    move-result v6

    add-int/2addr v6, v2

    if-eqz v3, :cond_54

    if-eqz v4, :cond_54

    if-eqz v15, :cond_54

    if-eqz v1, :cond_54

    if-ne v0, v13, :cond_51

    iget-object v2, v13, Lv/f;->S:[Lv/d;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    move v6, v2

    :cond_51
    if-ne v0, v14, :cond_52

    iget-object v2, v14, Lv/f;->S:[Lv/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    move/from16 v21, v2

    :cond_52
    if-eqz v22, :cond_53

    const/16 v24, 0x8

    goto :goto_34

    :cond_53
    const/16 v24, 0x5

    :goto_34
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move/from16 v27, v11

    const/4 v11, 0x5

    move v4, v6

    const/16 v23, 0x8

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, v25

    move/from16 v11, v23

    move-object/from16 v23, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    goto :goto_35

    :cond_54
    move-object v15, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move/from16 v27, v11

    const/16 v11, 0x8

    :goto_35
    iget v1, v0, Lv/f;->j0:I

    if-eq v1, v11, :cond_55

    move-object v9, v0

    goto :goto_36

    :cond_55
    move-object/from16 v9, v21

    :goto_36
    move-object v7, v15

    move-object/from16 v0, v23

    move/from16 v11, v27

    const/4 v15, 0x2

    goto/16 :goto_2e

    :cond_56
    :goto_37
    move/from16 v27, v11

    goto/16 :goto_44

    :cond_57
    move-object v15, v7

    move/from16 v27, v11

    const/16 v11, 0x8

    if-eqz v20, :cond_66

    if-eqz v13, :cond_66

    iget v1, v0, Lv/c;->j:I

    if-lez v1, :cond_58

    iget v0, v0, Lv/c;->i:I

    if-ne v0, v1, :cond_58

    const/16 v22, 0x1

    goto :goto_38

    :cond_58
    move/from16 v22, v19

    :goto_38
    move-object v0, v13

    move-object v9, v0

    :goto_39
    if-eqz v0, :cond_63

    iget-object v1, v0, Lv/f;->p0:[Lv/f;

    aget-object v1, v1, p3

    :goto_3a
    if-eqz v1, :cond_59

    iget v2, v1, Lv/f;->j0:I

    if-ne v2, v11, :cond_59

    iget-object v1, v1, Lv/f;->p0:[Lv/f;

    aget-object v1, v1, p3

    goto :goto_3a

    :cond_59
    if-eq v0, v13, :cond_61

    if-eq v0, v14, :cond_61

    if-eqz v1, :cond_61

    if-ne v1, v14, :cond_5a

    move-object/from16 v8, v17

    goto :goto_3b

    :cond_5a
    move-object v8, v1

    :goto_3b
    iget-object v1, v0, Lv/f;->S:[Lv/d;

    aget-object v2, v1, v16

    iget-object v3, v2, Lv/d;->i:Lt/m;

    iget-object v4, v9, Lv/f;->S:[Lv/d;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lv/d;->i:Lt/m;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lv/d;->e()I

    move-result v6

    if-eqz v8, :cond_5c

    iget-object v1, v8, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v16

    iget-object v7, v1, Lv/d;->i:Lt/m;

    iget-object v11, v1, Lv/d;->f:Lv/d;

    if-eqz v11, :cond_5b

    iget-object v11, v11, Lv/d;->i:Lt/m;

    goto :goto_3d

    :cond_5b
    move-object/from16 v11, v17

    goto :goto_3d

    :cond_5c
    iget-object v7, v14, Lv/f;->S:[Lv/d;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5d

    iget-object v11, v7, Lv/d;->i:Lt/m;

    goto :goto_3c

    :cond_5d
    move-object/from16 v11, v17

    :goto_3c
    aget-object v1, v1, v5

    iget-object v1, v1, Lv/d;->i:Lt/m;

    move-object/from16 v36, v11

    move-object v11, v1

    move-object v1, v7

    move-object/from16 v7, v36

    :goto_3d
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v21, v1

    goto :goto_3e

    :cond_5e
    move/from16 v21, v6

    :goto_3e
    iget-object v1, v9, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v22, :cond_5f

    const/16 v24, 0x8

    goto :goto_3f

    :cond_5f
    move/from16 v24, v28

    :goto_3f
    if-eqz v3, :cond_60

    if-eqz v4, :cond_60

    if-eqz v7, :cond_60

    if-eqz v11, :cond_60

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move/from16 v25, v28

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v11

    move-object v11, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    goto :goto_40

    :cond_60
    move-object v11, v8

    move-object/from16 v21, v9

    move/from16 v25, v28

    :goto_40
    move-object v1, v11

    goto :goto_41

    :cond_61
    move-object/from16 v21, v9

    move/from16 v25, v28

    :goto_41
    iget v2, v0, Lv/f;->j0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    move-object v9, v0

    goto :goto_42

    :cond_62
    move-object/from16 v9, v21

    :goto_42
    move-object v0, v1

    move v11, v3

    move/from16 v28, v25

    goto/16 :goto_39

    :cond_63
    iget-object v0, v13, Lv/f;->S:[Lv/d;

    aget-object v0, v0, v16

    iget-object v1, v15, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v16

    iget-object v1, v1, Lv/d;->f:Lv/d;

    iget-object v2, v14, Lv/f;->S:[Lv/d;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v12, Lv/f;->S:[Lv/d;

    aget-object v2, v2, v3

    iget-object v15, v2, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_65

    if-eq v13, v14, :cond_64

    iget-object v2, v0, Lv/d;->i:Lt/m;

    iget-object v1, v1, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v0

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v1, v0, v3}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_43

    :cond_64
    if-eqz v15, :cond_65

    iget-object v2, v0, Lv/d;->i:Lt/m;

    iget-object v3, v1, Lv/d;->i:Lt/m;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Lv/d;->i:Lt/m;

    iget-object v7, v15, Lv/d;->i:Lt/m;

    invoke-virtual {v11}, Lv/d;->e()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    :cond_65
    :goto_43
    if-eqz v15, :cond_66

    if-eq v13, v14, :cond_66

    iget-object v0, v11, Lv/d;->i:Lt/m;

    iget-object v1, v15, Lv/d;->i:Lt/m;

    invoke-virtual {v11}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Lt/f;->e(Lt/m;Lt/m;II)V

    :cond_66
    :goto_44
    if-nez v18, :cond_67

    if-eqz v20, :cond_6e

    :cond_67
    if-eqz v13, :cond_6e

    if-eq v13, v14, :cond_6e

    iget-object v0, v13, Lv/f;->S:[Lv/d;

    aget-object v1, v0, v16

    if-nez v14, :cond_68

    move-object v14, v13

    :cond_68
    add-int/lit8 v2, v16, 0x1

    iget-object v3, v14, Lv/f;->S:[Lv/d;

    aget-object v3, v3, v2

    iget-object v4, v1, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_69

    iget-object v4, v4, Lv/d;->i:Lt/m;

    goto :goto_45

    :cond_69
    move-object/from16 v4, v17

    :goto_45
    iget-object v5, v3, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Lv/d;->i:Lt/m;

    goto :goto_46

    :cond_6a
    move-object/from16 v5, v17

    :goto_46
    if-eq v12, v14, :cond_6c

    iget-object v5, v12, Lv/f;->S:[Lv/d;

    aget-object v5, v5, v2

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_6b

    iget-object v5, v5, Lv/d;->i:Lt/m;

    move-object/from16 v17, v5

    :cond_6b
    move-object/from16 v6, v17

    goto :goto_47

    :cond_6c
    move-object v6, v5

    :goto_47
    if-ne v13, v14, :cond_6d

    aget-object v3, v0, v2

    :cond_6d
    if-eqz v4, :cond_6e

    if-eqz v6, :cond_6e

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v0

    iget-object v7, v14, Lv/f;->S:[Lv/d;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v8

    iget-object v2, v1, Lv/d;->i:Lt/m;

    iget-object v7, v3, Lv/d;->i:Lt/m;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    :cond_6e
    :goto_48
    add-int/lit8 v9, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v26

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_6f
    return-void
.end method
