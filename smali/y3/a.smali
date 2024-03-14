.class public final Ly3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Ls3/b;->a:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lx3/b;Lx3/h;Z)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lx3/b;->d:Lx3/l;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v4, v0, Lx3/l;->b:I

    iget v5, v0, Lx3/l;->c:I

    iget-object v1, v1, Lx3/h;->e:[I

    const/4 v6, 0x0

    iget-object v7, v0, Lx3/l;->a:[B

    move-object v9, v0

    move v10, v3

    move v8, v6

    :goto_1
    add-int/lit8 v11, v8, 0x1

    aget v8, v1, v8

    add-int/lit8 v12, v11, 0x1

    aget v11, v1, v11

    if-eq v11, v3, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v13, v8, v12

    :goto_2
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v14, v12, 0x1

    aget v12, v1, v12

    if-eq v4, v12, :cond_4

    return v10

    :cond_4
    if-ne v14, v13, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    if-ne v8, v5, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v5, v9, Lx3/l;->f:Lx3/l;

    invoke-static {v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v7, v5, Lx3/l;->b:I

    iget v8, v5, Lx3/l;->c:I

    iget-object v9, v5, Lx3/l;->a:[B

    if-ne v5, v0, :cond_8

    if-eqz v4, :cond_6

    move v5, v8

    move-object v8, v11

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    return v2

    :cond_7
    return v10

    :cond_8
    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_5

    :cond_9
    move-object/from16 v16, v9

    move-object v9, v7

    move v7, v8

    move-object/from16 v8, v16

    :goto_5
    if-eqz v4, :cond_a

    aget v4, v1, v14

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    goto :goto_7

    :cond_a
    move v4, v7

    move-object v7, v9

    move v12, v14

    move-object v9, v8

    goto :goto_2

    :cond_b
    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int v14, v12, v8

    :goto_6
    if-ne v12, v14, :cond_c

    return v10

    :cond_c
    aget v15, v1, v12

    if-ne v4, v15, :cond_10

    add-int/2addr v12, v8

    aget v4, v1, v12

    if-ne v13, v5, :cond_d

    iget-object v9, v9, Lx3/l;->f:Lx3/l;

    invoke-static {v9}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v5, v9, Lx3/l;->b:I

    iget v7, v9, Lx3/l;->c:I

    iget-object v8, v9, Lx3/l;->a:[B

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_7

    :cond_d
    move-object v8, v7

    move v7, v5

    move v5, v13

    :cond_e
    :goto_7
    if-ltz v4, :cond_f

    return v4

    :cond_f
    neg-int v4, v4

    move-object/from16 v16, v8

    move v8, v4

    move v4, v5

    move v5, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_6
.end method
