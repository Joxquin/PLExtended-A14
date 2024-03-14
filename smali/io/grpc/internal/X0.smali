.class public final Lio/grpc/internal/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic d:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/X0;->d:Lio/grpc/internal/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object p0, p0, Lio/grpc/internal/X0;->d:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->p:Lio/grpc/internal/U0;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H1;

    invoke-interface {v0}, Lio/grpc/internal/H1;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.getObject()"

    iget-object v2, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, LO2/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
