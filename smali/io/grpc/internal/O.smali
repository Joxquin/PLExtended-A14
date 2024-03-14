.class public final Lio/grpc/internal/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/E1;


# instance fields
.field public final d:LX2/Q;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:LX2/P0;

.field public h:Lio/grpc/internal/M;

.field public i:Lio/grpc/internal/M;

.field public j:Ljava/lang/Runnable;

.field public k:Lio/grpc/internal/D1;

.field public l:Ljava/util/Collection;

.field public m:LX2/L0;

.field public n:LX2/V;

.field public o:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LX2/P0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/grpc/internal/O;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LX2/Q;->a(Ljava/lang/Class;Ljava/lang/String;)LX2/Q;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/O;->d:LX2/Q;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    iput-object p1, p0, Lio/grpc/internal/O;->f:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/grpc/internal/O;->g:LX2/P0;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/P1;[LX2/r;)Lio/grpc/internal/N;
    .locals 1

    new-instance v0, Lio/grpc/internal/N;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/N;-><init>(Lio/grpc/internal/O;Lio/grpc/internal/P1;[LX2/r;)V

    iget-object p1, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/O;->g:LX2/P0;

    iget-object p0, p0, Lio/grpc/internal/O;->h:Lio/grpc/internal/M;

    invoke-virtual {p1, p0}, LX2/P0;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;
    .locals 2

    iput-object p1, p0, Lio/grpc/internal/O;->k:Lio/grpc/internal/D1;

    new-instance v0, Lio/grpc/internal/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/M;-><init>(Lio/grpc/internal/O;Ljava/lang/Object;I)V

    iput-object v0, p0, Lio/grpc/internal/O;->h:Lio/grpc/internal/M;

    new-instance v0, Lio/grpc/internal/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/M;-><init>(Lio/grpc/internal/O;Ljava/lang/Object;I)V

    iput-object v0, p0, Lio/grpc/internal/O;->i:Lio/grpc/internal/M;

    new-instance v0, Lio/grpc/internal/M;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/M;-><init>(Lio/grpc/internal/O;Ljava/lang/Object;I)V

    iput-object v0, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 6

    :try_start_0
    new-instance v0, Lio/grpc/internal/P1;

    invoke-direct {v0, p1, p2, p3}, Lio/grpc/internal/P1;-><init>(LX2/u0;LX2/r0;LX2/g;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    :goto_0
    iget-object p2, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/O;->m:LX2/L0;

    if-eqz v3, :cond_0

    new-instance p1, Lio/grpc/internal/h0;

    sget-object p3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p1, v3, p3, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lio/grpc/internal/O;->n:LX2/V;

    if-nez v3, :cond_1

    invoke-virtual {p0, v0, p4}, Lio/grpc/internal/O;->a(Lio/grpc/internal/P1;[LX2/r;)Lio/grpc/internal/N;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v4, p0, Lio/grpc/internal/O;->o:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    invoke-virtual {p0, v0, p4}, Lio/grpc/internal/O;->a(Lio/grpc/internal/P1;[LX2/r;)Lio/grpc/internal/N;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lio/grpc/internal/O;->o:J

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, LX2/V;->e()LX2/W;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p3, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lio/grpc/internal/r0;->c(LX2/W;Z)Lio/grpc/internal/w;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, v0, Lio/grpc/internal/P1;->c:LX2/u0;

    iget-object p3, v0, Lio/grpc/internal/P1;->b:LX2/r0;

    iget-object v0, v0, Lio/grpc/internal/P1;->a:LX2/g;

    invoke-interface {p1, p2, p3, v0, p4}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0}, LX2/P0;->a()V

    return-object p1

    :cond_3
    move-object p1, v3

    goto :goto_0

    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0}, LX2/P0;->a()V

    throw p1
.end method

.method public final d(LX2/L0;)V
    .locals 6

    invoke-virtual {p0, p1}, Lio/grpc/internal/O;->f(LX2/L0;)V

    iget-object v0, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    iget-object v2, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/N;

    new-instance v3, Lio/grpc/internal/h0;

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v5, v1, Lio/grpc/internal/N;->l:[LX2/r;

    invoke-direct {v3, p1, v4, v5}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    invoke-virtual {v1, v3}, Lio/grpc/internal/W;->t(Lio/grpc/internal/u;)Lio/grpc/internal/Q;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/grpc/internal/Q;->run()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()LX2/Q;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/O;->d:LX2/Q;

    return-object p0
.end method

.method public final f(LX2/L0;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/O;->m:LX2/L0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lio/grpc/internal/O;->m:LX2/L0;

    iget-object v1, p0, Lio/grpc/internal/O;->g:LX2/P0;

    new-instance v2, Lio/grpc/internal/M;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lio/grpc/internal/M;-><init>(Lio/grpc/internal/O;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, LX2/P0;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/grpc/internal/O;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {v1, p1}, LX2/P0;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0}, LX2/P0;->a()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(LX2/V;)V
    .locals 11

    iget-object v0, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lio/grpc/internal/O;->n:LX2/V;

    iget-wide v1, p0, Lio/grpc/internal/O;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/O;->o:J

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lio/grpc/internal/O;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/N;

    iget-object v3, v2, Lio/grpc/internal/N;->j:Lio/grpc/internal/P1;

    invoke-virtual {p1}, LX2/V;->e()LX2/W;

    move-result-object v3

    iget-object v4, v2, Lio/grpc/internal/N;->j:Lio/grpc/internal/P1;

    iget-object v4, v4, Lio/grpc/internal/P1;->a:LX2/g;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v3, v5}, Lio/grpc/internal/r0;->c(LX2/W;Z)Lio/grpc/internal/w;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lio/grpc/internal/O;->f:Ljava/util/concurrent/Executor;

    iget-object v4, v4, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_2

    move-object v5, v4

    :cond_2
    iget-object v4, v2, Lio/grpc/internal/N;->k:LX2/C;

    invoke-virtual {v4}, LX2/C;->a()LX2/C;

    move-result-object v6

    :try_start_1
    iget-object v7, v2, Lio/grpc/internal/N;->j:Lio/grpc/internal/P1;

    iget-object v8, v7, Lio/grpc/internal/P1;->c:LX2/u0;

    iget-object v9, v7, Lio/grpc/internal/P1;->b:LX2/r0;

    iget-object v7, v7, Lio/grpc/internal/P1;->a:LX2/g;

    iget-object v10, v2, Lio/grpc/internal/N;->l:[LX2/r;

    invoke-interface {v3, v8, v9, v7, v10}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4, v6}, LX2/C;->c(LX2/C;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/W;->t(Lio/grpc/internal/u;)Lio/grpc/internal/Q;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v5, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v4, v6}, LX2/C;->c(LX2/C;)V

    throw p0

    :cond_4
    iget-object p1, p0, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0}, Lio/grpc/internal/O;->g()Z

    move-result v1

    if-nez v1, :cond_5

    monitor-exit p1

    return-void

    :cond_5
    iget-object v1, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    :cond_6
    invoke-virtual {p0}, Lio/grpc/internal/O;->g()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    iget-object v1, p0, Lio/grpc/internal/O;->i:Lio/grpc/internal/M;

    invoke-virtual {v0, v1}, LX2/P0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/grpc/internal/O;->m:LX2/L0;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {v1, v0}, LX2/P0;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    :cond_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0}, LX2/P0;->a()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    :goto_1
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
