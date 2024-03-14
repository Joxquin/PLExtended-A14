.class public final Lio/grpc/internal/D2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lio/grpc/internal/E2;

.field public final synthetic e:Lio/grpc/internal/F2;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lio/grpc/internal/G2;


# direct methods
.method public constructor <init>(Lio/grpc/internal/G2;Lio/grpc/internal/E2;Lio/grpc/internal/F2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iput-object p2, p0, Lio/grpc/internal/D2;->d:Lio/grpc/internal/E2;

    iput-object p3, p0, Lio/grpc/internal/D2;->e:Lio/grpc/internal/F2;

    iput-object p4, p0, Lio/grpc/internal/D2;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/D2;->d:Lio/grpc/internal/E2;

    iget v1, v1, Lio/grpc/internal/E2;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/D2;->e:Lio/grpc/internal/F2;

    iget-object v3, p0, Lio/grpc/internal/D2;->f:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/n0;

    iget v2, v2, Lio/grpc/internal/n0;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Ljava/util/concurrent/Executor;

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :goto_0
    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v2, v2, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lio/grpc/internal/D2;->e:Lio/grpc/internal/F2;

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v2, v2, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v2, v2, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object p0, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iput-object v1, p0, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v3, v3, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    iget-object v4, p0, Lio/grpc/internal/D2;->e:Lio/grpc/internal/F2;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v3, v3, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iget-object v3, v3, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object p0, p0, Lio/grpc/internal/D2;->g:Lio/grpc/internal/G2;

    iput-object v1, p0, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    throw v2

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
