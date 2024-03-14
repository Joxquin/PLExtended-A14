.class public final Lio/grpc/binder/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# instance fields
.field public final a:Lio/grpc/binder/internal/d;

.field public final b:Lio/grpc/binder/internal/g;


# direct methods
.method public constructor <init>(Lio/grpc/binder/internal/d;Lio/grpc/binder/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    iput-object p2, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    iget v1, p0, Lio/grpc/binder/internal/e;->p:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/binder/internal/e;->p:I

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c(Lio/grpc/internal/v;)V
    .locals 6

    iget-object v0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    iget-object v2, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    iput-object v2, v1, Lio/grpc/binder/internal/e;->d:Lio/grpc/binder/internal/g;

    iget-object v2, v2, Lio/grpc/binder/internal/g;->c:Lio/grpc/internal/I2;

    iput-object v2, v1, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iput-object p1, v1, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    iget-object v2, v1, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    sget-object v3, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/binder/internal/Inbound$State;->e:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v1, v2}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    iget-object v0, v0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iget-object v0, v0, Lio/grpc/binder/internal/c;->m:LY2/f;

    iget-boolean v0, v0, LY2/f;->c:Z

    xor-int/2addr v0, v5

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lio/grpc/internal/v;->a()V

    :cond_2
    :try_start_1
    iget-object p1, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    monitor-enter p1
    :try_end_1
    .catch Lio/grpc/StatusException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    iput-boolean v5, v0, Lio/grpc/binder/internal/g;->e:Z

    invoke-virtual {v0}, Lio/grpc/binder/internal/g;->d()V

    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Lio/grpc/StatusException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v1

    :try_start_4
    iget-object p0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {p1}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, p1, v4}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v1

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final d(LX2/E;)V
    .locals 6

    iget-object v0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/grpc/internal/r0;->b:LX2/i0;

    iget-object p0, p0, Lio/grpc/binder/internal/g;->m:LX2/r0;

    invoke-virtual {p0, v1}, LX2/r0;->a(LX2/n0;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    iget-object p0, p0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iget-object p0, p0, Lio/grpc/binder/internal/c;->m:LY2/f;

    iget-boolean p0, p0, LY2/f;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final f(LX2/H;)V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g(LX2/L0;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LX2/L0;->f:LX2/L0;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(I)V
    .locals 0

    return-void
.end method

.method public final i(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    monitor-enter v0
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {v1, p1}, Lio/grpc/binder/internal/g;->a(Ljava/io/InputStream;)V

    iget-object p1, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {p1}, Lio/grpc/binder/internal/g;->d()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lio/grpc/StatusException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {p1}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p1, v1}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final k(Lio/grpc/internal/u0;)V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    monitor-enter v0
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/grpc/binder/internal/g;->h:Z

    invoke-virtual {v1}, Lio/grpc/binder/internal/g;->d()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lio/grpc/StatusException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    monitor-enter v1

    :try_start_3
    iget-object p0, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {v0}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v0, v2}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final n(Z)V
    .locals 0

    return-void
.end method

.method public final o(LX2/x;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiMessageClientStream["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/binder/internal/f;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/grpc/binder/internal/f;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
