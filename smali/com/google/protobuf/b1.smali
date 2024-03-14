.class public final Lcom/google/protobuf/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/a1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/protobuf/X0;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/protobuf/X0;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/a1;

    invoke-direct {v0, v1}, Lcom/google/protobuf/a1;-><init>(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/protobuf/a1;

    invoke-direct {v0, v2}, Lcom/google/protobuf/a1;-><init>(I)V

    :goto_1
    sput-object v0, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    return-void
.end method

.method public static a([BII)I
    .locals 4

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/16 v1, -0xc

    const/4 v2, -0x1

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/protobuf/b1;->e(III)I

    move-result p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_3

    const/16 p1, -0x41

    if-le p0, p1, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int v2, v0, p0

    :cond_3
    :goto_0
    move p0, v2

    goto :goto_1

    :cond_4
    if-le v0, v1, :cond_5

    move v0, v2

    :cond_5
    move p0, v0

    :goto_1
    return p0
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 11

    sget-object v0, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    iget v0, v0, Lcom/google/protobuf/a1;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    or-int v0, p1, p2

    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    if-ltz v0, :cond_14

    add-int v0, p1, p2

    new-array p2, p2, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v0, :cond_2

    aget-byte v4, p0, p1

    if-ltz v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    int-to-char v4, v4

    aput-char v4, p2, v2

    move v2, v3

    goto :goto_0

    :cond_2
    :goto_2
    if-ge p1, v0, :cond_13

    add-int/lit8 v4, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    int-to-char p1, p1

    aput-char p1, p2, v2

    move p1, v4

    :goto_4
    move v2, v5

    if-ge p1, v0, :cond_2

    aget-byte v4, p0, p1

    if-ltz v4, :cond_4

    move v5, v3

    goto :goto_5

    :cond_4
    move v5, v1

    :goto_5
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-char v4, v4

    aput-char v4, p2, v2

    goto :goto_4

    :cond_6
    const/16 v5, -0x20

    if-ge p1, v5, :cond_7

    move v6, v3

    goto :goto_6

    :cond_7
    move v6, v1

    :goto_6
    if-eqz v6, :cond_a

    if-ge v4, v0, :cond_9

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v6, v2, 0x1

    const/16 v7, -0x3e

    if-lt p1, v7, :cond_8

    invoke-static {v4}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v7

    if-nez v7, :cond_8

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    int-to-char p1, p1

    aput-char p1, p2, v2

    move p1, v5

    move v2, v6

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    const/16 v6, -0x10

    if-ge p1, v6, :cond_b

    move v6, v3

    goto :goto_7

    :cond_b
    move v6, v1

    :goto_7
    if-eqz v6, :cond_10

    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_f

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v2, 0x1

    invoke-static {v4}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v9

    if-nez v9, :cond_e

    const/16 v9, -0x60

    if-ne p1, v5, :cond_c

    if-lt v4, v9, :cond_e

    :cond_c
    const/16 v5, -0x13

    if-ne p1, v5, :cond_d

    if-ge v4, v9, :cond_e

    :cond_d
    invoke-static {v6}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v5

    if-nez v5, :cond_e

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr p1, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr p1, v4

    int-to-char p1, p1

    aput-char p1, p2, v2

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_10
    add-int/lit8 v5, v0, -0x2

    if-ge v4, v5, :cond_12

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v2, 0x1

    invoke-static {v4}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v9

    if-nez v9, :cond_11

    shl-int/lit8 v9, p1, 0x1c

    add-int/lit8 v10, v4, 0x70

    add-int/2addr v10, v9

    shr-int/lit8 v9, v10, 0x1e

    if-nez v9, :cond_11

    invoke-static {v5}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {v6}, Lcom/google/protobuf/Y0;->a(B)Z

    move-result v9

    if-nez v9, :cond_11

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr p1, v4

    and-int/lit8 v4, v5, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr p1, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr p1, v4

    ushr-int/lit8 v4, p1, 0xa

    const v5, 0xd7c0

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p2, v2

    and-int/lit16 p1, p1, 0x3ff

    const v2, 0xdc00

    add-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v8

    add-int/2addr v8, v3

    :goto_8
    move p1, v7

    move v2, v8

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v2, "\ufffd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_16

    :goto_a
    move-object p0, v0

    :goto_b
    return-object p0

    :cond_16
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/CharSequence;[BII)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    iget v4, v4, Lcom/google/protobuf/a1;->a:I

    const/16 v6, 0x800

    const v7, 0xdfff

    const-string v8, " at index "

    const-string v9, "Failed writing "

    const v10, 0xd800

    const/16 v11, 0x80

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    add-int v12, v5, v2

    if-ge v12, v3, :cond_0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v11, :cond_0

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    add-int v0, v2, v4

    goto/16 :goto_9

    :cond_1
    add-int/2addr v2, v5

    :goto_1
    if-ge v5, v4, :cond_b

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ge v12, v11, :cond_2

    if-ge v2, v3, :cond_2

    add-int/lit8 v13, v2, 0x1

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    goto :goto_2

    :cond_2
    if-ge v12, v6, :cond_3

    add-int/lit8 v13, v3, -0x2

    if-gt v2, v13, :cond_3

    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v12, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v1, v13

    goto :goto_3

    :cond_3
    if-lt v12, v10, :cond_4

    if-ge v7, v12, :cond_5

    :cond_4
    add-int/lit8 v13, v3, -0x3

    if-gt v2, v13, :cond_5

    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v12, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    ushr-int/lit8 v14, v12, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v13

    add-int/lit8 v13, v2, 0x1

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    :goto_2
    move v2, v13

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v3, -0x4

    if-gt v2, v13, :cond_8

    add-int/lit8 v13, v5, 0x1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eq v13, v14, :cond_7

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v12, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v14, v5, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v12, 0x1

    ushr-int/lit8 v14, v5, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v12

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v14, v5, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v12, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v1, v12

    move v5, v13

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    move v5, v13

    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v10, v12, :cond_a

    if-gt v12, v7, :cond_a

    add-int/lit8 v1, v5, 0x1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v2

    goto/16 :goto_9

    :goto_4
    int-to-long v12, v2

    int-to-long v14, v3

    add-long/2addr v14, v12

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v4, v3, :cond_18

    array-length v5, v1

    sub-int/2addr v5, v3

    if-lt v5, v2, :cond_18

    const/4 v5, 0x0

    :goto_5
    const-wide/16 v2, 0x1

    if-ge v5, v4, :cond_c

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v11, :cond_c

    add-long/2addr v2, v12

    int-to-byte v7, v7

    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/X0;->q([BJB)V

    add-int/lit8 v5, v5, 0x1

    move-wide v12, v2

    const v7, 0xdfff

    goto :goto_5

    :cond_c
    if-ne v5, v4, :cond_d

    goto/16 :goto_8

    :cond_d
    :goto_6
    if-ge v5, v4, :cond_17

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v11, :cond_e

    cmp-long v16, v12, v14

    if-gez v16, :cond_e

    add-long v16, v12, v2

    int-to-byte v7, v7

    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/X0;->q([BJB)V

    move-wide v6, v2

    move v2, v5

    move v5, v11

    move-wide/from16 v12, v16

    goto/16 :goto_7

    :cond_e
    if-ge v7, v6, :cond_f

    const-wide/16 v16, 0x2

    sub-long v16, v14, v16

    cmp-long v16, v12, v16

    if-gtz v16, :cond_f

    add-long v10, v12, v2

    ushr-int/lit8 v6, v7, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/X0;->q([BJB)V

    add-long v12, v10, v2

    and-int/lit8 v6, v7, 0x3f

    const/16 v7, 0x80

    or-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-static {v1, v10, v11, v6}, Lcom/google/protobuf/X0;->q([BJB)V

    move-wide v6, v2

    move v2, v5

    const/16 v5, 0x80

    goto/16 :goto_7

    :cond_f
    move v6, v10

    if-lt v7, v6, :cond_10

    const v6, 0xdfff

    if-ge v6, v7, :cond_11

    :cond_10
    const-wide/16 v10, 0x3

    sub-long v10, v14, v10

    cmp-long v6, v12, v10

    if-gtz v6, :cond_11

    add-long v10, v12, v2

    ushr-int/lit8 v6, v7, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/X0;->q([BJB)V

    add-long v12, v10, v2

    ushr-int/lit8 v6, v7, 0x6

    and-int/lit8 v6, v6, 0x3f

    const/16 v2, 0x80

    or-int/lit16 v3, v6, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v10, v11, v3}, Lcom/google/protobuf/X0;->q([BJB)V

    const-wide/16 v10, 0x1

    add-long v18, v12, v10

    and-int/lit8 v3, v7, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-static {v1, v12, v13, v2}, Lcom/google/protobuf/X0;->q([BJB)V

    move v2, v5

    move-wide/from16 v12, v18

    const/16 v5, 0x80

    const-wide/16 v6, 0x1

    goto :goto_7

    :cond_11
    const-wide/16 v2, 0x4

    sub-long v2, v14, v2

    cmp-long v2, v12, v2

    if-gtz v2, :cond_14

    add-int/lit8 v2, v5, 0x1

    if-eq v2, v4, :cond_13

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v7, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    const-wide/16 v5, 0x1

    add-long v10, v12, v5

    ushr-int/lit8 v7, v3, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    invoke-static {v1, v12, v13, v7}, Lcom/google/protobuf/X0;->q([BJB)V

    add-long v12, v10, v5

    ushr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0x3f

    const/16 v5, 0x80

    or-int/lit16 v6, v7, 0x80

    int-to-byte v6, v6

    invoke-static {v1, v10, v11, v6}, Lcom/google/protobuf/X0;->q([BJB)V

    const-wide/16 v6, 0x1

    add-long v10, v12, v6

    ushr-int/lit8 v17, v3, 0x6

    and-int/lit8 v6, v17, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/X0;->q([BJB)V

    const-wide/16 v6, 0x1

    add-long v12, v10, v6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v10, v11, v3}, Lcom/google/protobuf/X0;->q([BJB)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v11, v5

    const v10, 0xd800

    move v5, v2

    move-wide v2, v6

    const/16 v6, 0x800

    goto/16 :goto_6

    :cond_12
    move v5, v2

    :cond_13
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_14
    const v1, 0xd800

    if-gt v1, v7, :cond_16

    const v1, 0xdfff

    if-gt v7, v1, :cond_16

    add-int/lit8 v1, v5, 0x1

    if-eq v1, v4, :cond_15

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v5, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_8
    long-to-int v0, v12

    :goto_9
    return v0

    :cond_18
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/CharSequence;)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p0, v2, v4}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
