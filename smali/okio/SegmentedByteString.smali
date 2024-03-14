.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SourceFile"


# instance fields
.field public final transient g:[[B

.field public final transient h:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    sget-object v0, Lokio/ByteString;->f:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->c()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->g:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->h:[I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->l()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget-object v0, p0, Lokio/SegmentedByteString;->h:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->g:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->l()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->d()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/SegmentedByteString;->k(Lokio/ByteString;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final g()[B
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->l()[B

    move-result-object p0

    return-object p0
.end method

.method public final h(I)B
    .locals 7

    iget-object v0, p0, Lokio/SegmentedByteString;->h:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lx3/a;->b(JJJ)V

    invoke-static {p0, p1}, Ly3/c;->a(Lokio/SegmentedByteString;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->h:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->h:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v3, p0

    add-int/2addr v3, v0

    aget v2, v2, v3

    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lokio/ByteString;->d:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lokio/SegmentedByteString;->h:[I

    add-int v5, v0, v1

    aget v5, v4, v5

    aget v4, v4, v1

    iget-object v6, p0, Lokio/SegmentedByteString;->g:[[B

    aget-object v6, v6, v1

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v5

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    iput v2, p0, Lokio/ByteString;->d:I

    move v0, v2

    :goto_2
    return v0
.end method

.method public final i(III[B)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->d()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_4

    array-length v1, p4

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p3, p1

    invoke-static {p0, p1}, Ly3/c;->a(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_0
    if-ge p1, p3, :cond_3

    if-nez v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->h:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->h:[I

    aget v4, v3, v1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    add-int/2addr v4, v2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lokio/SegmentedByteString;->g:[[B

    aget-object v3, v3, v1

    invoke-static {v2, p2, v4, v3, p4}, Lx3/a;->a(III[B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p2, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final k(Lokio/ByteString;I)Z
    .locals 8

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/SegmentedByteString;->d()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p2, v1

    invoke-static {p0, v1}, Ly3/c;->a(Lokio/SegmentedByteString;I)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lokio/SegmentedByteString;->h:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    :goto_1
    iget-object v5, p0, Lokio/SegmentedByteString;->h:[I

    aget v6, v5, v0

    sub-int/2addr v6, v4

    iget-object v7, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v7, v7

    add-int/2addr v7, v0

    aget v5, v5, v7

    add-int/2addr v6, v4

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int v4, v2, v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lokio/SegmentedByteString;->g:[[B

    aget-object v5, v5, v0

    invoke-virtual {p1, v3, v4, v6, v5}, Lokio/ByteString;->i(III[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public final l()[B
    .locals 9

    invoke-virtual {p0}, Lokio/SegmentedByteString;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lokio/SegmentedByteString;->g:[[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lokio/SegmentedByteString;->h:[I

    add-int v6, v1, v2

    aget v6, v5, v6

    aget v5, v5, v2

    iget-object v7, p0, Lokio/SegmentedByteString;->g:[[B

    aget-object v7, v7, v2

    sub-int v3, v5, v3

    add-int v8, v6, v3

    invoke-static {v4, v6, v8, v7, v0}, Lkotlin/collections/m;->b(III[B[B)V

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->l()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
