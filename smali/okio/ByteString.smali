.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final f:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient d:I

.field private final data:[B

.field public transient e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->f:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lokio/ByteString;
    .locals 3

    new-instance v0, Lokio/ByteString;

    sget-object v1, Ls3/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput-object p0, v0, Lokio/ByteString;->e:Ljava/lang/String;

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    new-array v3, v0, [B

    :goto_1
    if-ge v2, v0, :cond_2

    sub-int v4, v0, v2

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, v3}, Lokio/ByteString;-><init>([B)V

    const-class v0, Lokio/ByteString;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p0, v0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public final c()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lokio/ByteString;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->d()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lokio/ByteString;->h(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->h(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 8

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Ly3/b;->a:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result v1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v3, p0

    if-ne v1, v3, :cond_1

    array-length v1, p0

    invoke-virtual {p1, v2, v2, v1, p0}, Lokio/ByteString;->i(III[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public g()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public h(I)B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lokio/ByteString;->d:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->d:I

    :goto_0
    return v0
.end method

.method public i(III[B)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    sub-int/2addr v0, p3

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p4

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    invoke-static {p1, p2, p3, p0, p4}, Lx3/a;->a(III[B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Lokio/ByteString;I)Z
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0, v0, p2, p0}, Lokio/ByteString;->i(III[B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "[size=0]"

    goto/16 :goto_28

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_1
    const/16 v5, 0x40

    if-ge v2, v1, :cond_47

    aget-byte v6, v0, v2

    const/16 v7, 0xd

    const/16 v8, 0x7f

    const/16 v9, 0xa0

    const/16 v10, 0x20

    const v11, 0xfffd

    const/high16 v12, 0x10000

    const/16 v13, 0xa

    if-ltz v6, :cond_13

    add-int/lit8 v14, v3, 0x1

    if-ne v3, v5, :cond_3

    goto/16 :goto_25

    :cond_3
    if-eq v6, v13, :cond_8

    if-eq v6, v7, :cond_8

    if-ltz v6, :cond_4

    if-ge v6, v10, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    if-gt v8, v6, :cond_5

    if-ge v6, v9, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_46

    :cond_8
    if-ne v6, v11, :cond_9

    goto/16 :goto_24

    :cond_9
    if-ge v6, v12, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x2

    :goto_6
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    :goto_7
    move v3, v14

    if-ge v2, v1, :cond_2

    aget-byte v6, v0, v2

    if-ltz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v14, v3, 0x1

    if-ne v3, v5, :cond_b

    goto/16 :goto_25

    :cond_b
    if-eq v6, v13, :cond_10

    if-eq v6, v7, :cond_10

    if-ltz v6, :cond_c

    if-ge v6, v10, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_f

    if-gt v8, v6, :cond_d

    if-ge v6, v9, :cond_d

    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_e

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-nez v3, :cond_46

    :cond_10
    if-ne v6, v11, :cond_11

    goto/16 :goto_24

    :cond_11
    if-ge v6, v12, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    const/4 v3, 0x2

    :goto_c
    add-int/2addr v4, v3

    goto :goto_7

    :cond_13
    shr-int/lit8 v11, v6, 0x5

    const/4 v12, -0x2

    const/16 v14, 0x80

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v2, 0x1

    if-gt v1, v11, :cond_14

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_14
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v14, :cond_15

    const/4 v12, 0x1

    goto :goto_d

    :cond_15
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_16

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_16
    xor-int/lit16 v11, v11, 0xf80

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v6, v11

    if-ge v6, v14, :cond_17

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_17
    add-int/lit8 v11, v3, 0x1

    if-ne v3, v5, :cond_18

    goto/16 :goto_25

    :cond_18
    if-eq v6, v13, :cond_1d

    if-eq v6, v7, :cond_1d

    if-ltz v6, :cond_19

    if-ge v6, v10, :cond_19

    const/4 v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_1c

    if-gt v8, v6, :cond_1a

    if-ge v6, v9, :cond_1a

    const/4 v3, 0x1

    goto :goto_f

    :cond_1a
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v3, 0x0

    goto :goto_11

    :cond_1c
    :goto_10
    const/4 v3, 0x1

    :goto_11
    if-nez v3, :cond_46

    :cond_1d
    const v3, 0xfffd

    if-ne v6, v3, :cond_1e

    goto/16 :goto_24

    :cond_1e
    const/high16 v3, 0x10000

    if-ge v6, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_12

    :cond_1f
    const/4 v3, 0x2

    :goto_12
    add-int/2addr v4, v3

    sget-object v3, Le3/f;->a:Le3/f;

    add-int/lit8 v2, v2, 0x2

    move v3, v11

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v8, v6, 0x4

    const v9, 0xe000

    const v10, 0xd800

    if-ne v8, v12, :cond_31

    add-int/lit8 v8, v2, 0x2

    if-gt v1, v8, :cond_21

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_21
    add-int/lit8 v11, v2, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v14, :cond_22

    const/4 v12, 0x1

    goto :goto_13

    :cond_22
    const/4 v12, 0x0

    :goto_13
    if-nez v12, :cond_23

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_23
    aget-byte v8, v0, v8

    and-int/lit16 v12, v8, 0xc0

    if-ne v12, v14, :cond_24

    const/4 v12, 0x1

    goto :goto_14

    :cond_24
    const/4 v12, 0x0

    :goto_14
    if-nez v12, :cond_25

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_25
    const v12, -0x1e080

    xor-int/2addr v8, v12

    shl-int/lit8 v11, v11, 0x6

    xor-int/2addr v8, v11

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v6, v8

    const/16 v8, 0x800

    if-ge v6, v8, :cond_26

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_26
    if-gt v10, v6, :cond_27

    if-ge v6, v9, :cond_27

    const/4 v8, 0x1

    goto :goto_15

    :cond_27
    const/4 v8, 0x0

    :goto_15
    if-eqz v8, :cond_28

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_28
    add-int/lit8 v8, v3, 0x1

    if-ne v3, v5, :cond_29

    goto/16 :goto_25

    :cond_29
    if-eq v6, v13, :cond_2e

    if-eq v6, v7, :cond_2e

    if-ltz v6, :cond_2a

    const/16 v3, 0x20

    if-ge v6, v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_16

    :cond_2a
    const/4 v3, 0x0

    :goto_16
    if-nez v3, :cond_2d

    const/16 v3, 0x7f

    if-gt v3, v6, :cond_2b

    const/16 v3, 0xa0

    if-ge v6, v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_17

    :cond_2b
    const/4 v3, 0x0

    :goto_17
    if-eqz v3, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v3, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    const/4 v3, 0x1

    :goto_19
    if-nez v3, :cond_46

    :cond_2e
    const v3, 0xfffd

    if-ne v6, v3, :cond_2f

    goto/16 :goto_24

    :cond_2f
    const/high16 v3, 0x10000

    if-ge v6, v3, :cond_30

    const/4 v3, 0x1

    goto :goto_1a

    :cond_30
    const/4 v3, 0x2

    :goto_1a
    add-int/2addr v4, v3

    sget-object v3, Le3/f;->a:Le3/f;

    add-int/lit8 v2, v2, 0x3

    move v3, v8

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v7, v6, 0x3

    if-ne v7, v12, :cond_45

    add-int/lit8 v7, v2, 0x3

    if-gt v1, v7, :cond_32

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_32
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v11, v8, 0xc0

    if-ne v11, v14, :cond_33

    const/4 v11, 0x1

    goto :goto_1b

    :cond_33
    const/4 v11, 0x0

    :goto_1b
    if-nez v11, :cond_34

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_34
    add-int/lit8 v11, v2, 0x2

    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v14, :cond_35

    const/4 v12, 0x1

    goto :goto_1c

    :cond_35
    const/4 v12, 0x0

    :goto_1c
    if-nez v12, :cond_36

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_36
    aget-byte v7, v0, v7

    and-int/lit16 v12, v7, 0xc0

    if-ne v12, v14, :cond_37

    const/4 v12, 0x1

    goto :goto_1d

    :cond_37
    const/4 v12, 0x0

    :goto_1d
    if-nez v12, :cond_38

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_38
    const v12, 0x381f80

    xor-int/2addr v7, v12

    shl-int/lit8 v11, v11, 0x6

    xor-int/2addr v7, v11

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v7, v8

    shl-int/lit8 v6, v6, 0x12

    xor-int/2addr v6, v7

    const v7, 0x10ffff

    if-le v6, v7, :cond_39

    if-ne v3, v5, :cond_46

    goto/16 :goto_25

    :cond_39
    if-gt v10, v6, :cond_3a

    if-ge v6, v9, :cond_3a

    const/4 v7, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v7, 0x0

    :goto_1e
    if-eqz v7, :cond_3b

    if-ne v3, v5, :cond_46

    goto :goto_25

    :cond_3b
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_3c

    if-ne v3, v5, :cond_46

    goto :goto_25

    :cond_3c
    add-int/lit8 v7, v3, 0x1

    if-ne v3, v5, :cond_3d

    goto :goto_25

    :cond_3d
    if-eq v6, v13, :cond_42

    const/16 v3, 0xd

    if-eq v6, v3, :cond_42

    if-ltz v6, :cond_3e

    const/16 v3, 0x20

    if-ge v6, v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_3e
    const/4 v3, 0x0

    :goto_1f
    if-nez v3, :cond_41

    const/16 v3, 0x7f

    if-gt v3, v6, :cond_3f

    const/16 v3, 0xa0

    if-ge v6, v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_20

    :cond_3f
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_40

    goto :goto_21

    :cond_40
    const/4 v3, 0x0

    goto :goto_22

    :cond_41
    :goto_21
    const/4 v3, 0x1

    :goto_22
    if-nez v3, :cond_46

    :cond_42
    const v3, 0xfffd

    if-ne v6, v3, :cond_43

    goto :goto_24

    :cond_43
    const/high16 v3, 0x10000

    if-ge v6, v3, :cond_44

    const/4 v3, 0x1

    goto :goto_23

    :cond_44
    const/4 v3, 0x2

    :goto_23
    add-int/2addr v4, v3

    sget-object v3, Le3/f;->a:Le3/f;

    add-int/lit8 v2, v2, 0x4

    move v3, v7

    goto/16 :goto_1

    :cond_45
    if-ne v3, v5, :cond_46

    goto :goto_25

    :cond_46
    :goto_24
    const/4 v4, -0x1

    :cond_47
    :goto_25
    const-string v0, "\u2026]"

    const-string v1, "[size="

    const-string v2, "]"

    const/4 v3, -0x1

    if-ne v4, v3, :cond_4c

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v4, v3

    if-gt v4, v5, :cond_48

    invoke-virtual {p0}, Lokio/ByteString;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[hex="

    invoke-static {v0, p0, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_28

    :cond_48
    array-length v2, v3

    array-length v4, v3

    if-gt v5, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_26

    :cond_49
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_4b

    array-length v4, v3

    if-ne v5, v4, :cond_4a

    goto :goto_27

    :cond_4a
    new-instance p0, Lokio/ByteString;

    array-length v4, v3

    invoke-static {v5, v4}, Lkotlin/collections/k;->a(II)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const-string v4, "copyOfRange(this, fromIndex, toIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    :goto_27
    invoke-virtual {p0}, Lokio/ByteString;->e()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hex="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_28

    :cond_4b
    array-length p0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex > length("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget-object v3, p0, Lokio/ByteString;->e:Ljava/lang/String;

    if-nez v3, :cond_4d

    invoke-virtual {p0}, Lokio/ByteString;->g()[B

    move-result-object v3

    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ls3/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, p0, Lokio/ByteString;->e:Ljava/lang/String;

    move-object v3, v5

    :cond_4d
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "\\"

    const-string v7, "\\\\"

    invoke-static {v5, v6, v7}, Ls3/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\\n"

    invoke-static {v5, v6, v7}, Ls3/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, "\\r"

    invoke-static {v5, v6, v7}, Ls3/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_4e

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length p0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " text="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_4e
    const-string p0, "[text="

    invoke-static {p0, v5, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_28
    return-object p0
.end method
