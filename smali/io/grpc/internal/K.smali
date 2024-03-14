.class public final Lio/grpc/internal/K;
.super LX2/j;
.source "SourceFile"


# instance fields
.field public final a:LX2/j;

.field public volatile b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(LX2/j;)V
    .locals 1

    invoke-direct {p0}, LX2/j;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

    iput-object p1, p0, Lio/grpc/internal/K;->a:LX2/j;

    return-void
.end method


# virtual methods
.method public final a(LX2/L0;LX2/r0;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/grpc/internal/D;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX2/r0;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/K;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(LX2/r0;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/K;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/K;->a:LX2/j;

    invoke-virtual {p0, p1}, LX2/j;->b(LX2/r0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/E;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/K;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/K;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/K;->a:LX2/j;

    invoke-virtual {p0, p1}, LX2/j;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/K;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/K;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/K;->a:LX2/j;

    invoke-virtual {p0}, LX2/j;->d()V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/H;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lio/grpc/internal/H;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/K;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/K;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

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
