.class public final Lio/grpc/binder/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# instance fields
.field public final a:Lio/grpc/binder/internal/d;

.field public final b:Lio/grpc/binder/internal/g;

.field public c:Ljava/io/InputStream;

.field public d:LX2/E;


# direct methods
.method public constructor <init>(Lio/grpc/binder/internal/d;Lio/grpc/binder/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    iput-object p2, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

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
    .locals 5

    iget-object v0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    iget-object v2, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    iput-object v2, v1, Lio/grpc/binder/internal/e;->d:Lio/grpc/binder/internal/g;

    iget-object v2, v2, Lio/grpc/binder/internal/g;->c:Lio/grpc/internal/I2;

    iput-object v2, v1, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iput-object p1, v1, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    iget-object v2, v1, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    sget-object v3, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/binder/internal/Inbound$State;->e:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v1, v2}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    iget-object p0, p0, Lio/grpc/binder/internal/g;->a:Lio/grpc/binder/internal/c;

    iget-object p0, p0, Lio/grpc/binder/internal/c;->m:LY2/f;

    iget-boolean p0, p0, LY2/f;->c:Z

    xor-int/2addr p0, v4

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lio/grpc/internal/v;->a()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(LX2/E;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/binder/internal/i;->d:LX2/E;

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

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

    iget-object v0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

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

    iget-object v0, p0, Lio/grpc/binder/internal/i;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    sget-object p1, LX2/L0;->m:LX2/L0;

    const-string v1, "too many messages"

    invoke-virtual {p1, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p1, v1}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    iput-object p1, p0, Lio/grpc/binder/internal/i;->c:Ljava/io/InputStream;

    :goto_0
    return-void
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
    .locals 8

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    monitor-enter v0
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lio/grpc/binder/internal/i;->d:LX2/E;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lio/grpc/internal/r0;->b:LX2/i0;

    iget-object v2, v2, Lio/grpc/binder/internal/g;->m:LX2/r0;

    invoke-virtual {v2, v3}, LX2/r0;->a(LX2/n0;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/grpc/binder/internal/g;->e:Z

    iget-object v3, p0, Lio/grpc/binder/internal/i;->c:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lio/grpc/binder/internal/g;->a(Ljava/io/InputStream;)V

    :cond_1
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

    iget-object v1, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    monitor-enter v1

    :try_start_3
    iget-object p0, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

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

    const-string v1, "SingleMessageClientStream["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/binder/internal/i;->a:Lio/grpc/binder/internal/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/grpc/binder/internal/i;->b:Lio/grpc/binder/internal/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
