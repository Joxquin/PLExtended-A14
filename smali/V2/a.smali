.class public final LV2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public final b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    iput-object v0, p0, LV2/a;->b:[I

    const/4 v1, 0x0

    iput v1, p0, LV2/a;->c:I

    iput v1, p0, LV2/a;->d:I

    iput v1, p0, LV2/a;->e:I

    iput v1, p0, LV2/a;->f:I

    iput v1, p0, LV2/a;->g:I

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    const/16 p1, 0x800

    :try_start_0
    new-array p1, p1, [B

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 v2, 0x200

    new-array v2, v2, [I

    iput-object v2, p0, LV2/a;->b:[I

    move v2, v1

    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iget-object v4, p0, LV2/a;->b:[I

    shl-int/lit8 v6, v1, 0x1

    aput v2, v4, v6

    add-int/lit8 v6, v6, 0x1

    aput v3, v4, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :catch_0
    iput-object v0, p0, LV2/a;->b:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([B)[B
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LV2/a;->b:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v0, p0, LV2/a;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    const-wide/16 v4, 0x1505

    move v0, v2

    :goto_0
    array-length v6, p1

    const-wide v7, 0xffffffffL

    if-ge v0, v6, :cond_1

    const/4 v6, 0x5

    shl-long v9, v4, v6

    and-long/2addr v9, v7

    add-long/2addr v4, v9

    and-long/2addr v4, v7

    aget-byte v6, p1, v0

    add-int/lit16 v6, v6, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-long/2addr v4, v7

    long-to-int v0, v4

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, LV2/a;->b:[I

    shl-int/2addr v4, v3

    add-int/lit8 v6, v4, 0x1

    aget v6, v5, v6

    iput v6, p0, LV2/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    aget v4, v5, v4

    iput v4, p0, LV2/a;->f:I

    iput v0, p0, LV2/a;->d:I

    ushr-int/lit8 v0, v0, 0x8

    rem-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v4, v0

    iput v4, p0, LV2/a;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    :try_start_3
    iget v0, p0, LV2/a;->c:I

    iget v4, p0, LV2/a;->e:I

    if-ge v0, v4, :cond_b

    iget-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    iget v4, p0, LV2/a;->g:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    if-nez v4, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_4
    iget v5, p0, LV2/a;->c:I

    add-int/2addr v5, v3

    iput v5, p0, LV2/a;->c:I

    iget v5, p0, LV2/a;->g:I

    add-int/lit8 v5, v5, 0x8

    iput v5, p0, LV2/a;->g:I

    iget v6, p0, LV2/a;->f:I

    iget v7, p0, LV2/a;->e:I

    shl-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v6

    if-ne v5, v7, :cond_5

    iput v6, p0, LV2/a;->g:I

    :cond_5
    iget v5, p0, LV2/a;->d:I

    if-eq v0, v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    array-length v4, p1

    if-eq v0, v4, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    new-array v5, v0, [B

    iget-object v6, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    move v6, v2

    :goto_2
    if-ge v6, v0, :cond_9

    aget-byte v7, v5, v6

    aget-byte v8, p1, v6

    if-eq v7, v8, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_3
    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    new-array p1, v4, [B

    iget-object v0, p0, LV2/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    monitor-exit p0

    return-object v1

    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
