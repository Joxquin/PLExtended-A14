.class public final Lio/grpc/internal/G2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lio/grpc/internal/G2;


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lio/grpc/internal/C2;

.field public c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/internal/G2;

    new-instance v1, Lio/grpc/internal/C2;

    invoke-direct {v1}, Lio/grpc/internal/C2;-><init>()V

    invoke-direct {v0, v1}, Lio/grpc/internal/G2;-><init>(Lio/grpc/internal/C2;)V

    sput-object v0, Lio/grpc/internal/G2;->d:Lio/grpc/internal/G2;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/C2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lio/grpc/internal/G2;->b:Lio/grpc/internal/C2;

    return-void
.end method

.method public static a(Lio/grpc/internal/F2;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lio/grpc/internal/G2;->d:Lio/grpc/internal/G2;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/E2;

    if-nez v1, :cond_0

    new-instance v1, Lio/grpc/internal/E2;

    check-cast p0, Lio/grpc/internal/n0;

    invoke-virtual {p0}, Lio/grpc/internal/n0;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/E2;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, v1, Lio/grpc/internal/E2;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p0, 0x0

    iput-object p0, v1, Lio/grpc/internal/E2;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget p0, v1, Lio/grpc/internal/E2;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lio/grpc/internal/E2;->b:I

    iget-object p0, v1, Lio/grpc/internal/E2;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Lio/grpc/internal/F2;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lio/grpc/internal/G2;->d:Lio/grpc/internal/G2;

    const-string v1, "No cached instance found for "

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lio/grpc/internal/G2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/E2;

    if-eqz v2, :cond_5

    iget-object v1, v2, Lio/grpc/internal/E2;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v5, "Releasing the wrong instance"

    invoke-static {v5, v1}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget v1, v2, Lio/grpc/internal/E2;->b:I

    if-lez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v5, "Refcount has already reached zero"

    invoke-static {v5, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget v1, v2, Lio/grpc/internal/E2;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lio/grpc/internal/E2;->b:I

    if-nez v1, :cond_4

    iget-object v1, v2, Lio/grpc/internal/E2;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    move v3, v4

    :cond_2
    const-string v1, "Destroy task already scheduled"

    invoke-static {v1, v3}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v1, v0, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/grpc/internal/G2;->b:Lio/grpc/internal/C2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "grpc-shared-destroyer-%d"

    invoke-static {v1}, Lio/grpc/internal/r0;->b(Ljava/lang/String;)LR2/k;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    iget-object v1, v0, Lio/grpc/internal/G2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/grpc/internal/P0;

    new-instance v4, Lio/grpc/internal/D2;

    invoke-direct {v4, v0, v2, p0, p1}, Lio/grpc/internal/D2;-><init>(Lio/grpc/internal/G2;Lio/grpc/internal/E2;Lio/grpc/internal/F2;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lio/grpc/internal/P0;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v1, v3, v4, v5, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v2, Lio/grpc/internal/E2;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
