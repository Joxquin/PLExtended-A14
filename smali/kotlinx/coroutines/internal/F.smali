.class public final Lkotlinx/coroutines/internal/F;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;JJJ)J
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/internal/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-wide/from16 v8, p1

    goto/16 :goto_9

    :cond_0
    new-instance v6, Lq3/c;

    const/4 v7, 0x2

    const/16 v8, 0x24

    invoke-direct {v6, v7, v8}, Lq3/c;-><init>(II)V

    iget v6, v6, Lq3/a;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xa

    if-gt v11, v6, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    if-eqz v6, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    move-object v15, v5

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ge v7, v8, :cond_4

    const/4 v8, -0x1

    goto :goto_2

    :cond_4
    if-ne v7, v8, :cond_5

    move v8, v9

    goto :goto_2

    :cond_5
    move v8, v10

    :goto_2
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v8, :cond_8

    if-ne v6, v10, :cond_6

    goto :goto_1

    :cond_6
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_7

    const-wide/high16 v12, -0x8000000000000000L

    move v7, v10

    goto :goto_3

    :cond_7
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    move v8, v9

    move v7, v10

    goto :goto_4

    :cond_8
    move v7, v9

    :goto_3
    move v8, v7

    :goto_4
    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :goto_5
    if-ge v7, v6, :cond_d

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Character;->digit(II)I

    move-result v14

    if-gez v14, :cond_9

    goto :goto_1

    :cond_9
    cmp-long v15, v9, v16

    if-gez v15, :cond_a

    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    cmp-long v15, v16, v18

    if-nez v15, :cond_2

    move-object v15, v5

    move/from16 v20, v6

    int-to-long v5, v11

    div-long v16, v12, v5

    cmp-long v5, v9, v16

    if-gez v5, :cond_b

    goto :goto_6

    :cond_a
    move-object v15, v5

    move/from16 v20, v6

    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :cond_b
    int-to-long v5, v11

    mul-long/2addr v9, v5

    int-to-long v5, v14

    add-long v21, v12, v5

    cmp-long v14, v9, v21

    if-gez v14, :cond_c

    :goto_6
    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    sub-long/2addr v9, v5

    add-int/lit8 v7, v7, 0x1

    move-object v5, v15

    move/from16 v6, v20

    goto :goto_5

    :cond_d
    move-object v15, v5

    if-eqz v8, :cond_e

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_7

    :cond_e
    neg-long v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_7
    const-string v6, "\'"

    const-string v7, "System property \'"

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v1, v8

    if-gtz v5, :cond_f

    cmp-long v5, v8, v3

    if-gtz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_10

    :goto_9
    return-wide v8

    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "radix 10 was not in valid range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lq3/c;

    invoke-direct {v2, v7, v8}, Lq3/c;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lkotlinx/coroutines/internal/G;->a:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/F;->a(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
