.class public final LR2/e;
.super LR2/a;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/b;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/c;->e:Lcom/google/common/util/concurrent/b;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/c;->e:Lcom/google/common/util/concurrent/b;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/common/util/concurrent/c;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/c;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/c;->d:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lcom/google/common/util/concurrent/c;LR2/h;LR2/h;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/c;->f:LR2/h;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/c;->f:LR2/h;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/b;
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/c;->e:Lcom/google/common/util/concurrent/b;

    if-eq p0, p2, :cond_0

    iput-object p2, p1, Lcom/google/common/util/concurrent/c;->e:Lcom/google/common/util/concurrent/b;

    :cond_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lcom/google/common/util/concurrent/c;)LR2/h;
    .locals 1

    sget-object p0, LR2/h;->c:LR2/h;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/c;->f:LR2/h;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lcom/google/common/util/concurrent/c;->f:LR2/h;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(LR2/h;LR2/h;)V
    .locals 0

    iput-object p2, p1, LR2/h;->b:LR2/h;

    return-void
.end method

.method public final g(LR2/h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, LR2/h;->a:Ljava/lang/Thread;

    return-void
.end method
