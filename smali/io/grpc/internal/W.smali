.class public Lio/grpc/internal/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# instance fields
.field public volatile a:Z

.field public b:Lio/grpc/internal/v;

.field public c:Lio/grpc/internal/u;

.field public d:LX2/L0;

.field public e:Ljava/util/List;

.field public f:Lio/grpc/internal/V;

.field public g:J

.field public h:J

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "May only be called after start"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/W;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->a(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/P;

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/P;-><init>(Lio/grpc/internal/W;II)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/W;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "May only be called before start"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v2, Lio/grpc/internal/P;

    invoke-direct {v2, p0, p1, v1}, Lio/grpc/internal/P;-><init>(Lio/grpc/internal/W;II)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lio/grpc/internal/v;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/W;->d:LX2/L0;

    iget-boolean v1, p0, Lio/grpc/internal/W;->a:Z

    if-nez v1, :cond_1

    new-instance v2, Lio/grpc/internal/V;

    invoke-direct {v2, p1}, Lio/grpc/internal/V;-><init>(Lio/grpc/internal/v;)V

    iput-object v2, p0, Lio/grpc/internal/W;->f:Lio/grpc/internal/V;

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/internal/W;->g:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object p0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    invoke-interface {p1, v0, p0, v1}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lio/grpc/internal/W;->r(Lio/grpc/internal/v;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(LX2/E;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/S;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/W;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->e()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(LX2/H;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "May only be called before start"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v2, Lio/grpc/internal/S;

    invoke-direct {v2, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/W;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->flush()V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/Q;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lio/grpc/internal/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/W;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public g(LX2/L0;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v3, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v0, "reason"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    if-nez v0, :cond_2

    sget-object v3, Lio/grpc/internal/G1;->a:Lio/grpc/internal/G1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "realStream already set to %s"

    invoke-static {v4, v0, v1}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v3, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/W;->h:J

    iput-object p1, p0, Lio/grpc/internal/W;->d:LX2/L0;

    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    new-instance v0, Lio/grpc/internal/S;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/W;->p(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lio/grpc/internal/W;->q()V

    invoke-virtual {p0, p1}, Lio/grpc/internal/W;->s(LX2/L0;)V

    iget-object p0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    invoke-interface {p0, p1, v0, v1}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/P;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lio/grpc/internal/P;-><init>(Lio/grpc/internal/W;II)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v0, "message"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/internal/W;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->i(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/internal/S;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/W;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v0, "authority"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/S;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lio/grpc/internal/u0;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lio/grpc/internal/W;->h:J

    iget-wide v3, p0, Lio/grpc/internal/W;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {v0, p1}, Lio/grpc/internal/u;->k(Lio/grpc/internal/u0;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lio/grpc/internal/W;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waiting_for_connection"

    iget-object p1, p1, Lio/grpc/internal/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "May only be called before start"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v2, Lio/grpc/internal/Q;

    invoke-direct {v2, v1, p0}, Lio/grpc/internal/Q;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    new-instance v0, Lio/grpc/internal/Q;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lio/grpc/internal/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/W;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/T;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/T;-><init>(Lio/grpc/internal/W;Z)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(LX2/x;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "May only be called before start"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v0, "compressor"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    new-instance v2, Lio/grpc/internal/S;

    invoke-direct {v2, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/W;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/W;->a:Z

    iget-object v2, p0, Lio/grpc/internal/W;->f:Lio/grpc/internal/V;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    monitor-enter v2

    :try_start_1
    iget-object v3, v2, Lio/grpc/internal/V;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, v2, Lio/grpc/internal/V;->c:Ljava/util/List;

    iput-boolean v1, v2, Lio/grpc/internal/V;->b:Z

    monitor-exit v2

    goto :goto_3

    :cond_0
    iget-object v3, v2, Lio/grpc/internal/V;->c:Ljava/util/List;

    iput-object p0, v2, Lio/grpc/internal/V;->c:Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object p0, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final r(Lio/grpc/internal/v;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/W;->i:Ljava/util/List;

    iget-object p0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->c(Lio/grpc/internal/v;)V

    return-void
.end method

.method public s(LX2/L0;)V
    .locals 0

    return-void
.end method

.method public final t(Lio/grpc/internal/u;)Lio/grpc/internal/Q;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "realStream already set to %s"

    invoke-static {v4, v0, v3}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object p1, p0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/internal/W;->h:J

    iget-object p1, p0, Lio/grpc/internal/W;->b:Lio/grpc/internal/v;

    if-nez p1, :cond_2

    iput-object v1, p0, Lio/grpc/internal/W;->e:Ljava/util/List;

    iput-boolean v2, p0, Lio/grpc/internal/W;->a:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lio/grpc/internal/W;->r(Lio/grpc/internal/v;)V

    new-instance p1, Lio/grpc/internal/Q;

    invoke-direct {p1, v2, p0}, Lio/grpc/internal/Q;-><init>(ILjava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
