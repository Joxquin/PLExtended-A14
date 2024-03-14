.class public final Lio/grpc/binder/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/binder/internal/c;

.field public final b:I

.field public final c:Lio/grpc/internal/I2;

.field public d:Lio/grpc/binder/internal/Outbound$State;

.field public e:Z

.field public f:Ljava/io/InputStream;

.field public g:Ljava/util/Queue;

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:LX2/u0;

.field public final m:LX2/r0;

.field public final n:Lio/grpc/internal/I2;


# direct methods
.method public constructor <init>(Lio/grpc/binder/internal/c;ILX2/u0;LX2/r0;Lio/grpc/internal/I2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/grpc/binder/internal/Outbound$State;->d:Lio/grpc/binder/internal/Outbound$State;

    iput-object v0, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    iput-object p1, p0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iput p2, p0, Lio/grpc/binder/internal/g;->b:I

    iput-object p5, p0, Lio/grpc/binder/internal/g;->c:Lio/grpc/internal/I2;

    iput-object p3, p0, Lio/grpc/binder/internal/g;->l:LX2/u0;

    iput-object p4, p0, Lio/grpc/binder/internal/g;->m:LX2/r0;

    iput-object p5, p0, Lio/grpc/binder/internal/g;->n:Lio/grpc/internal/I2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/binder/internal/g;->e:Z

    iget-object v0, p0, Lio/grpc/binder/internal/g;->g:Ljava/util/Queue;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/binder/internal/g;->f:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iput-object p1, p0, Lio/grpc/binder/internal/g;->f:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/binder/internal/g;->g:Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lio/grpc/binder/internal/g;->g:Ljava/util/Queue;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/grpc/binder/internal/g;->f:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget p0, p0, Lio/grpc/binder/internal/g;->j:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    return p0
.end method

.method public final c(Lio/grpc/binder/internal/Outbound$State;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object v1, Lio/grpc/binder/internal/Outbound$State;->f:Lio/grpc/binder/internal/Outbound$State;

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, LO2/m;->m(Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lio/grpc/binder/internal/Outbound$State;->e:Lio/grpc/binder/internal/Outbound$State;

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, LO2/m;->m(Z)V

    goto :goto_0

    :cond_5
    sget-object v1, Lio/grpc/binder/internal/Outbound$State;->d:Lio/grpc/binder/internal/Outbound$State;

    if-ne v0, v1, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, LO2/m;->m(Z)V

    :goto_0
    iput-object p1, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    return-void
.end method

.method public final d()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lio/grpc/binder/internal/g;->h:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/grpc/binder/internal/g;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/binder/internal/g;->h:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lio/grpc/binder/internal/g;->e:Z

    if-nez v0, :cond_3

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iget-object v0, v0, Lio/grpc/binder/internal/c;->m:LY2/f;

    iget-boolean v0, v0, LY2/f;->c:Z

    xor-int/2addr v0, v1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/binder/internal/g;->e()V
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/grpc/binder/internal/Outbound$State;->h:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/g;->c(Lio/grpc/binder/internal/Outbound$State;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lio/grpc/binder/internal/g;->c:Lio/grpc/internal/I2;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lio/grpc/binder/internal/g;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/grpc/binder/internal/g;->i:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object v3, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/g;->h(Landroid/os/Parcel;)I

    move-result v3

    or-int/2addr v3, v4

    sget-object v4, Lio/grpc/binder/internal/Outbound$State;->e:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {p0, v4}, Lio/grpc/binder/internal/g;->c(Lio/grpc/binder/internal/Outbound$State;)V

    invoke-virtual {p0}, Lio/grpc/binder/internal/g;->b()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lio/grpc/binder/internal/g;->h:Z

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_0
    iget v4, p0, Lio/grpc/binder/internal/g;->j:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lio/grpc/binder/internal/g;->f:Ljava/io/InputStream;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lio/grpc/binder/internal/g;->g:Ljava/util/Queue;

    if-eqz v4, :cond_5

    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v4}, Lio/grpc/binder/internal/g;->g(Landroid/os/Parcel;Ljava/io/InputStream;)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lio/grpc/binder/internal/g;->h:Z

    invoke-static {v4}, LO2/m;->m(Z)V

    :goto_2
    iget-boolean v4, p0, Lio/grpc/binder/internal/g;->h:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lio/grpc/binder/internal/g;->b()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lio/grpc/binder/internal/Outbound$State;->f:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {p0, v4}, Lio/grpc/binder/internal/g;->c(Lio/grpc/binder/internal/Outbound$State;)V

    :goto_3
    or-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v2

    sget-object v4, Lio/grpc/binder/internal/Outbound$State;->g:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {p0, v4}, Lio/grpc/binder/internal/g;->c(Lio/grpc/binder/internal/Outbound$State;)V

    :cond_7
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v3, p0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iget p0, p0, Lio/grpc/binder/internal/g;->b:I

    invoke-virtual {v3, v1, p0}, Lio/grpc/binder/internal/c;->o(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    int-to-long v3, p0

    iget-object p0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v5, p0

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_8

    aget-object v7, p0, v6

    invoke-virtual {v7, v3, v4}, LX2/r;->k(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    int-to-long v3, p0

    iget-object p0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v0, p0

    :goto_6
    if-ge v2, v0, :cond_9

    aget-object v5, p0, v2

    invoke-virtual {v5, v3, v4}, LX2/r;->j(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    :try_start_1
    sget-object v0, LX2/L0;->m:LX2/L0;

    invoke-virtual {v0, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/grpc/binder/internal/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[S="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/binder/internal/g;->d:Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/NDM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/binder/internal/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Landroid/os/Parcel;Ljava/io/InputStream;)I
    .locals 12

    instance-of v0, p2, LY2/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LY2/l;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget-object v0, v0, LY2/l;->d:Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lio/grpc/binder/internal/g;->k:I

    const/16 p1, 0x40

    move v2, p1

    move p1, v1

    goto :goto_3

    :cond_0
    sget-object v0, LY2/e;->b:Ljava/util/Queue;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, LY2/e;->a:I

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    iget p1, p0, Lio/grpc/binder/internal/g;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/grpc/binder/internal/g;->k:I

    array-length p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    const/16 v2, 0x80

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v1

    move v2, p1

    :goto_2
    invoke-static {v0}, LY2/e;->a([B)V

    :goto_3
    if-nez p1, :cond_7

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    iget p1, p0, Lio/grpc/binder/internal/g;->j:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lio/grpc/binder/internal/g;->j:I

    if-lez p1, :cond_4

    iget-object p2, p0, Lio/grpc/binder/internal/g;->g:Ljava/util/Queue;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Lio/grpc/binder/internal/g;->c:Lio/grpc/internal/I2;

    iget-object v0, p2, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v3, v0

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, LX2/r;->h(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget v0, p0, Lio/grpc/binder/internal/g;->k:I

    int-to-long v9, v0

    iget-object p2, p2, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v0, p2

    move v11, v1

    :goto_5
    if-ge v11, v0, :cond_6

    aget-object v3, p2, v11

    move v4, p1

    move-wide v5, v9

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, LX2/r;->i(IJJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    iput v1, p0, Lio/grpc/binder/internal/g;->k:I

    :cond_7
    return v2

    :catchall_0
    move-exception p0

    invoke-static {v0}, LY2/e;->a([B)V

    throw p0
.end method

.method public final h(Landroid/os/Parcel;)I
    .locals 11

    iget-object v0, p0, Lio/grpc/binder/internal/g;->l:LX2/u0;

    iget-object v1, v0, LX2/u0;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/binder/internal/g;->m:LX2/r0;

    if-eqz v2, :cond_0

    sget v3, LX2/S;->a:I

    iget v3, v2, LX2/r0;->b:I

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_1
    sget v5, LX2/S;->a:I

    iget v5, v2, LX2/r0;->b:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v1

    :goto_1
    iget v7, v2, LX2/r0;->b:I

    if-ge v6, v7, :cond_3

    mul-int/lit8 v7, v6, 0x2

    iget-object v8, v2, LX2/r0;->a:[Ljava/lang/Object;

    aget-object v9, v8, v7

    check-cast v9, [B

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v8, v7

    instance-of v9, v8, [B

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    check-cast v8, LX2/o0;

    iget-object v9, v8, LX2/o0;->a:LX2/m0;

    iget-object v8, v8, LX2/o0;->b:Ljava/lang/Object;

    invoke-interface {v9, v8}, LX2/m0;->a(Ljava/lang/Object;)LY2/l;

    move-result-object v8

    :goto_2
    aput-object v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_b

    mul-int/lit8 v6, v2, 0x2

    aget-object v7, v5, v6

    check-cast v7, [B

    array-length v8, v7

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/2addr v6, v4

    aget-object v6, v5, v6

    instance-of v7, v6, [B

    if-eqz v7, :cond_4

    check-cast v6, [B

    array-length v7, v6

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_7

    :cond_4
    instance-of v7, v6, LY2/l;

    const/4 v8, -0x1

    if-eqz v7, :cond_5

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    check-cast v6, LY2/l;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    iget-object v6, v6, LY2/l;->d:Landroid/os/Parcelable;

    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    goto :goto_7

    :cond_5
    sget-object v7, LY2/e;->b:Ljava/util/Queue;

    check-cast v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    sget v7, LY2/e;->a:I

    new-array v7, v7, [B

    :goto_4
    :try_start_0
    check-cast v6, Ljava/io/InputStream;

    move v9, v1

    :goto_5
    array-length v10, v7

    if-ge v9, v10, :cond_8

    array-length v10, v7

    sub-int/2addr v10, v9

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-ne v10, v8, :cond_7

    goto :goto_6

    :cond_7
    add-int/2addr v9, v10

    goto :goto_5

    :cond_8
    :goto_6
    array-length v6, v7

    if-eq v9, v6, :cond_a

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v9, :cond_9

    invoke-virtual {p1, v7, v1, v9}, Landroid/os/Parcel;->writeByteArray([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-static {v7}, LY2/e;->a([B)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :try_start_1
    sget-object p0, LX2/L0;->k:LX2/L0;

    const-string p1, "Metadata value too large"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v7}, LY2/e;->a([B)V

    throw p0

    :cond_b
    :goto_8
    iget-object p0, p0, Lio/grpc/binder/internal/g;->n:Lio/grpc/internal/I2;

    iget-object p0, p0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length p1, p0

    move v2, v1

    :goto_9
    if-ge v2, p1, :cond_c

    aget-object v3, p0, v2

    invoke-virtual {v3}, LX2/r;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    iget-object p0, v0, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    if-eq p0, p1, :cond_e

    sget-object p1, Lio/grpc/MethodDescriptor$MethodType;->e:Lio/grpc/MethodDescriptor$MethodType;

    if-ne p0, p1, :cond_d

    goto :goto_a

    :cond_d
    move v4, v1

    :cond_e
    :goto_a
    if-eqz v4, :cond_f

    const/16 p0, 0x10

    return p0

    :cond_f
    return v1
.end method

.method public final bridge synthetic declared-synchronized toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/binder/internal/g;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
