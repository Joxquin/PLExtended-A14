.class public final Lb0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lq/h;)Lq/h;
    .locals 4

    new-instance v0, Lq/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq/h;-><init>(I)V

    if-eqz p0, :cond_1

    new-instance v1, Lq/g;

    invoke-direct {v1, p0}, Lq/g;-><init>(Lq/h;)V

    :goto_0
    invoke-virtual {v1}, Lq/i;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lq/i;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceSpec;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/app/slice/SliceSpec;

    iget-object v3, p0, Landroidx/slice/SliceSpec;->a:Ljava/lang/String;

    iget p0, p0, Landroidx/slice/SliceSpec;->b:I

    invoke-direct {v2, v3, p0}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    move-object p0, v2

    :goto_1
    invoke-virtual {v0, p0}, Lq/h;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "The icon resource isn\'t available."

    const-string v3, "SliceConvert"

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/slice/SliceSpec;

    invoke-virtual {v7}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v7

    invoke-direct {v0, v8, v7}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    :goto_0
    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "int"

    const-string v12, "long"

    const-string v13, "text"

    const-string v14, "image"

    const-string v15, "input"

    move-object/from16 p0, v8

    const-string v8, "slice"

    const/16 v16, -0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const/16 v16, 0x7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/16 v16, 0x6

    goto :goto_2

    :sswitch_2
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/16 v16, 0x4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/16 v16, 0x3

    goto :goto_2

    :sswitch_5
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    const/16 v16, 0x2

    goto :goto_2

    :sswitch_6
    const-string v10, "bundle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    const/16 v16, 0x1

    goto :goto_2

    :sswitch_7
    const-string v10, "action"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    :goto_2
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v9

    invoke-static {v9, v1}, Lb0/c;->b(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/slice/SliceItem;

    iget-object v11, v9, Landroidx/slice/Slice;->c:[Ljava/lang/String;

    invoke-direct {v10, v9, v8, v0, v11}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v10, Landroidx/slice/SliceItem;

    invoke-direct {v10, v8, v15, v9, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-static {v1, v8}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-static {v8}, Landroidx/slice/Slice;->d(Landroidx/core/graphics/drawable/IconCompat;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v8}, Landroidx/slice/Slice;->d(Landroidx/core/graphics/drawable/IconCompat;)Z

    new-instance v10, Landroidx/slice/SliceItem;

    invoke-direct {v10, v8, v14, v9, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v10, Landroidx/slice/SliceItem;

    invoke-direct {v10, v8, v13, v9, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v11, Landroidx/slice/SliceItem;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v11, v8, v12, v10, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v10, Landroidx/slice/SliceItem;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v8, v11, v9, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_6
    new-instance v8, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v9, v10, v11, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v9

    invoke-static {v9, v1}, Lb0/c;->b(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Landroidx/slice/Slice;->c:[Ljava/lang/String;

    new-instance v11, Landroidx/slice/SliceItem;

    invoke-direct {v11, v8, v9, v0, v10}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v8, p0

    goto/16 :goto_1

    :cond_a
    new-instance v0, Landroidx/slice/Slice;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v5, v1, v4, v7}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    :cond_b
    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
