.class public final Lu0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/h;->a:Lv0/a;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lr0/c;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v2, 0x2

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    sget-object v4, Lu0/h;->a:Lv0/a;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v4

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    return-object v6

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xca7

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v6, v7, :cond_1e

    const/16 v7, 0xcc6

    if-eq v6, v7, :cond_1c

    const/16 v7, 0xcdf

    if-eq v6, v7, :cond_1a

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_18

    const/16 v7, 0xe3e

    if-eq v6, v7, :cond_16

    const/16 v7, 0xe55

    if-eq v6, v7, :cond_14

    const/16 v7, 0xe5f

    if-eq v6, v7, :cond_12

    const/16 v7, 0xe61

    if-eq v6, v7, :cond_10

    const/16 v7, 0xe79

    if-eq v6, v7, :cond_e

    const/16 v7, 0xe7e

    if-eq v6, v7, :cond_c

    const/16 v7, 0xceb

    if-eq v6, v7, :cond_a

    const/16 v7, 0xcec

    if-eq v6, v7, :cond_8

    const/16 v7, 0xe31

    if-eq v6, v7, :cond_6

    const/16 v7, 0xe32

    if-eq v6, v7, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v6, "rd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x7

    goto/16 :goto_3

    :cond_6
    const-string v6, "rc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x6

    goto/16 :goto_3

    :cond_8
    const-string v6, "gs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_2

    :cond_9
    move v6, v10

    goto/16 :goto_3

    :cond_a
    const-string v6, "gr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    move v6, v11

    goto/16 :goto_3

    :cond_c
    const-string v6, "tr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0xd

    goto/16 :goto_3

    :cond_e
    const-string v6, "tm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v6, 0xc

    goto/16 :goto_3

    :cond_10
    const-string v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_2

    :cond_11
    const/16 v6, 0xb

    goto :goto_3

    :cond_12
    const-string v6, "sr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_2

    :cond_13
    const/16 v6, 0xa

    goto :goto_3

    :cond_14
    const-string v6, "sh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_2

    :cond_15
    const/16 v6, 0x9

    goto :goto_3

    :cond_16
    const-string v6, "rp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_2

    :cond_17
    const/16 v6, 0x8

    goto :goto_3

    :cond_18
    const-string v6, "mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_2

    :cond_19
    move v6, v9

    goto :goto_3

    :cond_1a
    const-string v6, "gf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_2

    :cond_1b
    move v6, v2

    goto :goto_3

    :cond_1c
    const-string v6, "fl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_2

    :cond_1d
    move v6, v5

    goto :goto_3

    :cond_1e
    const-string v6, "el"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_1f
    move v6, v8

    :goto_3
    sget-object v7, Lcom/airbnb/lottie/model/content/GradientType;->d:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v12, Lcom/airbnb/lottie/model/content/GradientType;->e:Lcom/airbnb/lottie/model/content/GradientType;

    const-string v13, "o"

    const-string v14, "g"

    const-string v15, "d"

    const/16 v16, 0x0

    packed-switch v6, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw0/c;->b(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lu0/c;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/l;

    move-result-object v1

    goto/16 :goto_24

    :pswitch_1
    sget-object v3, Lu0/K;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    move-object/from16 v18, v12

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Lu0/K;->a:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_27

    if-eq v3, v5, :cond_26

    if-eq v3, v2, :cond_25

    if-eq v3, v11, :cond_24

    if-eq v3, v10, :cond_21

    if-eq v3, v9, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_4

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v19

    goto :goto_4

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v3

    if-eq v3, v5, :cond_23

    if-ne v3, v2, :cond_22

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->e:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    goto :goto_5

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v1, v3}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    :goto_5
    move-object v15, v3

    goto :goto_4

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_25
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v18

    goto :goto_4

    :cond_26
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v17

    goto :goto_4

    :cond_27
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v16

    goto :goto_4

    :cond_28
    new-instance v1, Lr0/r;

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lr0/r;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lq0/b;Lq0/b;Lq0/b;Z)V

    goto/16 :goto_24

    :pswitch_2
    sget-object v3, Lu0/J;->a:Lv0/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v27, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v26, v16

    :cond_29
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_36

    sget-object v6, Lu0/J;->a:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_6

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v9

    if-eqz v9, :cond_2c

    sget-object v9, Lu0/J;->b:Lv0/a;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v9

    if-eqz v9, :cond_2b

    if-eq v9, v5, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_8

    :cond_2a
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v6

    goto :goto_8

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_31

    const/16 v10, 0x67

    if-eq v9, v10, :cond_2f

    const/16 v10, 0x6f

    if-eq v9, v10, :cond_2d

    goto :goto_9

    :cond_2d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_9

    :cond_2e
    move v7, v2

    goto :goto_a

    :cond_2f
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_9

    :cond_30
    move v7, v5

    goto :goto_a

    :cond_31
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    :goto_9
    const/4 v7, -0x1

    goto :goto_a

    :cond_32
    move v7, v8

    :goto_a
    if-eqz v7, :cond_34

    if-eq v7, v5, :cond_34

    if-eq v7, v2, :cond_33

    goto :goto_7

    :cond_33
    move-object/from16 v19, v6

    goto :goto_7

    :cond_34
    iput-boolean v5, v1, Lk0/m;->n:Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_29

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq0/b;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v27

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v6

    double-to-float v6, v6

    move/from16 v26, v6

    goto/16 :goto_6

    :pswitch_6
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v7

    sub-int/2addr v7, v5

    aget-object v25, v6, v7

    goto/16 :goto_6

    :pswitch_7
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v7

    sub-int/2addr v7, v5

    aget-object v24, v6, v7

    goto/16 :goto_6

    :pswitch_8
    invoke-static/range {p0 .. p1}, Lu0/d;->c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;

    move-result-object v4

    goto/16 :goto_6

    :pswitch_9
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v23

    goto/16 :goto_6

    :pswitch_a
    invoke-static/range {p0 .. p1}, Lu0/d;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;

    move-result-object v21

    goto/16 :goto_6

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_36
    if-nez v4, :cond_37

    new-instance v1, Lq0/d;

    new-instance v2, Lx0/a;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lq0/d;-><init>(Ljava/util/List;)V

    move-object/from16 v22, v1

    goto :goto_b

    :cond_37
    move-object/from16 v22, v4

    :goto_b
    new-instance v1, Lr0/q;

    move-object/from16 v17, v1

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v27}, Lr0/q;-><init>(Ljava/lang/String;Lq0/b;Ljava/util/List;Lq0/a;Lq0/d;Lq0/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    goto/16 :goto_24

    :pswitch_c
    sget-object v2, Lu0/A;->a:Lv0/a;

    if-ne v3, v11, :cond_38

    move v2, v5

    goto :goto_c

    :cond_38
    move v2, v8

    :goto_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v26, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v25, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lu0/A;->a:Lv0/a;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v2

    packed-switch v2, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_d

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v2

    if-ne v2, v11, :cond_39

    move/from16 v26, v5

    goto :goto_d

    :cond_39
    move/from16 v26, v8

    goto :goto_d

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v25

    goto :goto_d

    :pswitch_f
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v23

    goto :goto_d

    :pswitch_10
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v21

    goto :goto_d

    :pswitch_11
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v24

    goto :goto_d

    :pswitch_12
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v22

    goto :goto_d

    :pswitch_13
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v20

    goto :goto_d

    :pswitch_14
    invoke-static/range {p0 .. p1}, Lu0/a;->b(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/m;

    move-result-object v19

    goto :goto_d

    :pswitch_15
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v18

    goto :goto_d

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->a(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v17

    goto :goto_d

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v16

    goto :goto_d

    :cond_3a
    new-instance v1, Lr0/i;

    move-object v15, v1

    invoke-direct/range {v15 .. v26}, Lr0/i;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lq0/b;Lq0/m;Lq0/b;Lq0/b;Lq0/b;Lq0/b;Lq0/b;ZZ)V

    goto/16 :goto_24

    :pswitch_18
    sget-object v3, Lu0/I;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v8

    move v7, v6

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v9

    if-eqz v9, :cond_3f

    sget-object v9, Lu0/I;->a:Lv0/a;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v9

    if-eqz v9, :cond_3e

    if-eq v9, v5, :cond_3d

    if-eq v9, v2, :cond_3c

    if-eq v9, v11, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_e

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v7

    goto :goto_e

    :cond_3c
    new-instance v3, Lq0/h;

    invoke-static {}, Lw0/h;->c()F

    move-result v9

    sget-object v10, Lu0/F;->a:Lu0/F;

    invoke-static {v0, v1, v9, v10, v8}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Lq0/h;-><init>(Ljava/util/List;)V

    goto :goto_e

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v6

    goto :goto_e

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_3f
    new-instance v1, Lr0/p;

    invoke-direct {v1, v4, v6, v3, v7}, Lr0/p;-><init>(Ljava/lang/String;ILq0/h;Z)V

    goto/16 :goto_24

    :pswitch_19
    sget-object v3, Lu0/C;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_45

    sget-object v3, Lu0/C;->a:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_44

    if-eq v3, v5, :cond_43

    if-eq v3, v2, :cond_42

    if-eq v3, v11, :cond_41

    if-eq v3, v10, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_f

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v17

    goto :goto_f

    :cond_41
    invoke-static/range {p0 .. p1}, Lu0/c;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/l;

    move-result-object v16

    goto :goto_f

    :cond_42
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v15

    goto :goto_f

    :cond_43
    invoke-static {v0, v1, v8}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v14

    goto :goto_f

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :cond_45
    new-instance v1, Lr0/k;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lr0/k;-><init>(Ljava/lang/String;Lq0/b;Lq0/b;Lq0/l;Z)V

    goto/16 :goto_24

    :pswitch_1a
    sget-object v3, Lu0/D;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_49

    sget-object v6, Lu0/D;->a:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_48

    if-eq v6, v5, :cond_47

    if-eq v6, v2, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_10

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v8

    goto :goto_10

    :cond_47
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v4

    goto :goto_10

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_49
    if-eqz v8, :cond_4a

    goto/16 :goto_23

    :cond_4a
    new-instance v1, Lr0/l;

    invoke-direct {v1, v3, v4}, Lr0/l;-><init>(Ljava/lang/String;Lq0/b;)V

    goto/16 :goto_24

    :pswitch_1b
    sget-object v3, Lu0/B;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_50

    sget-object v3, Lu0/B;->a:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_4f

    if-eq v3, v5, :cond_4e

    if-eq v3, v2, :cond_4d

    if-eq v3, v11, :cond_4c

    if-eq v3, v10, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_11

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v17

    goto :goto_11

    :cond_4c
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v16

    goto :goto_11

    :cond_4d
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v15

    goto :goto_11

    :cond_4e
    invoke-static/range {p0 .. p1}, Lu0/a;->b(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/m;

    move-result-object v14

    goto :goto_11

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :cond_50
    new-instance v1, Lr0/j;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lr0/j;-><init>(Ljava/lang/String;Lq0/m;Lq0/f;Lq0/b;Z)V

    goto/16 :goto_24

    :pswitch_1c
    sget-object v3, Lu0/x;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_59

    sget-object v6, Lu0/x;->a:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_58

    if-eq v6, v5, :cond_52

    if-eq v6, v2, :cond_51

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_12

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v8

    goto :goto_12

    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v3

    sget-object v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->d:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    if-eq v3, v5, :cond_57

    if-eq v3, v2, :cond_56

    if-eq v3, v11, :cond_55

    if-eq v3, v10, :cond_54

    if-eq v3, v9, :cond_53

    goto :goto_13

    :cond_53
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->h:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_12

    :cond_54
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->g:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_12

    :cond_55
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_12

    :cond_56
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_12

    :cond_57
    :goto_13
    move-object v3, v6

    goto :goto_12

    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_59
    new-instance v2, Lr0/h;

    invoke-direct {v2, v4, v3, v8}, Lr0/h;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v3}, Lk0/m;->a(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_24

    :pswitch_1d
    sget-object v2, Lu0/q;->a:Lv0/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v30, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v27, v16

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v29, v20

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    :cond_5a
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v4

    if-eqz v4, :cond_66

    sget-object v4, Lu0/q;->a:Lv0/a;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v4

    packed-switch v4, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_14

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :cond_5b
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v9

    if-eqz v9, :cond_5e

    sget-object v9, Lu0/q;->c:Lv0/a;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v9

    if-eqz v9, :cond_5d

    if-eq v9, v5, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_16

    :cond_5c
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v4

    goto :goto_16

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    move-object/from16 v29, v4

    goto :goto_15

    :cond_5f
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_60
    iput-boolean v5, v1, Lk0/m;->n:Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_5a

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/b;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v30

    goto :goto_14

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v9

    double-to-float v4, v9

    move/from16 v27, v4

    goto/16 :goto_14

    :pswitch_21
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v6

    sub-int/2addr v6, v5

    aget-object v26, v4, v6

    goto/16 :goto_14

    :pswitch_22
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v6

    sub-int/2addr v6, v5

    aget-object v25, v4, v6

    goto/16 :goto_14

    :pswitch_23
    invoke-static {v0, v1, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v24

    goto/16 :goto_14

    :pswitch_24
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v23

    goto/16 :goto_14

    :pswitch_25
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v22

    goto/16 :goto_14

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v4

    if-ne v4, v5, :cond_62

    move-object/from16 v19, v7

    goto/16 :goto_14

    :cond_62
    move-object/from16 v19, v12

    goto/16 :goto_14

    :pswitch_27
    invoke-static/range {p0 .. p1}, Lu0/d;->c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v4, -0x1

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Lu0/q;->b:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_64

    if-eq v6, v5, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_17

    :cond_63
    new-instance v6, Lq0/c;

    new-instance v9, Lu0/o;

    invoke-direct {v9, v4}, Lu0/o;-><init>(I)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v10, v9, v8}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Lq0/c;-><init>(Ljava/util/List;)V

    move-object/from16 v20, v6

    goto :goto_17

    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v4

    goto :goto_17

    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    goto/16 :goto_14

    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_14

    :cond_66
    if-nez v3, :cond_67

    new-instance v1, Lq0/d;

    new-instance v3, Lx0/a;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lq0/d;-><init>(Ljava/util/List;)V

    move-object/from16 v21, v1

    goto :goto_18

    :cond_67
    move-object/from16 v21, v3

    :goto_18
    new-instance v1, Lr0/f;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    invoke-direct/range {v17 .. v30}, Lr0/f;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lq0/c;Lq0/d;Lq0/f;Lq0/f;Lq0/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lq0/b;Z)V

    goto/16 :goto_24

    :pswitch_2a
    sget-object v3, Lu0/H;->a:Lv0/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_6d

    sget-object v6, Lu0/H;->a:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_6c

    if-eq v6, v5, :cond_6b

    if-eq v6, v2, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_19

    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :cond_69
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-static/range {p0 .. p1}, Lu0/h;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lr0/c;

    move-result-object v6

    if-eqz v6, :cond_69

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    goto :goto_19

    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v8

    goto :goto_19

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_6d
    new-instance v1, Lr0/o;

    invoke-direct {v1, v4, v3, v8}, Lr0/o;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_24

    :pswitch_2b
    sget-object v2, Lu0/p;->a:Lv0/a;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v2

    move-object v14, v4

    move-object v15, v6

    move/from16 v21, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v2

    if-eqz v2, :cond_73

    sget-object v2, Lu0/p;->a:Lv0/a;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v2

    packed-switch v2, :pswitch_data_4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_1b

    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v21

    goto :goto_1b

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v2

    if-ne v2, v5, :cond_6e

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1c

    :cond_6e
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1c
    move-object/from16 v16, v2

    goto :goto_1b

    :pswitch_2e
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v20

    goto :goto_1b

    :pswitch_2f
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v19

    goto :goto_1b

    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v2

    if-ne v2, v5, :cond_6f

    move-object v15, v7

    goto :goto_1b

    :cond_6f
    move-object v15, v12

    goto :goto_1b

    :pswitch_31
    invoke-static/range {p0 .. p1}, Lu0/d;->c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;

    move-result-object v3

    goto :goto_1b

    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v2, -0x1

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v4

    if-eqz v4, :cond_72

    sget-object v4, Lu0/p;->b:Lv0/a;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v4

    if-eqz v4, :cond_71

    if-eq v4, v5, :cond_70

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_1d

    :cond_70
    new-instance v4, Lq0/c;

    new-instance v6, Lu0/o;

    invoke-direct {v6, v2}, Lu0/o;-><init>(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v9, v6, v8}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Lq0/c;-><init>(Ljava/util/List;)V

    move-object/from16 v17, v4

    goto :goto_1d

    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v2

    goto :goto_1d

    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    goto :goto_1b

    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v14

    goto :goto_1b

    :cond_73
    if-nez v3, :cond_74

    new-instance v1, Lq0/d;

    new-instance v2, Lx0/a;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lq0/d;-><init>(Ljava/util/List;)V

    move-object/from16 v18, v1

    goto :goto_1e

    :cond_74
    move-object/from16 v18, v3

    :goto_1e
    new-instance v1, Lr0/e;

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Lr0/e;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lq0/c;Lq0/d;Lq0/f;Lq0/f;Z)V

    goto/16 :goto_24

    :pswitch_34
    sget-object v3, Lu0/G;->a:Lv0/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v13, v4

    move v4, v5

    move-object/from16 v16, v6

    move v14, v8

    move/from16 v18, v14

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_7b

    sget-object v6, Lu0/G;->a:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_7a

    if-eq v6, v5, :cond_79

    if-eq v6, v2, :cond_78

    if-eq v6, v11, :cond_77

    if-eq v6, v10, :cond_76

    if-eq v6, v9, :cond_75

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_1f

    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v18

    goto :goto_1f

    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v4

    goto :goto_1f

    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v14

    goto :goto_1f

    :cond_78
    invoke-static/range {p0 .. p1}, Lu0/d;->c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;

    move-result-object v3

    goto :goto_1f

    :cond_79
    invoke-static/range {p0 .. p1}, Lu0/d;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;

    move-result-object v16

    goto :goto_1f

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v13

    goto :goto_1f

    :cond_7b
    if-nez v3, :cond_7c

    new-instance v3, Lq0/d;

    new-instance v1, Lx0/a;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lq0/d;-><init>(Ljava/util/List;)V

    :cond_7c
    move-object/from16 v17, v3

    if-ne v4, v5, :cond_7d

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_20

    :cond_7d
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_20
    move-object v15, v1

    new-instance v1, Lr0/n;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lr0/n;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lq0/a;Lq0/d;Z)V

    goto/16 :goto_24

    :pswitch_35
    sget-object v4, Lu0/f;->a:Lv0/a;

    if-ne v3, v11, :cond_7e

    move v3, v5

    goto :goto_21

    :cond_7e
    move v3, v8

    :goto_21
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v16, v3

    move-object v13, v4

    move-object v14, v6

    move-object v15, v7

    move/from16 v17, v8

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_85

    sget-object v3, Lu0/f;->a:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_84

    if-eq v3, v5, :cond_83

    if-eq v3, v2, :cond_82

    if-eq v3, v11, :cond_81

    if-eq v3, v10, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_22

    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v3

    if-ne v3, v11, :cond_80

    move/from16 v16, v5

    goto :goto_22

    :cond_80
    move/from16 v16, v8

    goto :goto_22

    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v17

    goto :goto_22

    :cond_82
    invoke-static/range {p0 .. p1}, Lu0/d;->d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;

    move-result-object v15

    goto :goto_22

    :cond_83
    invoke-static/range {p0 .. p1}, Lu0/a;->b(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/m;

    move-result-object v14

    goto :goto_22

    :cond_84
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v13

    goto :goto_22

    :cond_85
    new-instance v1, Lr0/b;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lr0/b;-><init>(Ljava/lang/String;Lq0/m;Lq0/f;ZZ)V

    goto :goto_24

    :goto_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_24

    :cond_86
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method
