.class public abstract Lkotlinx/coroutines/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/K;
.implements Lkotlinx/coroutines/internal/J;


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public d:J

.field public e:I


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/O;->e:I

    return-void
.end method

.method public final c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/S;->a:Lkotlinx/coroutines/internal/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v2, v0, Lkotlinx/coroutines/P;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lkotlinx/coroutines/P;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    instance-of v4, v2, Lkotlinx/coroutines/internal/I;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/internal/I;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Lkotlinx/coroutines/O;->e:I

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/I;->b(I)Lkotlinx/coroutines/internal/J;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    :goto_2
    iput-object v1, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    sget-object v0, Le3/f;->a:Le3/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lkotlinx/coroutines/O;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lkotlinx/coroutines/O;->d:J

    iget-wide p0, p1, Lkotlinx/coroutines/O;->d:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Lkotlinx/coroutines/P;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/S;->a:Lkotlinx/coroutines/internal/E;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(JLkotlinx/coroutines/P;Lkotlinx/coroutines/E;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/O;->_heap:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/S;->a:Lkotlinx/coroutines/internal/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p3, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    aget-object v0, v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/O;

    invoke-static {p4}, Lkotlinx/coroutines/Q;->H(Lkotlinx/coroutines/E;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_2

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    :try_start_4
    iput-wide p1, p3, Lkotlinx/coroutines/P;->c:J

    goto :goto_2

    :cond_3
    iget-wide v4, v0, Lkotlinx/coroutines/O;->d:J

    sub-long v6, v4, p1

    cmp-long p4, v6, v2

    if-ltz p4, :cond_4

    goto :goto_1

    :cond_4
    move-wide p1, v4

    :goto_1
    iget-wide v4, p3, Lkotlinx/coroutines/P;->c:J

    sub-long v4, p1, v4

    cmp-long p4, v4, v2

    if-lez p4, :cond_5

    iput-wide p1, p3, Lkotlinx/coroutines/P;->c:J

    :cond_5
    :goto_2
    iget-wide p1, p0, Lkotlinx/coroutines/O;->d:J

    iget-wide v4, p3, Lkotlinx/coroutines/P;->c:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_6

    iput-wide v4, p0, Lkotlinx/coroutines/O;->d:J

    :cond_6
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/I;->a(Lkotlinx/coroutines/internal/J;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v1

    :goto_3
    :try_start_6
    monitor-exit p3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lkotlinx/coroutines/O;->d:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Delayed[nanos="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
