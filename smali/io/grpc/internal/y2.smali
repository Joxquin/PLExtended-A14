.class public final Lio/grpc/internal/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/util/logging/Logger;

.field public static final h:Lio/grpc/internal/v2;


# instance fields
.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/Queue;

.field public volatile f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/grpc/internal/y2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/y2;->g:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v0, Lio/grpc/internal/w2;

    const-class v1, Lio/grpc/internal/y2;

    const-string v2, "f"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/w2;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/grpc/internal/y2;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "FieldUpdaterAtomicHelper failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lio/grpc/internal/x2;

    invoke-direct {v0}, Lio/grpc/internal/x2;-><init>()V

    :goto_0
    sput-object v0, Lio/grpc/internal/y2;->h:Lio/grpc/internal/v2;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/y2;->e:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/y2;->f:I

    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/y2;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lio/grpc/internal/y2;->h:Lio/grpc/internal/v2;

    invoke-virtual {v0, p0}, Lio/grpc/internal/v2;->a(Lio/grpc/internal/y2;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/y2;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/y2;->e:Ljava/util/Queue;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lio/grpc/internal/y2;->h:Lio/grpc/internal/v2;

    invoke-virtual {p1, p0}, Lio/grpc/internal/v2;->b(Lio/grpc/internal/y2;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y2;->e:Ljava/util/Queue;

    const-string v1, "\'r\' must not be null."

    invoke-static {p1, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lio/grpc/internal/y2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/y2;->d:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v1, p0, Lio/grpc/internal/y2;->d:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/y2;->e:Ljava/util/Queue;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lio/grpc/internal/y2;->g:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/y2;->h:Lio/grpc/internal/v2;

    invoke-virtual {v0, p0}, Lio/grpc/internal/v2;->b(Lio/grpc/internal/y2;)V

    iget-object v0, p0, Lio/grpc/internal/y2;->e:Ljava/util/Queue;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/internal/y2;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lio/grpc/internal/y2;->h:Lio/grpc/internal/v2;

    invoke-virtual {v1, p0}, Lio/grpc/internal/v2;->b(Lio/grpc/internal/y2;)V

    throw v0
.end method
