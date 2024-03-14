.class public final Landroidx/constraintlayout/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/e;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final b(Lv/f;Lw/b;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, Lv/f;->j0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iget-boolean v3, v1, Lv/f;->G:Z

    if-nez v3, :cond_1

    iput v5, v2, Lw/b;->e:I

    iput v5, v2, Lw/b;->f:I

    iput v5, v2, Lw/b;->g:I

    return-void

    :cond_1
    iget-object v3, v1, Lv/f;->W:Lv/f;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/widget/e;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Lt/g;

    iget-object v4, v2, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v6, v2, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v7, v2, Lw/b;->c:I

    iget v8, v2, Lw/b;->d:I

    iget v9, v0, Landroidx/constraintlayout/widget/e;->b:I

    iget v10, v0, Landroidx/constraintlayout/widget/e;->c:I

    add-int/2addr v9, v10

    iget v10, v0, Landroidx/constraintlayout/widget/e;->d:I

    iget-object v11, v1, Lv/f;->i0:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v15, 0x2

    const/4 v14, 0x1

    iget-object v5, v1, Lv/f;->M:Lv/d;

    iget-object v13, v1, Lv/f;->K:Lv/d;

    if-eqz v12, :cond_f

    if-eq v12, v14, :cond_e

    if-eq v12, v15, :cond_6

    const/4 v7, 0x3

    if-eq v12, v7, :cond_3

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_3
    iget v7, v0, Landroidx/constraintlayout/widget/e;->f:I

    if-eqz v13, :cond_4

    iget v12, v13, Lv/d;->g:I

    const/16 v17, 0x0

    add-int/lit8 v12, v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    :goto_0
    if-eqz v5, :cond_5

    iget v15, v5, Lv/d;->g:I

    add-int/2addr v12, v15

    :cond_5
    add-int/2addr v10, v12

    const/4 v12, -0x1

    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_6

    :cond_6
    iget v7, v0, Landroidx/constraintlayout/widget/e;->f:I

    const/4 v12, -0x2

    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v10, v1, Lv/f;->s:I

    if-ne v10, v14, :cond_7

    move v10, v14

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :goto_1
    iget v12, v2, Lw/b;->j:I

    const/4 v15, 0x2

    if-eq v12, v14, :cond_9

    if-ne v12, v15, :cond_8

    goto :goto_2

    :cond_8
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_6

    :cond_9
    :goto_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v14

    if-ne v12, v14, :cond_a

    const/4 v12, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    :goto_3
    iget v14, v2, Lw/b;->j:I

    if-eq v14, v15, :cond_d

    if-eqz v10, :cond_d

    if-eqz v10, :cond_b

    if-nez v12, :cond_d

    :cond_b
    instance-of v10, v11, Landroidx/constraintlayout/widget/u;

    if-nez v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Lv/f;->B()Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v10, 0x1

    :goto_5
    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v7

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_6

    :cond_e
    const/high16 v12, 0x40000000    # 2.0f

    iget v7, v0, Landroidx/constraintlayout/widget/e;->f:I

    const/4 v14, -0x2

    invoke-static {v7, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_6

    :cond_f
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_6
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v12, 0x1

    if-eq v10, v12, :cond_1b

    const/4 v8, 0x2

    if-eq v10, v8, :cond_13

    const/4 v8, 0x3

    if-eq v10, v8, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_10
    iget v0, v0, Landroidx/constraintlayout/widget/e;->g:I

    if-eqz v13, :cond_11

    iget-object v8, v1, Lv/f;->L:Lv/d;

    iget v8, v8, Lv/d;->g:I

    const/4 v10, 0x0

    add-int/2addr v8, v10

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    :goto_7
    if-eqz v5, :cond_12

    iget-object v5, v1, Lv/f;->N:Lv/d;

    iget v5, v5, Lv/d;->g:I

    add-int/2addr v8, v5

    :cond_12
    add-int/2addr v9, v8

    const/4 v5, -0x1

    invoke-static {v0, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_d

    :cond_13
    iget v0, v0, Landroidx/constraintlayout/widget/e;->g:I

    const/4 v5, -0x2

    invoke-static {v0, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v5, v1, Lv/f;->t:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_14

    move v5, v8

    goto :goto_8

    :cond_14
    const/4 v5, 0x0

    :goto_8
    iget v9, v2, Lw/b;->j:I

    if-eq v9, v8, :cond_16

    const/4 v8, 0x2

    if-ne v9, v8, :cond_15

    goto :goto_9

    :cond_15
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_d

    :cond_16
    const/4 v8, 0x2

    :goto_9
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v10

    if-ne v9, v10, :cond_17

    const/4 v9, 0x1

    goto :goto_a

    :cond_17
    const/4 v9, 0x0

    :goto_a
    iget v10, v2, Lw/b;->j:I

    if-eq v10, v8, :cond_1a

    if-eqz v5, :cond_1a

    if-eqz v5, :cond_18

    if-nez v9, :cond_1a

    :cond_18
    instance-of v5, v11, Landroidx/constraintlayout/widget/u;

    if-nez v5, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lv/f;->C()Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v5, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-eqz v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_d

    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    iget v0, v0, Landroidx/constraintlayout/widget/e;->g:I

    const/4 v8, -0x2

    invoke-static {v0, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_d

    :cond_1c
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_d
    iget-object v5, v1, Lv/f;->W:Lv/f;

    check-cast v5, Lv/g;

    if-eqz v5, :cond_1e

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/16 v9, 0x100

    invoke-static {v8, v9}, Lv/m;->b(II)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v9

    if-ne v8, v9, :cond_1e

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v5}, Lv/f;->r()I

    move-result v9

    if-ge v8, v9, :cond_1e

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v9

    if-ne v8, v9, :cond_1e

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v5}, Lv/f;->l()I

    move-result v5

    if-ge v8, v5, :cond_1e

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v5

    iget v8, v1, Lv/f;->d0:I

    if-ne v5, v8, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lv/f;->A()Z

    move-result v5

    if-nez v5, :cond_1e

    iget v5, v1, Lv/f;->I:I

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v8

    invoke-static {v5, v7, v8}, Landroidx/constraintlayout/widget/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget v5, v1, Lv/f;->J:I

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v8

    invoke-static {v5, v0, v8}, Landroidx/constraintlayout/widget/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_e

    :cond_1d
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lv/f;->r()I

    move-result v0

    iput v0, v2, Lw/b;->e:I

    invoke-virtual/range {p1 .. p1}, Lv/f;->l()I

    move-result v0

    iput v0, v2, Lw/b;->f:I

    iget v0, v1, Lv/f;->d0:I

    iput v0, v2, Lw/b;->g:I

    return-void

    :cond_1e
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1f

    const/4 v8, 0x1

    goto :goto_f

    :cond_1f
    const/4 v8, 0x0

    :goto_f
    if-ne v6, v5, :cond_20

    const/4 v5, 0x1

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    :goto_10
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v9, :cond_22

    if-ne v6, v10, :cond_21

    goto :goto_11

    :cond_21
    const/4 v6, 0x0

    goto :goto_12

    :cond_22
    :goto_11
    const/4 v6, 0x1

    :goto_12
    if-eq v4, v9, :cond_24

    if-ne v4, v10, :cond_23

    goto :goto_13

    :cond_23
    const/4 v4, 0x0

    goto :goto_14

    :cond_24
    :goto_13
    const/4 v4, 0x1

    :goto_14
    const/4 v9, 0x0

    if-eqz v8, :cond_25

    iget v10, v1, Lv/f;->Z:F

    cmpl-float v10, v10, v9

    if-lez v10, :cond_25

    const/4 v10, 0x1

    goto :goto_15

    :cond_25
    const/4 v10, 0x0

    :goto_15
    if-eqz v5, :cond_26

    iget v12, v1, Lv/f;->Z:F

    cmpl-float v9, v12, v9

    if-lez v9, :cond_26

    const/4 v9, 0x1

    goto :goto_16

    :cond_26
    const/4 v9, 0x0

    :goto_16
    if-nez v11, :cond_27

    return-void

    :cond_27
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/d;

    iget v13, v2, Lw/b;->j:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_29

    const/4 v14, 0x2

    if-eq v13, v14, :cond_29

    if-eqz v8, :cond_29

    iget v8, v1, Lv/f;->s:I

    if-nez v8, :cond_29

    if-eqz v5, :cond_29

    iget v5, v1, Lv/f;->t:I

    if-eqz v5, :cond_28

    goto :goto_17

    :cond_28
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1f

    :cond_29
    :goto_17
    instance-of v5, v11, Landroidx/constraintlayout/widget/y;

    if-eqz v5, :cond_2a

    instance-of v5, v1, Lv/n;

    if-eqz v5, :cond_2a

    move-object v5, v1

    check-cast v5, Lv/n;

    move-object v8, v11

    check-cast v8, Landroidx/constraintlayout/widget/y;

    invoke-virtual {v8, v5, v7, v0}, Landroidx/constraintlayout/widget/y;->o(Lv/n;II)V

    goto :goto_18

    :cond_2a
    invoke-virtual {v11, v7, v0}, Landroid/view/View;->measure(II)V

    :goto_18
    iput v7, v1, Lv/f;->I:I

    iput v0, v1, Lv/f;->J:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Lv/f;->g:Z

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v13

    iget v14, v1, Lv/f;->v:I

    if-lez v14, :cond_2b

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_19

    :cond_2b
    move v14, v5

    :goto_19
    iget v15, v1, Lv/f;->w:I

    if-lez v15, :cond_2c

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_2c
    iget v15, v1, Lv/f;->y:I

    if-lez v15, :cond_2d

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v0

    goto :goto_1a

    :cond_2d
    move/from16 v16, v0

    move v15, v8

    :goto_1a
    iget v0, v1, Lv/f;->z:I

    if-lez v0, :cond_2e

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_2e
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    move/from16 v18, v7

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lv/m;->b(II)Z

    move-result v0

    if-nez v0, :cond_30

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v10, :cond_2f

    if-eqz v6, :cond_2f

    iget v4, v1, Lv/f;->Z:F

    int-to-float v6, v15

    mul-float/2addr v6, v4

    add-float/2addr v6, v0

    float-to-int v0, v6

    move v14, v0

    goto :goto_1b

    :cond_2f
    if-eqz v9, :cond_30

    if-eqz v4, :cond_30

    iget v4, v1, Lv/f;->Z:F

    int-to-float v6, v14

    div-float/2addr v6, v4

    add-float/2addr v6, v0

    float-to-int v0, v6

    move v15, v0

    :cond_30
    :goto_1b
    if-ne v5, v14, :cond_32

    if-eq v8, v15, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v0, 0x0

    goto :goto_1f

    :cond_32
    :goto_1c
    if-eq v5, v14, :cond_33

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1d

    :cond_33
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v7, v18

    :goto_1d
    if-eq v8, v15, :cond_34

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1e

    :cond_34
    move/from16 v0, v16

    :goto_1e
    invoke-virtual {v11, v7, v0}, Landroid/view/View;->measure(II)V

    iput v7, v1, Lv/f;->I:I

    iput v0, v1, Lv/f;->J:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lv/f;->g:Z

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v15, v4

    move v13, v5

    move/from16 v14, v17

    :goto_1f
    const/4 v4, -0x1

    if-eq v13, v4, :cond_35

    const/16 v17, 0x1

    goto :goto_20

    :cond_35
    move/from16 v17, v0

    :goto_20
    iget v4, v2, Lw/b;->c:I

    if-ne v14, v4, :cond_37

    iget v4, v2, Lw/b;->d:I

    if-eq v15, v4, :cond_36

    goto :goto_21

    :cond_36
    move v5, v0

    goto :goto_22

    :cond_37
    :goto_21
    const/4 v5, 0x1

    :goto_22
    iput-boolean v5, v2, Lw/b;->i:Z

    iget-boolean v0, v12, Landroidx/constraintlayout/widget/d;->c0:Z

    if-eqz v0, :cond_38

    const/4 v12, 0x1

    goto :goto_23

    :cond_38
    move/from16 v12, v17

    :goto_23
    if-eqz v12, :cond_39

    const/4 v0, -0x1

    if-eq v13, v0, :cond_39

    iget v0, v1, Lv/f;->d0:I

    if-eq v0, v13, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, v2, Lw/b;->i:Z

    :cond_39
    iput v14, v2, Lw/b;->e:I

    iput v15, v2, Lw/b;->f:I

    iput-boolean v12, v2, Lw/b;->h:Z

    iput v13, v2, Lw/b;->g:I

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Lt/g;

    return-void
.end method
