.class public abstract Lcom/google/protobuf/Z0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a([BII)Z
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    check-cast v3, Lcom/google/protobuf/a1;

    const/16 v5, -0x10

    const/16 v6, -0x60

    iget v3, v3, Lcom/google/protobuf/a1;->a:I

    const/16 v7, -0x20

    const/16 v8, -0x3e

    const/16 v9, -0x13

    const/16 v10, -0x41

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :goto_0
    :pswitch_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    if-ltz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    if-gez v1, :cond_a

    if-ge v1, v7, :cond_4

    if-lt v3, v2, :cond_3

    goto/16 :goto_b

    :cond_3
    if-lt v1, v8, :cond_1f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v0, v3

    if-le v3, v10, :cond_1

    goto/16 :goto_a

    :cond_4
    if-ge v1, v5, :cond_8

    add-int/lit8 v11, v2, -0x1

    if-lt v3, v11, :cond_5

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/b1;->a([BII)I

    move-result v1

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v0, v3

    if-gt v3, v10, :cond_1f

    if-ne v1, v7, :cond_6

    if-lt v3, v6, :cond_1f

    :cond_6
    if-ne v1, v9, :cond_7

    if-ge v3, v6, :cond_1f

    :cond_7
    add-int/lit8 v1, v11, 0x1

    aget-byte v3, v0, v11

    if-le v3, v10, :cond_1

    goto/16 :goto_a

    :cond_8
    add-int/lit8 v11, v2, -0x2

    if-lt v3, v11, :cond_9

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/b1;->a([BII)I

    move-result v1

    goto/16 :goto_b

    :cond_9
    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v0, v3

    if-gt v3, v10, :cond_1f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v3, v1

    shr-int/lit8 v1, v3, 0x1e

    if-nez v1, :cond_1f

    add-int/lit8 v1, v11, 0x1

    aget-byte v3, v0, v11

    if-gt v3, v10, :cond_1f

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    if-le v1, v10, :cond_a

    goto/16 :goto_a

    :cond_a
    move v1, v3

    goto :goto_1

    :goto_2
    or-int v3, v1, v2

    array-length v11, v0

    sub-int/2addr v11, v2

    or-int/2addr v3, v11

    if-ltz v3, :cond_21

    int-to-long v11, v1

    int-to-long v1, v2

    sub-long/2addr v1, v11

    long-to-int v1, v1

    const/16 v2, 0x10

    const-wide/16 v13, 0x1

    if-ge v1, v2, :cond_b

    const/4 v3, 0x0

    goto :goto_6

    :cond_b
    long-to-int v2, v11

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    move-wide v4, v11

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_d

    add-long v15, v4, v13

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v4

    if-gez v4, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v15

    goto :goto_3

    :cond_d
    :goto_4
    add-int/lit8 v2, v3, 0x8

    if-gt v2, v1, :cond_f

    sget-wide v15, Lcom/google/protobuf/X0;->f:J

    add-long v9, v15, v4

    invoke-static {v9, v10, v0}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v9

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v15

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    const-wide/16 v9, 0x8

    add-long/2addr v4, v9

    move v3, v2

    const/16 v9, -0x13

    const/16 v10, -0x41

    goto :goto_4

    :cond_f
    :goto_5
    if-ge v3, v1, :cond_11

    add-long v9, v4, v13

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v2

    if-gez v2, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v9

    goto :goto_5

    :cond_11
    move v3, v1

    :goto_6
    sub-int/2addr v1, v3

    int-to-long v2, v3

    add-long/2addr v11, v2

    :cond_12
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-lez v1, :cond_14

    add-long v2, v11, v13

    invoke-static {v0, v11, v12}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v4

    if-ltz v4, :cond_13

    add-int/lit8 v1, v1, -0x1

    move-wide v11, v2

    move v2, v4

    goto :goto_8

    :cond_13
    move-wide v11, v2

    move v2, v4

    :cond_14
    if-nez v1, :cond_15

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_15
    add-int/lit8 v1, v1, -0x1

    if-ge v2, v7, :cond_18

    if-nez v1, :cond_16

    move v1, v2

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v1, v1, -0x1

    if-lt v2, v8, :cond_1f

    add-long v2, v11, v13

    invoke-static {v0, v11, v12}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v4

    const/16 v5, -0x41

    if-le v4, v5, :cond_17

    goto/16 :goto_a

    :cond_17
    move-wide v11, v2

    goto :goto_7

    :cond_18
    const/16 v3, -0x10

    if-ge v2, v3, :cond_1c

    const/4 v4, 0x2

    if-ge v1, v4, :cond_19

    invoke-static {v0, v2, v11, v12, v1}, Lcom/google/protobuf/a1;->b([BIJI)I

    move-result v1

    goto :goto_b

    :cond_19
    add-int/lit8 v1, v1, -0x2

    add-long v4, v11, v13

    invoke-static {v0, v11, v12}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v9

    const/16 v10, -0x41

    if-gt v9, v10, :cond_1f

    if-ne v2, v7, :cond_1a

    if-lt v9, v6, :cond_1f

    :cond_1a
    const/16 v10, -0x13

    if-ne v2, v10, :cond_1b

    if-ge v9, v6, :cond_1f

    :cond_1b
    add-long v11, v4, v13

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v2

    const/16 v4, -0x41

    if-le v2, v4, :cond_12

    goto :goto_a

    :cond_1c
    const/16 v10, -0x13

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1d

    invoke-static {v0, v2, v11, v12, v1}, Lcom/google/protobuf/a1;->b([BIJI)I

    move-result v1

    goto :goto_b

    :cond_1d
    add-int/lit8 v1, v1, -0x3

    add-long v4, v11, v13

    invoke-static {v0, v11, v12}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v9

    const/16 v11, -0x41

    if-gt v9, v11, :cond_1f

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v9, v2

    shr-int/lit8 v2, v9, 0x1e

    if-nez v2, :cond_1f

    add-long v6, v4, v13

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v2

    if-gt v2, v11, :cond_1f

    add-long v4, v6, v13

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result v2

    if-le v2, v11, :cond_1e

    goto :goto_a

    :cond_1e
    move-wide v11, v4

    const/16 v6, -0x60

    const/16 v7, -0x20

    goto/16 :goto_7

    :cond_1f
    :goto_a
    const/4 v1, -0x1

    :goto_b
    if-nez v1, :cond_20

    const/4 v4, 0x1

    goto :goto_c

    :cond_20
    const/4 v4, 0x0

    :goto_c
    return v4

    :cond_21
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
