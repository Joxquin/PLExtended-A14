.class public final Lcom/google/protobuf/q;
.super Lcom/google/protobuf/r;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I

.field public final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/r;-><init>()V

    if-ltz p2, :cond_0

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/q;->d:[B

    iput p2, p0, Lcom/google/protobuf/q;->e:I

    iput-object p1, p0, Lcom/google/protobuf/q;->g:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(ILcom/google/protobuf/p0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q;->E(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/q;->F(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/q;->E(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->z(Lcom/google/protobuf/p0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/q;->E(II)V

    return-void
.end method

.method public final B(ILcom/google/protobuf/ByteString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q;->E(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/q;->F(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/q;->q(ILcom/google/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/q;->E(II)V

    return-void
.end method

.method public final C(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->E(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->D(Ljava/lang/String;)V

    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/r;->k(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/q;->e:I

    if-le v2, v3, :cond_0

    :try_start_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/protobuf/b1;->c(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->G(I)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/protobuf/q;->Q([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/q;->O()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/r;->k(I)I

    move-result v0

    iget v2, p0, Lcom/google/protobuf/q;->f:I
    :try_end_1
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v4, p0, Lcom/google/protobuf/q;->d:[B

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_2
    iput v1, p0, Lcom/google/protobuf/q;->f:I

    sub-int/2addr v3, v1

    invoke-static {p1, v4, v1, v3}, Lcom/google/protobuf/b1;->c(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/q;->M(I)V

    iput v1, p0, Lcom/google/protobuf/q;->f:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/b1;->d(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->M(I)V

    iget v1, p0, Lcom/google/protobuf/q;->f:I

    invoke-static {p1, v4, v1, v0}, Lcom/google/protobuf/b1;->c(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/q;->f:I
    :try_end_2
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    throw v0
    :try_end_3
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/r;->m(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_0
    return-void
.end method

.method public final E(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->G(I)V

    return-void
.end method

.method public final F(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->M(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->M(I)V

    return-void
.end method

.method public final H(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/q;->N(J)V

    return-void
.end method

.method public final I(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q;->N(J)V

    return-void
.end method

.method public final J(I)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/google/protobuf/q;->d:[B

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/protobuf/q;->f:I

    shr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    return-void
.end method

.method public final K(J)V
    .locals 8

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/google/protobuf/q;->d:[B

    aput-byte v4, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x8

    shr-long v6, p1, v4

    and-long/2addr v6, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x10

    shr-long v6, p1, v4

    and-long/2addr v6, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x18

    shr-long v6, p1, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/protobuf/q;->f:I

    const/16 p0, 0x38

    shr-long p0, p1, p0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v5, v1

    return-void
.end method

.method public final L(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->M(I)V

    return-void
.end method

.method public final M(I)V
    .locals 4

    sget-boolean v0, Lcom/google/protobuf/r;->c:Z

    iget-object v1, p0, Lcom/google/protobuf/q;->d:[B

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    int-to-long v2, v0

    int-to-byte p0, p1

    invoke-static {v1, v2, v3, p0}, Lcom/google/protobuf/X0;->q([BJB)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    int-to-long v2, v0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/X0;->q([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    int-to-byte p0, p1

    aput-byte p0, v1, v0

    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/q;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final N(J)V
    .locals 9

    sget-boolean v0, Lcom/google/protobuf/r;->c:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget-object v6, p0, Lcom/google/protobuf/q;->d:[B

    if-eqz v0, :cond_1

    :goto_0
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/q;->f:I

    int-to-long v0, v0

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v6, v0, v1, p0}, Lcom/google/protobuf/X0;->q([BJB)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/protobuf/q;->f:I

    int-to-long v7, v0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v6, v7, v8, v0}, Lcom/google/protobuf/X0;->q([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/q;->f:I

    long-to-int p0, p1

    int-to-byte p0, p0

    aput-byte p0, v6, v0

    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/protobuf/q;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final O()V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    iget-object v1, p0, Lcom/google/protobuf/q;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/q;->d:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/q;->f:I

    return-void
.end method

.method public final P(I)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/q;->e:I

    iget v1, p0, Lcom/google/protobuf/q;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/q;->O()V

    :cond_0
    return-void
.end method

.method public final Q([BII)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    iget v1, p0, Lcom/google/protobuf/q;->e:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/google/protobuf/q;->d:[B

    if-lt v2, p3, :cond_0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/protobuf/q;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/q;->f:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iput v1, p0, Lcom/google/protobuf/q;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/q;->O()V

    if-gt p3, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/protobuf/q;->f:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/q;->g:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/q;->Q([BII)V

    return-void
.end method

.method public final n(B)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/q;->f:I

    iget v1, p0, Lcom/google/protobuf/q;->e:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/q;->O()V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/q;->f:I

    iget-object p0, p0, Lcom/google/protobuf/q;->d:[B

    aput-byte p1, p0, v0

    return-void
.end method

.method public final o(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    int-to-byte p1, p2

    iget p2, p0, Lcom/google/protobuf/q;->f:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/google/protobuf/q;->f:I

    iget-object p0, p0, Lcom/google/protobuf/q;->d:[B

    aput-byte p1, p0, p2

    return-void
.end method

.method public final p([BI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->G(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/q;->Q([BII)V

    return-void
.end method

.method public final q(ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->E(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->r(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final r(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->G(I)V

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->s(Lcom/google/protobuf/h;)V

    return-void
.end method

.method public final s(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->J(I)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->J(I)V

    return-void
.end method

.method public final u(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/q;->K(J)V

    return-void
.end method

.method public final v(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q;->K(J)V

    return-void
.end method

.method public final w(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->P(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->L(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/q;->M(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q;->N(J)V

    :goto_0
    return-void
.end method

.method public final x(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->G(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q;->I(J)V

    :goto_0
    return-void
.end method

.method public final y(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q;->E(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/b;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/b;->getSerializedSize(Lcom/google/protobuf/C0;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->G(I)V

    iget-object p0, p0, Lcom/google/protobuf/r;->a:Lcom/google/protobuf/s;

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/C0;->b(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    return-void
.end method

.method public final z(Lcom/google/protobuf/p0;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/q;->G(I)V

    invoke-interface {p1, p0}, Lcom/google/protobuf/p0;->writeTo(Lcom/google/protobuf/r;)V

    return-void
.end method
