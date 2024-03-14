.class public final Lu0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;

.field public static final b:Lv0/a;

.field public static final c:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/v;->a:Lv0/a;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/v;->b:Lv0/a;

    const-string v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/v;->c:Lv0/a;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Ls0/e;
    .locals 48

    move-object/from16 v7, p1

    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->d:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v2, "UNSET"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v13, -0x1

    move-object/from16 v31, v0

    move/from16 v25, v1

    move/from16 v22, v5

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v27, v24

    move/from16 v28, v27

    move/from16 v33, v28

    move/from16 v16, v11

    move/from16 v26, v16

    move/from16 v36, v26

    move-wide/from16 v18, v13

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object v13, v2

    move-wide v14, v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, Lu0/v;->a:Lv0/a;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v2

    const/4 v11, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto/16 :goto_24

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v33

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, p0

    goto :goto_3

    :pswitch_2
    invoke-static {v0, v7, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v32

    :goto_1
    move-object/from16 v11, p0

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move-object/from16 v11, p0

    move/from16 v36, v1

    goto :goto_2

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move-object/from16 v11, p0

    move/from16 v16, v1

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lw0/h;->c()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move-object/from16 v11, p0

    move/from16 v28, v1

    goto :goto_2

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lw0/h;->c()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move-object/from16 v11, p0

    move/from16 v27, v1

    goto :goto_2

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move-object/from16 v11, p0

    move/from16 v26, v1

    goto :goto_2

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move-object/from16 v11, p0

    move/from16 v25, v1

    :goto_2
    move-object v1, v4

    :goto_3
    move v4, v5

    goto/16 :goto_25

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v40

    if-eqz v40, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v40

    if-eqz v40, :cond_1e

    sget-object v5, Lu0/v;->c:Lv0/a;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto/16 :goto_f

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v5

    const/16 v3, 0x1d

    if-ne v5, v3, :cond_b

    sget-object v3, Lu0/e;->a:Lv0/a;

    const/16 v34, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lu0/e;->a:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :cond_3
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v3, 0x0

    :cond_4
    const/4 v5, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v41

    if-eqz v41, :cond_8

    sget-object v1, Lu0/e;->b:Lv0/a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_8

    :cond_5
    if-eqz v5, :cond_6

    new-instance v3, Lr0/a;

    invoke-static {v0, v7, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v1

    invoke-direct {v3, v1}, Lr0/a;-><init>(Lq0/b;)V

    goto :goto_8

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v1

    if-nez v1, :cond_4

    move v5, v6

    goto :goto_8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    if-eqz v3, :cond_3

    move-object/from16 v34, v3

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_b
    const/16 v1, 0x19

    if-ne v5, v1, :cond_1d

    new-instance v1, Lu0/k;

    invoke-direct {v1}, Lu0/k;-><init>()V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lu0/k;->f:Lv0/a;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const-string v3, ""

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lu0/k;->g:Lv0/a;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v5

    if-eqz v5, :cond_18

    if-eq v5, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto/16 :goto_e

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v5, "Softness"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x4

    goto :goto_d

    :sswitch_1
    const-string v5, "Shadow Color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_c

    :cond_f
    const/4 v5, 0x3

    goto :goto_d

    :sswitch_2
    const-string v5, "Direction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_c

    :cond_10
    move v5, v11

    goto :goto_d

    :sswitch_3
    const-string v5, "Opacity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_c

    :cond_11
    move v5, v6

    goto :goto_d

    :sswitch_4
    const-string v5, "Distance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    goto :goto_d

    :goto_c
    const/4 v5, -0x1

    :goto_d
    if-eqz v5, :cond_17

    if-eq v5, v6, :cond_16

    if-eq v5, v11, :cond_15

    const/4 v11, 0x3

    if-eq v5, v11, :cond_14

    const/4 v11, 0x4

    if-eq v5, v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_e

    :cond_13
    invoke-static {v0, v7, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v5

    iput-object v5, v1, Lu0/k;->e:Lq0/b;

    goto :goto_e

    :cond_14
    invoke-static/range {p0 .. p1}, Lu0/d;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;

    move-result-object v5

    iput-object v5, v1, Lu0/k;->a:Lq0/a;

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    invoke-static {v0, v7, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v11

    iput-object v11, v1, Lu0/k;->c:Lq0/b;

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    invoke-static {v0, v7, v5}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v11

    iput-object v11, v1, Lu0/k;->b:Lq0/b;

    goto :goto_e

    :cond_17
    invoke-static {v0, v7, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v5

    iput-object v5, v1, Lu0/k;->d:Lq0/b;

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v3

    :goto_e
    const/4 v11, 0x2

    goto/16 :goto_b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    const/4 v11, 0x2

    goto/16 :goto_a

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_1b
    iget-object v3, v1, Lu0/k;->a:Lq0/a;

    if-eqz v3, :cond_1c

    iget-object v5, v1, Lu0/k;->b:Lq0/b;

    if-eqz v5, :cond_1c

    iget-object v11, v1, Lu0/k;->c:Lq0/b;

    if-eqz v11, :cond_1c

    iget-object v6, v1, Lu0/k;->d:Lq0/b;

    if-eqz v6, :cond_1c

    iget-object v1, v1, Lu0/k;->e:Lq0/b;

    if-eqz v1, :cond_1c

    new-instance v35, Lu0/j;

    move-object/from16 v42, v35

    move-object/from16 v43, v3

    move-object/from16 v44, v5

    move-object/from16 v45, v11

    move-object/from16 v46, v6

    move-object/from16 v47, v1

    invoke-direct/range {v42 .. v47}, Lu0/j;-><init>(Lq0/a;Lq0/b;Lq0/b;Lq0/b;Lq0/b;)V

    goto :goto_f

    :cond_1c
    const/16 v35, 0x0

    :cond_1d
    :goto_f
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto/16 :goto_4

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lk0/m;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_15

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lu0/v;->b:Lv0/a;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_10

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lu0/b;->a:Lv0/a;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v1, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Lu0/b;->a:Lv0/a;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_11

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v6

    if-eqz v6, :cond_26

    sget-object v6, Lu0/b;->b:Lv0/a;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v11, 0x1

    if-eq v6, v11, :cond_24

    const/4 v11, 0x2

    if-eq v6, v11, :cond_23

    const/4 v11, 0x3

    if-eq v6, v11, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_12

    :cond_22
    const/4 v6, 0x1

    invoke-static {v0, v7, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v5

    goto :goto_12

    :cond_23
    const/4 v6, 0x1

    invoke-static {v0, v7, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v3

    goto :goto_12

    :cond_24
    invoke-static/range {p0 .. p1}, Lu0/d;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;

    move-result-object v2

    goto :goto_12

    :cond_25
    invoke-static/range {p0 .. p1}, Lu0/d;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;

    move-result-object v1

    goto :goto_12

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    new-instance v6, Lq0/k;

    invoke-direct {v6, v1, v2, v3, v5}, Lq0/k;-><init>(Lq0/a;Lq0/a;Lq0/b;Lq0/b;)V

    move-object v1, v6

    goto :goto_11

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    if-nez v1, :cond_28

    new-instance v1, Lq0/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lq0/k;-><init>(Lq0/a;Lq0/a;Lq0/b;Lq0/b;)V

    goto :goto_13

    :cond_28
    const/4 v2, 0x0

    :goto_13
    move-object/from16 v30, v1

    goto :goto_14

    :cond_29
    const/4 v2, 0x0

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_14

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    goto/16 :goto_10

    :cond_2b
    const/4 v2, 0x0

    new-instance v1, Lq0/j;

    sget-object v3, Lu0/i;->a:Lu0/i;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v7, v6, v3, v5}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lq0/j;-><init>(Ljava/util/List;)V

    move-object/from16 v29, v1

    goto/16 :goto_10

    :cond_2c
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    :goto_15
    move-object/from16 v11, p0

    move-object v1, v4

    const/4 v4, 0x0

    goto/16 :goto_25

    :pswitch_b
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :cond_2d
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static/range {p0 .. p1}, Lu0/h;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lr0/c;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    move-object/from16 v11, p0

    move-object/from16 v40, v4

    const/4 v4, 0x0

    goto/16 :goto_24

    :pswitch_c
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    move-object v0, v2

    move-object v1, v0

    move-object v3, v1

    const/4 v5, 0x0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v11

    if-eqz v11, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->B()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x6f

    if-eq v2, v6, :cond_35

    const/16 v6, 0xe04

    if-eq v2, v6, :cond_33

    const v6, 0x197f1

    if-eq v2, v6, :cond_31

    const v6, 0x3339a3

    if-eq v2, v6, :cond_2f

    goto :goto_19

    :cond_2f
    const-string v2, "mode"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_19

    :cond_30
    const/4 v2, 0x3

    goto :goto_1a

    :cond_31
    const-string v2, "inv"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_19

    :cond_32
    const/4 v2, 0x2

    goto :goto_1a

    :cond_33
    const-string v2, "pt"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_19

    :cond_34
    const/4 v2, 0x1

    goto :goto_1a

    :cond_35
    const-string v2, "o"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :goto_19
    const/4 v2, -0x1

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_46

    const/4 v6, 0x1

    if-eq v2, v6, :cond_45

    const/4 v6, 0x2

    if-eq v2, v6, :cond_44

    const/4 v6, 0x3

    if-eq v2, v6, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    :goto_1b
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x61

    if-eq v2, v6, :cond_3e

    const/16 v6, 0x69

    if-eq v2, v6, :cond_3c

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_3a

    const/16 v6, 0x73

    if-eq v2, v6, :cond_38

    goto :goto_1c

    :cond_38
    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v0, 0x3

    goto :goto_1d

    :cond_3a
    const-string v2, "n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1c

    :cond_3b
    const/4 v0, 0x2

    goto :goto_1d

    :cond_3c
    const-string v2, "i"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_1c

    :cond_3d
    const/4 v0, 0x1

    goto :goto_1d

    :cond_3e
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :goto_1c
    const/4 v0, -0x1

    goto :goto_1d

    :cond_3f
    const/4 v0, 0x0

    :goto_1d
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->d:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eqz v0, :cond_43

    const/4 v6, 0x1

    if-eq v0, v6, :cond_42

    const/4 v6, 0x2

    if-eq v0, v6, :cond_41

    const/4 v6, 0x3

    if-eq v0, v6, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unknown mask mode "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Defaulting to Add."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/c;->b(Ljava/lang/String;)V

    goto :goto_1f

    :cond_40
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->e:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto :goto_1e

    :cond_41
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->g:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto :goto_1e

    :cond_42
    const-string v0, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v7, v0}, Lk0/m;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->f:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    :goto_1e
    move-object/from16 v11, p0

    goto :goto_20

    :cond_43
    :goto_1f
    move-object/from16 v11, p0

    move-object v0, v2

    goto :goto_20

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->i()Z

    move-result v2

    move-object/from16 v11, p0

    move v5, v2

    :goto_20
    move-object/from16 v40, v4

    const/4 v4, 0x0

    goto :goto_21

    :cond_45
    new-instance v1, Lq0/h;

    invoke-static {}, Lw0/h;->c()F

    move-result v2

    sget-object v6, Lu0/F;->a:Lu0/F;

    move-object/from16 v11, p0

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-static {v11, v7, v2, v6, v4}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lq0/h;-><init>(Ljava/util/List;)V

    goto :goto_21

    :cond_46
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-static/range {p0 .. p1}, Lu0/d;->c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;

    move-result-object v2

    move-object v3, v2

    :goto_21
    move-object/from16 v4, v40

    goto/16 :goto_1b

    :cond_47
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    new-instance v2, Lr0/g;

    invoke-direct {v2, v0, v1, v3, v5}, Lr0/g;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lq0/h;Lq0/d;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v40

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_17

    :cond_48
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v7, Lk0/m;->o:I

    add-int/2addr v1, v0

    iput v1, v7, Lk0/m;->o:I

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    goto/16 :goto_24

    :pswitch_d
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported matte type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lk0/m;->a(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_49
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v1

    aget-object v31, v1, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4a

    goto :goto_22

    :cond_4a
    const-string v0, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v7, v0}, Lk0/m;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_4b
    const-string v0, "Unsupported matte type: Luma"

    invoke-virtual {v7, v0}, Lk0/m;->a(Ljava/lang/String;)V

    :goto_22
    iget v0, v7, Lk0/m;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lk0/m;->o:I

    goto/16 :goto_24

    :pswitch_e
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-static/range {p0 .. p1}, Lu0/c;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/l;

    move-result-object v21

    goto/16 :goto_24

    :pswitch_f
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_24

    :pswitch_10
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lw0/h;->c()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    move/from16 v23, v0

    goto :goto_23

    :pswitch_11
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lw0/h;->c()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    move/from16 v22, v0

    goto :goto_23

    :pswitch_12
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_23
    move v5, v4

    move-object v0, v11

    move-object/from16 v4, v40

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4c

    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    aget-object v17, v1, v0

    goto :goto_24

    :cond_4c
    sget-object v17, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->f:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    goto :goto_24

    :pswitch_14
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v20

    goto :goto_24

    :pswitch_15
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->k()I

    move-result v0

    int-to-long v14, v0

    goto :goto_24

    :pswitch_16
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    move v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->l()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :goto_24
    move-object v0, v11

    move-object/from16 v1, v40

    :goto_25
    move v5, v4

    const/4 v11, 0x0

    move-object v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_4d
    move-object/from16 v11, p0

    move-object/from16 v40, v4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-lez v1, :cond_4e

    new-instance v6, Lx0/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v38, v10

    move-object/from16 v10, v40

    move-wide/from16 v39, v14

    move-object v14, v6

    move-object/from16 v6, v37

    invoke-direct/range {v0 .. v6}, Lx0/a;-><init>(Lk0/m;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4e
    move-object/from16 v38, v10

    move-object/from16 v10, v40

    move-wide/from16 v39, v14

    :goto_26
    const/4 v0, 0x0

    cmpl-float v0, v36, v0

    if-lez v0, :cond_4f

    goto :goto_27

    :cond_4f
    iget v0, v7, Lk0/m;->l:F

    move/from16 v36, v0

    :goto_27
    new-instance v14, Lx0/a;

    const/4 v15, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lx0/a;-><init>(Lk0/m;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lx0/a;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v12

    move-object v3, v12

    move-object v4, v15

    move/from16 v5, v36

    invoke-direct/range {v0 .. v6}, Lx0/a;-><init>(Lk0/m;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_50
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lk0/m;->a(Ljava/lang/String;)V

    :cond_51
    new-instance v36, Ls0/e;

    move-object/from16 v0, v36

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v39

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v10, v38

    move-object/from16 v37, v11

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v37

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move/from16 v24, v33

    move-object/from16 v25, v34

    move-object/from16 v26, v35

    invoke-direct/range {v0 .. v26}, Ls0/e;-><init>(Ljava/util/List;Lk0/m;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lq0/l;IIIFFIILq0/j;Lq0/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lq0/b;ZLr0/a;Lu0/j;)V

    return-object v36

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch
.end method
