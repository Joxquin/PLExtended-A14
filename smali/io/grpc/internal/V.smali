.class public final Lio/grpc/internal/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v;


# instance fields
.field public final a:Lio/grpc/internal/v;

.field public volatile b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/grpc/internal/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/V;->c:Ljava/util/List;

    iput-object p1, p0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/V;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    invoke-interface {p0}, Lio/grpc/internal/v;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/Q;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lio/grpc/internal/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/V;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final b(LX2/r0;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/S;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/V;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lio/grpc/binder/internal/e;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/V;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    invoke-interface {p0, p1}, Lio/grpc/internal/v;->c(Lio/grpc/binder/internal/e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/S;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/V;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V
    .locals 1

    new-instance v0, Lio/grpc/internal/U;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/internal/U;-><init>(Lio/grpc/internal/V;LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/V;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/V;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/V;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_0
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
