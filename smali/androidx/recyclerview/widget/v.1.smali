.class public final Landroidx/recyclerview/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/recyclerview/widget/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/o;

    invoke-direct {v0}, Landroidx/recyclerview/widget/o;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/o;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/p;Z)Landroidx/recyclerview/widget/r;
    .locals 21

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/p;->getOldListSize()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/p;->getNewListSize()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroidx/recyclerview/widget/t;

    invoke-direct {v5, v0, v2}, Landroidx/recyclerview/widget/t;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    new-array v5, v0, [I

    div-int/lit8 v6, v0, 0x2

    new-array v7, v0, [I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/t;

    iget v9, v8, Landroidx/recyclerview/widget/t;->b:I

    iget v10, v8, Landroidx/recyclerview/widget/t;->a:I

    sub-int v11, v9, v10

    if-lt v11, v2, :cond_15

    iget v14, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v15, v8, Landroidx/recyclerview/widget/t;->c:I

    sub-int/2addr v14, v15

    if-ge v14, v2, :cond_0

    goto/16 :goto_10

    :cond_0
    add-int/2addr v14, v11

    add-int/2addr v14, v2

    div-int/lit8 v14, v14, 0x2

    add-int v11, v2, v6

    aput v10, v5, v11

    aput v9, v7, v11

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_15

    iget v10, v8, Landroidx/recyclerview/widget/t;->b:I

    iget v11, v8, Landroidx/recyclerview/widget/t;->a:I

    sub-int/2addr v10, v11

    iget v11, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v15, v8, Landroidx/recyclerview/widget/t;->c:I

    sub-int/2addr v11, v15

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-ne v10, v2, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    iget v11, v8, Landroidx/recyclerview/widget/t;->b:I

    iget v15, v8, Landroidx/recyclerview/widget/t;->a:I

    sub-int/2addr v11, v15

    iget v15, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v12, v8, Landroidx/recyclerview/widget/t;->c:I

    sub-int/2addr v15, v12

    sub-int/2addr v11, v15

    neg-int v12, v9

    move v15, v12

    :goto_3
    if-gt v15, v9, :cond_9

    if-eq v15, v12, :cond_3

    if-eq v15, v9, :cond_2

    add-int/lit8 v16, v15, 0x1

    add-int v16, v16, v6

    aget v2, v5, v16

    add-int/lit8 v16, v15, -0x1

    add-int v16, v16, v6

    aget v13, v5, v16

    if-le v2, v13, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v15, -0x1

    add-int/2addr v2, v6

    aget v2, v5, v2

    add-int/lit8 v13, v2, 0x1

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v2, v15, 0x1

    add-int/2addr v2, v6

    aget v2, v5, v2

    move v13, v2

    :goto_5
    move/from16 v16, v14

    iget v14, v8, Landroidx/recyclerview/widget/t;->c:I

    move-object/from16 v17, v4

    iget v4, v8, Landroidx/recyclerview/widget/t;->a:I

    sub-int v4, v13, v4

    add-int/2addr v4, v14

    sub-int/2addr v4, v15

    if-eqz v9, :cond_5

    if-eq v13, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v14, v4, -0x1

    move-object/from16 v18, v0

    goto :goto_7

    :cond_5
    :goto_6
    move-object/from16 v18, v0

    move v14, v4

    :goto_7
    iget v0, v8, Landroidx/recyclerview/widget/t;->b:I

    if-ge v13, v0, :cond_6

    iget v0, v8, Landroidx/recyclerview/widget/t;->d:I

    if-ge v4, v0, :cond_6

    invoke-virtual {v1, v13, v4}, Landroidx/recyclerview/widget/p;->areItemsTheSame(II)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int v0, v15, v6

    aput v13, v5, v0

    if-eqz v10, :cond_7

    sub-int v0, v11, v15

    move/from16 v19, v10

    add-int/lit8 v10, v12, 0x1

    if-lt v0, v10, :cond_8

    add-int/lit8 v10, v9, -0x1

    if-gt v0, v10, :cond_8

    add-int/2addr v0, v6

    aget v0, v7, v0

    if-gt v0, v13, :cond_8

    new-instance v0, Landroidx/recyclerview/widget/u;

    invoke-direct {v0}, Landroidx/recyclerview/widget/u;-><init>()V

    iput v2, v0, Landroidx/recyclerview/widget/u;->a:I

    iput v14, v0, Landroidx/recyclerview/widget/u;->b:I

    iput v13, v0, Landroidx/recyclerview/widget/u;->c:I

    iput v4, v0, Landroidx/recyclerview/widget/u;->d:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/u;->e:Z

    goto :goto_8

    :cond_7
    move/from16 v19, v10

    :cond_8
    const/4 v2, 0x0

    add-int/lit8 v15, v15, 0x2

    move/from16 v14, v16

    move-object/from16 v4, v17

    move-object/from16 v0, v18

    move/from16 v10, v19

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v17, v4

    move/from16 v16, v14

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    move-object v12, v0

    move-object/from16 v19, v8

    goto/16 :goto_11

    :cond_a
    iget v0, v8, Landroidx/recyclerview/widget/t;->b:I

    iget v4, v8, Landroidx/recyclerview/widget/t;->a:I

    sub-int/2addr v0, v4

    iget v4, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v10, v8, Landroidx/recyclerview/widget/t;->c:I

    sub-int/2addr v4, v10

    sub-int/2addr v0, v4

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move v4, v2

    :goto_9
    move v10, v12

    :goto_a
    if-gt v10, v9, :cond_13

    if-eq v10, v12, :cond_d

    if-eq v10, v9, :cond_c

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v6

    aget v11, v7, v11

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v6

    aget v13, v7, v13

    if-ge v11, v13, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v11, v10, -0x1

    add-int/2addr v11, v6

    aget v11, v7, v11

    add-int/lit8 v13, v11, -0x1

    goto :goto_c

    :cond_d
    :goto_b
    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v6

    aget v11, v7, v11

    move v13, v11

    :goto_c
    iget v14, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v15, v8, Landroidx/recyclerview/widget/t;->b:I

    sub-int/2addr v15, v13

    sub-int/2addr v15, v10

    sub-int/2addr v14, v15

    if-eqz v9, :cond_f

    if-eq v13, v11, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 v15, v14, 0x1

    goto :goto_e

    :cond_f
    :goto_d
    move v15, v14

    :goto_e
    iget v2, v8, Landroidx/recyclerview/widget/t;->a:I

    if-le v13, v2, :cond_10

    iget v2, v8, Landroidx/recyclerview/widget/t;->c:I

    if-le v14, v2, :cond_10

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v19, v8

    add-int/lit8 v8, v14, -0x1

    invoke-virtual {v1, v2, v8}, Landroidx/recyclerview/widget/p;->areItemsTheSame(II)Z

    move-result v20

    if-eqz v20, :cond_11

    move v13, v2

    move v14, v8

    move-object/from16 v8, v19

    goto :goto_e

    :cond_10
    move-object/from16 v19, v8

    :cond_11
    add-int v2, v10, v6

    aput v13, v7, v2

    if-eqz v4, :cond_12

    sub-int v2, v0, v10

    if-lt v2, v12, :cond_12

    if-gt v2, v9, :cond_12

    add-int/2addr v2, v6

    aget v2, v5, v2

    if-lt v2, v13, :cond_12

    new-instance v0, Landroidx/recyclerview/widget/u;

    invoke-direct {v0}, Landroidx/recyclerview/widget/u;-><init>()V

    iput v13, v0, Landroidx/recyclerview/widget/u;->a:I

    iput v14, v0, Landroidx/recyclerview/widget/u;->b:I

    iput v11, v0, Landroidx/recyclerview/widget/u;->c:I

    iput v15, v0, Landroidx/recyclerview/widget/u;->d:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/u;->e:Z

    goto :goto_f

    :cond_12
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v8, v19

    const/4 v2, 0x0

    goto :goto_a

    :cond_13
    move-object/from16 v19, v8

    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_14

    move-object v12, v0

    goto :goto_11

    :cond_14
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v16

    move-object/from16 v4, v17

    move-object/from16 v0, v18

    move-object/from16 v8, v19

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_15
    :goto_10
    move-object/from16 v18, v0

    move-object/from16 v17, v4

    move-object/from16 v19, v8

    const/4 v12, 0x0

    :goto_11
    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Landroidx/recyclerview/widget/u;->a()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v12, Landroidx/recyclerview/widget/u;->d:I

    iget v2, v12, Landroidx/recyclerview/widget/u;->b:I

    sub-int/2addr v0, v2

    iget v4, v12, Landroidx/recyclerview/widget/u;->c:I

    iget v8, v12, Landroidx/recyclerview/widget/u;->a:I

    sub-int/2addr v4, v8

    if-eq v0, v4, :cond_16

    const/4 v9, 0x1

    goto :goto_12

    :cond_16
    const/4 v9, 0x0

    :goto_12
    if-eqz v9, :cond_1a

    iget-boolean v9, v12, Landroidx/recyclerview/widget/u;->e:Z

    if-eqz v9, :cond_17

    new-instance v0, Landroidx/recyclerview/widget/q;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/u;->a()I

    move-result v4

    invoke-direct {v0, v8, v2, v4}, Landroidx/recyclerview/widget/q;-><init>(III)V

    goto :goto_14

    :cond_17
    if-le v0, v4, :cond_18

    const/4 v13, 0x1

    goto :goto_13

    :cond_18
    const/4 v13, 0x0

    :goto_13
    if-eqz v13, :cond_19

    new-instance v0, Landroidx/recyclerview/widget/q;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/u;->a()I

    move-result v4

    invoke-direct {v0, v8, v2, v4}, Landroidx/recyclerview/widget/q;-><init>(III)V

    goto :goto_14

    :cond_19
    new-instance v0, Landroidx/recyclerview/widget/q;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/u;->a()I

    move-result v4

    invoke-direct {v0, v8, v2, v4}, Landroidx/recyclerview/widget/q;-><init>(III)V

    goto :goto_14

    :cond_1a
    new-instance v0, Landroidx/recyclerview/widget/q;

    invoke-direct {v0, v8, v2, v4}, Landroidx/recyclerview/widget/q;-><init>(III)V

    :goto_14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroidx/recyclerview/widget/t;

    invoke-direct {v0}, Landroidx/recyclerview/widget/t;-><init>()V

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v2, 0x1

    goto :goto_15

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t;

    move-object/from16 v8, v19

    :goto_15
    iget v9, v8, Landroidx/recyclerview/widget/t;->a:I

    iput v9, v0, Landroidx/recyclerview/widget/t;->a:I

    iget v9, v8, Landroidx/recyclerview/widget/t;->c:I

    iput v9, v0, Landroidx/recyclerview/widget/t;->c:I

    iget v9, v12, Landroidx/recyclerview/widget/u;->a:I

    iput v9, v0, Landroidx/recyclerview/widget/t;->b:I

    iget v9, v12, Landroidx/recyclerview/widget/u;->b:I

    iput v9, v0, Landroidx/recyclerview/widget/t;->d:I

    move-object/from16 v9, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v8, Landroidx/recyclerview/widget/t;->b:I

    iput v0, v8, Landroidx/recyclerview/widget/t;->b:I

    iget v0, v8, Landroidx/recyclerview/widget/t;->d:I

    iput v0, v8, Landroidx/recyclerview/widget/t;->d:I

    iget v0, v12, Landroidx/recyclerview/widget/u;->c:I

    iput v0, v8, Landroidx/recyclerview/widget/t;->a:I

    iget v0, v12, Landroidx/recyclerview/widget/u;->d:I

    iput v0, v8, Landroidx/recyclerview/widget/t;->c:I

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1d
    move-object/from16 v9, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v2, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    move-object v0, v4

    move-object v4, v9

    goto/16 :goto_0

    :cond_1e
    sget-object v0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/o;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Landroidx/recyclerview/widget/r;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object v4, v7

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/p;Ljava/util/List;[I[IZ)V

    return-object v6
.end method
