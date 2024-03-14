.class public final Ls/g;
.super Ls/b;
.source "SourceFile"


# virtual methods
.method public final a(Ls/i;Ls/d;Ls/d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ls/i;->e:Ls/d;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ls/i;->e:Ls/d;

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

.method public final b(Ls/i;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ls/i;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ls/i;->d:Ljava/lang/Object;

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

.method public final c(Ls/i;Ls/h;Ls/h;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ls/i;->f:Ls/h;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ls/i;->f:Ls/h;

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

.method public final d(Ls/h;Ls/h;)V
    .locals 0

    iput-object p2, p1, Ls/h;->b:Ls/h;

    return-void
.end method

.method public final e(Ls/h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Ls/h;->a:Ljava/lang/Thread;

    return-void
.end method
