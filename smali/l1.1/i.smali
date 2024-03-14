.class public final Ll1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/systemui/monet/a;


# instance fields
.field public final a:I

.field public final b:Lcom/android/systemui/monet/Style;

.field public final c:Ll1/t;

.field public final d:Ll1/t;

.field public final e:Ll1/t;

.field public final f:Ll1/t;

.field public final g:Ll1/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/monet/a;

    invoke-direct {v0}, Lcom/android/systemui/monet/a;-><init>()V

    sput-object v0, Ll1/i;->h:Lcom/android/systemui/monet/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperColors;Lcom/android/systemui/monet/Style;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "wallpaperColors"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "style"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/monet/Style;->e:Lcom/android/systemui/monet/Style;

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "b"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_1
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    int-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v10, v6, v8

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const v11, -0xe4910d

    const/high16 v12, 0x40a00000    # 5.0f

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    const-string v6, "wallpaperColors.mainColors"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/o;->d(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Color;

    invoke-virtual {v7}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lkotlin/collections/s;->m(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/s;->k(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v8}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v8

    cmpl-float v8, v8, v12

    if-ltz v8, :cond_6

    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v6}, Lkotlin/collections/s;->k(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_8
    move v3, v11

    goto/16 :goto_1a

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v13

    const-string v14, "wallpaperColors.allColors"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lkotlin/collections/w;->a(I)I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    move-object/from16 v17, v5

    int-to-double v4, v13

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v15, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    const v11, -0xe4910d

    goto :goto_7

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/w;->a(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string v11, "it.key"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x168

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v6, :cond_c

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    invoke-static {v4}, Lkotlin/collections/s;->l(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v11, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v11}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v13

    invoke-static {v13}, Ln3/a;->a(F)I

    move-result v13

    rem-int/2addr v13, v6

    if-eqz v2, :cond_d

    invoke-virtual {v11}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v11

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_d

    goto :goto_b

    :cond_d
    move-object v11, v4

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    add-double v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v11, v13, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_b
    const-wide/16 v8, 0x0

    goto :goto_a

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/collections/w;->a(I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0xf

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v8

    invoke-static {v8}, Ln3/a;->a(F)I

    move-result v8

    add-int/lit8 v13, v8, -0xf

    add-int/2addr v8, v9

    const-wide/16 v14, 0x0

    if-gt v13, v8, :cond_11

    :goto_d
    if-gez v13, :cond_f

    rem-int/lit16 v9, v13, 0x168

    add-int/2addr v9, v6

    goto :goto_e

    :cond_f
    if-lt v13, v6, :cond_10

    rem-int/lit16 v9, v13, 0x168

    goto :goto_e

    :cond_10
    move v9, v13

    :goto_e
    move-object v6, v4

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    add-double v14, v20, v14

    if-eq v13, v8, :cond_11

    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x168

    goto :goto_d

    :cond_11
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v7, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x168

    goto :goto_c

    :cond_12
    if-nez v2, :cond_13

    move-object v2, v5

    goto :goto_11

    :cond_13
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v6}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v6

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_16

    if-nez v10, :cond_15

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v13, v17

    if-lez v6, :cond_16

    :cond_15
    const/4 v6, 0x1

    goto :goto_10

    :cond_16
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_17
    :goto_11
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/w;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    const-string v10, "it.value"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide v13, 0x4051800000000000L    # 70.0

    mul-double/2addr v10, v13

    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    const/high16 v13, 0x42400000    # 48.0f

    cmpg-float v4, v4, v13

    if-gez v4, :cond_18

    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    sub-float/2addr v4, v13

    float-to-double v13, v4

    const-wide v17, 0x3fb999999999999aL    # 0.1

    goto :goto_13

    :cond_18
    invoke-virtual {v8}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    sub-float/2addr v4, v13

    float-to-double v13, v4

    const-wide v17, 0x3fd3333333333333L    # 0.3

    :goto_13
    mul-double v13, v13, v17

    add-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_19
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/s;->l(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_1a

    new-instance v4, Ll1/h;

    invoke-direct {v4}, Ll1/h;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_1a

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x5a

    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1b
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v14, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v14}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v13, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v13}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v13

    sub-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43340000    # 180.0f

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v14, v13

    int-to-float v13, v4

    cmpg-float v13, v14, v13

    if-gez v13, :cond_1d

    move v13, v6

    goto :goto_16

    :cond_1d
    const/4 v13, 0x0

    :goto_16
    if-eqz v13, :cond_1c

    goto :goto_17

    :cond_1e
    const/4 v11, 0x0

    :goto_17
    if-eqz v11, :cond_1f

    move v10, v6

    goto :goto_18

    :cond_1f
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_20

    goto :goto_15

    :cond_20
    const-string v10, "int"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x4

    if-lt v8, v10, :cond_1b

    goto :goto_19

    :cond_21
    if-eq v4, v9, :cond_22

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_14

    :cond_22
    :goto_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    const v3, -0xe4910d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_23
    const v3, -0xe4910d

    :goto_1a
    invoke-static {v2}, Lkotlin/collections/s;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Ll1/i;->a:I

    iput-object v1, v0, Ll1/i;->b:Lcom/android/systemui/monet/Style;

    invoke-static {v2}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v4

    if-nez v2, :cond_24

    goto :goto_1b

    :cond_24
    sget-object v5, Lcom/android/systemui/monet/Style;->e:Lcom/android/systemui/monet/Style;

    if-eq v1, v5, :cond_25

    invoke-virtual {v4}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    cmpg-float v4, v4, v12

    if-gez v4, :cond_25

    :goto_1b
    move v11, v3

    goto :goto_1c

    :cond_25
    move v11, v2

    :goto_1c
    new-instance v2, Ll1/t;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/monet/Style;->a()Ll1/j;

    move-result-object v3

    iget-object v3, v3, Ll1/j;->a:Ll1/u;

    invoke-direct {v2, v3, v11}, Ll1/t;-><init>(Ll1/u;I)V

    iput-object v2, v0, Ll1/i;->c:Ll1/t;

    new-instance v2, Ll1/t;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/monet/Style;->a()Ll1/j;

    move-result-object v3

    iget-object v3, v3, Ll1/j;->b:Ll1/u;

    invoke-direct {v2, v3, v11}, Ll1/t;-><init>(Ll1/u;I)V

    iput-object v2, v0, Ll1/i;->d:Ll1/t;

    new-instance v2, Ll1/t;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/monet/Style;->a()Ll1/j;

    move-result-object v3

    iget-object v3, v3, Ll1/j;->c:Ll1/u;

    invoke-direct {v2, v3, v11}, Ll1/t;-><init>(Ll1/u;I)V

    iput-object v2, v0, Ll1/i;->e:Ll1/t;

    new-instance v2, Ll1/t;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/monet/Style;->a()Ll1/j;

    move-result-object v3

    iget-object v3, v3, Ll1/j;->d:Ll1/u;

    invoke-direct {v2, v3, v11}, Ll1/t;-><init>(Ll1/u;I)V

    iput-object v2, v0, Ll1/i;->f:Ll1/t;

    new-instance v2, Ll1/t;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/monet/Style;->a()Ll1/j;

    move-result-object v1

    iget-object v1, v1, Ll1/j;->e:Ll1/u;

    invoke-direct {v2, v1, v11}, Ll1/t;-><init>(Ll1/u;I)V

    iput-object v2, v0, Ll1/i;->g:Ll1/t;

    return-void

    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Ll1/i;->a:I

    invoke-static {v0}, Lcom/android/systemui/monet/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ll1/i;->c:Ll1/t;

    iget-object v1, v1, Ll1/t;->c:Ljava/util/List;

    const-string v2, "PRIMARY"

    invoke-static {v2, v1}, Lcom/android/systemui/monet/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ll1/i;->d:Ll1/t;

    iget-object v2, v2, Ll1/t;->c:Ljava/util/List;

    const-string v3, "SECONDARY"

    invoke-static {v3, v2}, Lcom/android/systemui/monet/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ll1/i;->e:Ll1/t;

    iget-object v3, v3, Ll1/t;->c:Ljava/util/List;

    const-string v4, "TERTIARY"

    invoke-static {v4, v3}, Lcom/android/systemui/monet/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ll1/i;->f:Ll1/t;

    iget-object v4, v4, Ll1/t;->c:Ljava/util/List;

    const-string v5, "NEUTRAL"

    invoke-static {v5, v4}, Lcom/android/systemui/monet/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ll1/i;->g:Ll1/t;

    iget-object v5, v5, Ll1/t;->c:Ljava/util/List;

    const-string v6, "NEUTRAL VARIANT"

    invoke-static {v6, v5}, Lcom/android/systemui/monet/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ColorScheme {\n  seed color: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  style: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll1/i;->b:Lcom/android/systemui/monet/Style;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n  palettes: \n  "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
