.class public final Lx3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/nio/channels/WritableByteChannel;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public d:Lx3/l;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)B
    .locals 6

    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lx3/a;->b(JJJ)V

    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lx3/b;->e:J

    sub-long v3, v1, p1

    cmp-long p0, v3, p1

    if-gez p0, :cond_1

    :goto_0
    cmp-long p0, v1, p1

    if-lez p0, :cond_0

    iget-object v0, v0, Lx3/l;->g:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget p0, v0, Lx3/l;->c:I

    iget v3, v0, Lx3/l;->b:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget p0, v0, Lx3/l;->b:I

    int-to-long v3, p0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lx3/l;->a:[B

    aget-byte p0, p1, p0

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget p0, v0, Lx3/l;->c:I

    iget v3, v0, Lx3/l;->b:I

    sub-int/2addr p0, v3

    int-to-long v4, p0

    add-long/2addr v4, v1

    cmp-long p0, v4, p1

    if-gtz p0, :cond_2

    iget-object v0, v0, Lx3/l;->f:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide v1, v4

    goto :goto_1

    :cond_2
    int-to-long v3, v3

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lx3/l;->a:[B

    aget-byte p0, p1, p0

    :goto_2
    return p0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final b(Lokio/ByteString;J)J
    .locals 9

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_14

    iget-object v2, p0, Lx3/b;->d:Lx3/l;

    if-nez v2, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-wide v5, p0, Lx3/b;->e:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    const/4 v8, 0x2

    if-gez v7, :cond_a

    :goto_1
    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    iget-object v2, v2, Lx3/l;->g:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v0, v2, Lx3/l;->c:I

    iget v1, v2, Lx3/l;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result v0

    if-ne v0, v8, :cond_6

    invoke-virtual {p1, v3}, Lokio/ByteString;->h(I)B

    move-result v0

    invoke-virtual {p1, v4}, Lokio/ByteString;->h(I)B

    move-result p1

    :goto_2
    iget-wide v3, p0, Lx3/b;->e:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_13

    iget v1, v2, Lx3/l;->b:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    sub-long/2addr v3, v5

    long-to-int p2, v3

    iget p3, v2, Lx3/l;->c:I

    :goto_3
    if-ge p2, p3, :cond_5

    iget-object v1, v2, Lx3/l;->a:[B

    aget-byte v1, v1, p2

    if-eq v1, v0, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget p0, v2, Lx3/l;->b:I

    goto :goto_8

    :cond_5
    iget p2, v2, Lx3/l;->c:I

    iget p3, v2, Lx3/l;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lokio/ByteString;->g()[B

    move-result-object p1

    :goto_5
    iget-wide v0, p0, Lx3/b;->e:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_13

    iget v0, v2, Lx3/l;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sub-long/2addr v0, v5

    long-to-int p2, v0

    iget p3, v2, Lx3/l;->c:I

    :goto_6
    if-ge p2, p3, :cond_9

    iget-object v0, v2, Lx3/l;->a:[B

    aget-byte v0, v0, p2

    array-length v1, p1

    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_8

    aget-byte v7, p1, v4

    if-ne v0, v7, :cond_7

    iget p0, v2, Lx3/l;->b:I

    :goto_8
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v5

    goto/16 :goto_12

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_9
    iget p2, v2, Lx3/l;->c:I

    iget p3, v2, Lx3/l;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_5

    :cond_a
    :goto_9
    iget v5, v2, Lx3/l;->c:I

    iget v6, v2, Lx3/l;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gtz v7, :cond_b

    iget-object v2, v2, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result v5

    if-ne v5, v8, :cond_f

    invoke-virtual {p1, v3}, Lokio/ByteString;->h(I)B

    move-result v3

    invoke-virtual {p1, v4}, Lokio/ByteString;->h(I)B

    move-result p1

    :goto_a
    iget-wide v4, p0, Lx3/b;->e:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    iget v4, v2, Lx3/l;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    iget p3, v2, Lx3/l;->c:I

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v4, v2, Lx3/l;->a:[B

    aget-byte v4, v4, p2

    if-eq v4, v3, :cond_d

    if-ne v4, p1, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    iget p0, v2, Lx3/l;->b:I

    goto :goto_10

    :cond_e
    iget p2, v2, Lx3/l;->c:I

    iget p3, v2, Lx3/l;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Lokio/ByteString;->g()[B

    move-result-object p1

    :goto_d
    iget-wide v4, p0, Lx3/b;->e:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    iget v4, v2, Lx3/l;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    iget p3, v2, Lx3/l;->c:I

    :goto_e
    if-ge p2, p3, :cond_12

    iget-object v4, v2, Lx3/l;->a:[B

    aget-byte v4, v4, p2

    array-length v5, p1

    move v6, v3

    :goto_f
    if-ge v6, v5, :cond_11

    aget-byte v7, p1, v6

    if-ne v4, v7, :cond_10

    iget p0, v2, Lx3/l;->b:I

    :goto_10
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    goto :goto_12

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_12
    iget p2, v2, Lx3/l;->c:I

    iget p3, v2, Lx3/l;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_d

    :cond_13
    :goto_11
    const-wide/16 p0, -0x1

    :goto_12
    return-wide p0

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "fromIndex < 0: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()B
    .locals 8

    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v1, v0, Lx3/l;->b:I

    iget v2, v0, Lx3/l;->c:I

    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lx3/l;->a:[B

    aget-byte v1, v4, v1

    iget-wide v4, p0, Lx3/b;->e:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lx3/b;->e:J

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lx3/l;->a()Lx3/l;

    move-result-object v2

    iput-object v2, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v0}, Lx3/m;->a(Lx3/l;)V

    goto :goto_0

    :cond_0
    iput v3, v0, Lx3/l;->b:I

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lx3/b;

    invoke-direct {v0}, Lx3/b;-><init>()V

    iget-wide v1, p0, Lx3/b;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lx3/l;->c()Lx3/l;

    move-result-object v2

    iput-object v2, v0, Lx3/b;->d:Lx3/l;

    iput-object v2, v2, Lx3/l;->g:Lx3/l;

    iput-object v2, v2, Lx3/l;->f:Lx3/l;

    iget-object v3, v1, Lx3/l;->f:Lx3/l;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lx3/l;->g:Lx3/l;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lx3/l;->c()Lx3/l;

    move-result-object v5

    invoke-virtual {v4, v5}, Lx3/l;->b(Lx3/l;)V

    iget-object v3, v3, Lx3/l;->f:Lx3/l;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lx3/b;->e:J

    iput-wide v1, v0, Lx3/b;->e:J

    :goto_1
    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(J)[B
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-wide v2, p0, Lx3/b;->e:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_3

    long-to-int p1, p1

    new-array p2, p1, [B

    :goto_1
    if-ge v1, p1, :cond_2

    sub-int v0, p1, v1

    invoke-virtual {p0, p2, v1, v0}, Lx3/b;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "byteCount: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Lokio/ByteString;
    .locals 4

    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    cmp-long v2, v0, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lx3/b;->k(I)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lx3/b;->j(J)V

    goto :goto_1

    :cond_1
    new-instance v2, Lokio/ByteString;

    invoke-virtual {p0, v0, v1}, Lx3/b;->d(J)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/ByteString;-><init>([B)V

    :goto_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "byteCount: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1
    instance-of v3, v1, Lx3/b;

    if-nez v3, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_2
    iget-wide v5, v0, Lx3/b;->e:J

    check-cast v1, Lx3/b;

    iget-wide v7, v1, Lx3/b;->e:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lx3/b;->d:Lx3/l;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v5, v3, Lx3/l;->b:I

    iget v6, v1, Lx3/l;->b:I

    move-wide v9, v7

    :goto_2
    iget-wide v11, v0, Lx3/b;->e:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    iget v11, v3, Lx3/l;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lx3/l;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_3
    cmp-long v15, v13, v11

    if-gez v15, :cond_6

    add-int/lit8 v15, v5, 0x1

    iget-object v2, v3, Lx3/l;->a:[B

    aget-byte v2, v2, v5

    add-int/lit8 v5, v6, 0x1

    iget-object v4, v1, Lx3/l;->a:[B

    aget-byte v4, v4, v6

    if-eq v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    move v6, v5

    move v5, v15

    goto :goto_3

    :cond_6
    iget v2, v3, Lx3/l;->c:I

    if-ne v5, v2, :cond_7

    iget-object v2, v3, Lx3/l;->f:Lx3/l;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v3, v2, Lx3/l;->b:I

    move v5, v3

    move-object v3, v2

    :cond_7
    iget v2, v1, Lx3/l;->c:I

    if-ne v6, v2, :cond_8

    iget-object v1, v1, Lx3/l;->f:Lx3/l;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v2, v1, Lx3/l;->b:I

    move v6, v2

    :cond_8
    add-long/2addr v9, v11

    goto :goto_2

    :goto_4
    return v2
.end method

.method public final f(J)Z
    .locals 2

    iget-wide v0, p0, Lx3/b;->e:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g(Lx3/b;J)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_13

    iget-wide v9, v0, Lx3/b;->e:J

    cmp-long v6, v9, v4

    if-nez v6, :cond_1

    const-wide/16 v0, -0x1

    goto/16 :goto_c

    :cond_1
    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    move-wide v2, v9

    :cond_2
    if-eq v0, v1, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    if-eqz v6, :cond_12

    const-wide/16 v11, 0x0

    move-wide v13, v2

    invoke-static/range {v9 .. v14}, Lx3/a;->b(JJJ)V

    move-wide v9, v2

    :goto_2
    cmp-long v6, v9, v4

    if-lez v6, :cond_11

    iget-object v6, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v6}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v6, v6, Lx3/l;->c:I

    iget-object v11, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v11}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v11, v11, Lx3/l;->b:I

    sub-int/2addr v6, v11

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-gez v6, :cond_a

    iget-object v6, v1, Lx3/b;->d:Lx3/l;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lx3/l;->g:Lx3/l;

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    iget-boolean v11, v6, Lx3/l;->e:Z

    if-eqz v11, :cond_6

    iget v11, v6, Lx3/l;->c:I

    int-to-long v11, v11

    add-long/2addr v11, v9

    iget-boolean v13, v6, Lx3/l;->d:Z

    if-eqz v13, :cond_5

    move v13, v8

    goto :goto_4

    :cond_5
    iget v13, v6, Lx3/l;->b:I

    :goto_4
    int-to-long v13, v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x2000

    cmp-long v11, v11, v13

    if-gtz v11, :cond_6

    iget-object v4, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    long-to-int v5, v9

    invoke-virtual {v4, v6, v5}, Lx3/l;->d(Lx3/l;I)V

    iget-wide v4, v0, Lx3/b;->e:J

    sub-long/2addr v4, v9

    iput-wide v4, v0, Lx3/b;->e:J

    iget-wide v4, v1, Lx3/b;->e:J

    add-long/2addr v4, v9

    iput-wide v4, v1, Lx3/b;->e:J

    goto/16 :goto_b

    :cond_6
    iget-object v6, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v6}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    long-to-int v11, v9

    if-lez v11, :cond_7

    iget v12, v6, Lx3/l;->c:I

    iget v13, v6, Lx3/l;->b:I

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_7

    move v12, v7

    goto :goto_5

    :cond_7
    move v12, v8

    :goto_5
    if-eqz v12, :cond_9

    const/16 v12, 0x400

    if-lt v11, v12, :cond_8

    invoke-virtual {v6}, Lx3/l;->c()Lx3/l;

    move-result-object v12

    goto :goto_6

    :cond_8
    invoke-static {}, Lx3/m;->b()Lx3/l;

    move-result-object v12

    iget v13, v6, Lx3/l;->b:I

    add-int v14, v13, v11

    iget-object v15, v6, Lx3/l;->a:[B

    iget-object v4, v12, Lx3/l;->a:[B

    invoke-static {v8, v13, v14, v15, v4}, Lkotlin/collections/m;->b(III[B[B)V

    :goto_6
    iget v4, v12, Lx3/l;->b:I

    add-int/2addr v4, v11

    iput v4, v12, Lx3/l;->c:I

    iget v4, v6, Lx3/l;->b:I

    add-int/2addr v4, v11

    iput v4, v6, Lx3/l;->b:I

    iget-object v4, v6, Lx3/l;->g:Lx3/l;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Lx3/l;->b(Lx3/l;)V

    iput-object v12, v0, Lx3/b;->d:Lx3/l;

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount out of range"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    iget-object v4, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v5, v4, Lx3/l;->c:I

    iget v6, v4, Lx3/l;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4}, Lx3/l;->a()Lx3/l;

    move-result-object v11

    iput-object v11, v0, Lx3/b;->d:Lx3/l;

    iget-object v11, v1, Lx3/b;->d:Lx3/l;

    if-nez v11, :cond_b

    iput-object v4, v1, Lx3/b;->d:Lx3/l;

    iput-object v4, v4, Lx3/l;->g:Lx3/l;

    iput-object v4, v4, Lx3/l;->f:Lx3/l;

    goto :goto_a

    :cond_b
    iget-object v11, v11, Lx3/l;->g:Lx3/l;

    invoke-static {v11}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v11, v4}, Lx3/l;->b(Lx3/l;)V

    iget-object v11, v4, Lx3/l;->g:Lx3/l;

    if-eq v11, v4, :cond_c

    move v12, v7

    goto :goto_8

    :cond_c
    move v12, v8

    :goto_8
    if-eqz v12, :cond_10

    invoke-static {v11}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-boolean v11, v11, Lx3/l;->e:Z

    if-nez v11, :cond_d

    goto :goto_a

    :cond_d
    iget v11, v4, Lx3/l;->c:I

    iget v12, v4, Lx3/l;->b:I

    sub-int/2addr v11, v12

    iget-object v12, v4, Lx3/l;->g:Lx3/l;

    invoke-static {v12}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v12, v12, Lx3/l;->c:I

    rsub-int v12, v12, 0x2000

    iget-object v13, v4, Lx3/l;->g:Lx3/l;

    invoke-static {v13}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-boolean v13, v13, Lx3/l;->d:Z

    if-eqz v13, :cond_e

    move v13, v8

    goto :goto_9

    :cond_e
    iget-object v13, v4, Lx3/l;->g:Lx3/l;

    invoke-static {v13}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v13, v13, Lx3/l;->b:I

    :goto_9
    add-int/2addr v12, v13

    if-le v11, v12, :cond_f

    goto :goto_a

    :cond_f
    iget-object v12, v4, Lx3/l;->g:Lx3/l;

    invoke-static {v12}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v12, v11}, Lx3/l;->d(Lx3/l;I)V

    invoke-virtual {v4}, Lx3/l;->a()Lx3/l;

    invoke-static {v4}, Lx3/m;->a(Lx3/l;)V

    :goto_a
    iget-wide v11, v0, Lx3/b;->e:J

    sub-long/2addr v11, v5

    iput-wide v11, v0, Lx3/b;->e:J

    iget-wide v11, v1, Lx3/b;->e:J

    add-long/2addr v11, v5

    iput-wide v11, v1, Lx3/b;->e:J

    sub-long/2addr v9, v5

    const-wide/16 v4, 0x0

    goto/16 :goto_2

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_b
    move-wide v0, v2

    :goto_c
    return-wide v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-wide v1, p0, Lx3/b;->e:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_4

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v1, v0, Lx3/l;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lx3/l;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lx3/b;->d(J)[B

    move-result-object p0

    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/String;

    long-to-int v3, p1

    iget-object v4, v0, Lx3/l;->a:[B

    invoke-direct {v2, v4, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lx3/l;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Lx3/l;->b:I

    iget-wide v3, p0, Lx3/b;->e:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lx3/b;->e:J

    iget p1, v0, Lx3/l;->c:I

    if-ne p3, p1, :cond_3

    invoke-virtual {v0}, Lx3/l;->a()Lx3/l;

    move-result-object p1

    iput-object p1, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v0}, Lx3/m;->a(Lx3/l;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "byteCount: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lx3/l;->b:I

    iget v3, v0, Lx3/l;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lx3/l;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lx3/l;->f:Lx3/l;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lx3/b;->d:Lx3/l;

    if-ne v0, v2, :cond_1

    move p0, v1

    :goto_1
    return p0
.end method

.method public final i(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Ls3/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lx3/b;->h(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    if-eqz v0, :cond_1

    iget v1, v0, Lx3/l;->c:I

    iget v2, v0, Lx3/l;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lx3/b;->e:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    sub-long/2addr p1, v4

    iget v2, v0, Lx3/l;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lx3/l;->b:I

    iget v1, v0, Lx3/l;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lx3/l;->a()Lx3/l;

    move-result-object v1

    iput-object v1, p0, Lx3/b;->d:Lx3/l;

    invoke-static {v0}, Lx3/m;->a(Lx3/l;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public final k(I)Lokio/ByteString;
    .locals 7

    if-nez p1, :cond_0

    sget-object p0, Lokio/ByteString;->f:Lokio/ByteString;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lx3/a;->b(JJJ)V

    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v4, v0, Lx3/l;->c:I

    iget v5, v0, Lx3/l;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lx3/l;->f:Lx3/l;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lx3/b;->d:Lx3/l;

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v5, p0, Lx3/l;->a:[B

    aput-object v5, v0, v4

    iget v5, p0, Lx3/l;->c:I

    iget v6, p0, Lx3/l;->b:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    iget v6, p0, Lx3/l;->b:I

    aput v6, v2, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lx3/l;->d:Z

    add-int/2addr v4, v5

    iget-object p0, p0, Lx3/l;->f:Lx3/l;

    goto :goto_1

    :cond_3
    new-instance p0, Lokio/SegmentedByteString;

    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_2
    return-object p0
.end method

.method public final l(I)Lx3/l;
    .locals 2

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lx3/b;->d:Lx3/l;

    if-nez v1, :cond_1

    invoke-static {}, Lx3/m;->b()Lx3/l;

    move-result-object p1

    iput-object p1, p0, Lx3/b;->d:Lx3/l;

    iput-object p1, p1, Lx3/l;->g:Lx3/l;

    iput-object p1, p1, Lx3/l;->f:Lx3/l;

    goto :goto_2

    :cond_1
    iget-object p0, v1, Lx3/l;->g:Lx3/l;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v1, p0, Lx3/l;->c:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_3

    iget-boolean p1, p0, Lx3/l;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lx3/m;->b()Lx3/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx3/l;->b(Lx3/l;)V

    :goto_2
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()Lx3/b;
    .locals 0

    return-object p0
.end method

.method public final n(I)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lx3/b;->l(I)Lx3/l;

    move-result-object v0

    iget v1, v0, Lx3/l;->c:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, v0, Lx3/l;->a:[B

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    iput v1, v0, Lx3/l;->c:I

    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lx3/b;->e:J

    return-void
.end method

.method public final o(Ljava/lang/String;II)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p3, p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v1}, Lx3/b;->l(I)Lx3/l;

    move-result-object v4

    iget v5, v4, Lx3/l;->c:I

    sub-int/2addr v5, p2

    rsub-int v6, v5, 0x2000

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v2, v2

    iget-object v8, v4, Lx3/l;->a:[B

    aput-byte v2, v8, p2

    :goto_4
    move p2, v7

    if-ge p2, v6, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v3, :cond_3

    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v2, v2

    aput-byte v2, v8, p2

    goto :goto_4

    :cond_3
    add-int/2addr v5, p2

    iget v2, v4, Lx3/l;->c:I

    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    iput v2, v4, Lx3/l;->c:I

    iget-wide v2, p0, Lx3/b;->e:J

    int-to-long v4, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    goto :goto_3

    :cond_4
    const/16 v4, 0x800

    if-ge v2, v4, :cond_5

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lx3/b;->l(I)Lx3/l;

    move-result-object v5

    iget v6, v5, Lx3/l;->c:I

    shr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    iget-object v8, v5, Lx3/l;->a:[B

    aput-byte v7, v8, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v8, v7

    add-int/2addr v6, v4

    iput v6, v5, Lx3/l;->c:I

    iget-wide v2, p0, Lx3/b;->e:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    goto/16 :goto_9

    :cond_5
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_6

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v0

    :goto_5
    const v7, 0xdbff

    if-gt v2, v7, :cond_a

    const v7, 0xdc00

    if-gt v7, v6, :cond_8

    const v7, 0xe000

    if-ge v6, v7, :cond_8

    move v7, v1

    goto :goto_6

    :cond_8
    move v7, v0

    :goto_6
    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v6, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lx3/b;->l(I)Lx3/l;

    move-result-object v6

    iget v7, v6, Lx3/l;->c:I

    shr-int/lit8 v8, v2, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    iget-object v9, v6, Lx3/l;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v8

    add-int/2addr v7, v4

    iput v7, v6, Lx3/l;->c:I

    iget-wide v2, p0, Lx3/b;->e:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    :cond_a
    :goto_7
    invoke-virtual {p0, v1}, Lx3/b;->l(I)Lx3/l;

    move-result-object p2

    iget v2, p2, Lx3/l;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Lx3/l;->c:I

    int-to-byte v3, v5

    iget-object p2, p2, Lx3/l;->a:[B

    aput-byte v3, p2, v2

    iget-wide v2, p0, Lx3/b;->e:J

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    iput-wide v2, p0, Lx3/b;->e:J

    move p2, v4

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lx3/b;->l(I)Lx3/l;

    move-result-object v6

    iget v7, v6, Lx3/l;->c:I

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    iget-object v9, v6, Lx3/l;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v9, v8

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v5

    add-int/2addr v7, v4

    iput v7, v6, Lx3/l;->c:I

    iget-wide v2, p0, Lx3/b;->e:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "endIndex > string.length: "

    const-string p2, " > "

    invoke-static {p1, p3, p2, p0}, Lcom/android/launcher3/util/l;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p0, "endIndex < beginIndex: "

    const-string p1, " < "

    invoke-static {p0, p3, p1, p2}, Lcom/android/launcher3/util/l;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p2}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lokio/ByteString;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lx3/b;->b(Lokio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final q(Lx3/h;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ly3/a;->a(Lx3/b;Lx3/h;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lx3/h;->d:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lx3/b;->j(J)V

    :goto_0
    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lx3/l;->c:I

    iget v3, v0, Lx3/l;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lx3/l;->a:[B

    iget v3, v0, Lx3/l;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lx3/l;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lx3/l;->b:I

    .line 5
    iget-wide v2, p0, Lx3/b;->e:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lx3/b;->e:J

    .line 6
    iget v2, v0, Lx3/l;->c:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lx3/l;->a()Lx3/l;

    move-result-object p1

    iput-object p1, p0, Lx3/b;->d:Lx3/l;

    .line 8
    invoke-static {v0}, Lx3/m;->a(Lx3/l;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lx3/a;->b(JJJ)V

    .line 10
    iget-object v0, p0, Lx3/b;->d:Lx3/l;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, Lx3/l;->c:I

    iget v2, v0, Lx3/l;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget v1, v0, Lx3/l;->b:I

    add-int v2, v1, p3

    .line 13
    iget-object v3, v0, Lx3/l;->a:[B

    invoke-static {p2, v1, v2, v3, p1}, Lkotlin/collections/m;->b(III[B[B)V

    .line 14
    iget p1, v0, Lx3/l;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lx3/l;->b:I

    .line 15
    iget-wide v1, p0, Lx3/b;->e:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 16
    iput-wide v1, p0, Lx3/b;->e:J

    .line 17
    iget p2, v0, Lx3/l;->c:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, Lx3/l;->a()Lx3/l;

    move-result-object p1

    iput-object p1, p0, Lx3/b;->d:Lx3/l;

    .line 19
    invoke-static {v0}, Lx3/m;->a(Lx3/l;)V

    :cond_1
    move p0, p3

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lx3/b;->e:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lx3/b;->k(I)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "size > Int.MAX_VALUE: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lx3/b;->l(I)Lx3/l;

    move-result-object v2

    iget v3, v2, Lx3/l;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lx3/l;->a:[B

    iget v5, v2, Lx3/l;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lx3/l;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lx3/l;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lx3/b;->e:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx3/b;->e:J

    return v0
.end method
