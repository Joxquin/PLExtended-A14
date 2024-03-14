.class public final Lio/grpc/internal/F;
.super Lio/grpc/internal/C;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lio/grpc/internal/K;


# direct methods
.method public constructor <init>(Lio/grpc/internal/L;Lio/grpc/internal/K;)V
    .locals 0

    iput-object p2, p0, Lio/grpc/internal/F;->e:Lio/grpc/internal/K;

    iget-object p1, p1, Lio/grpc/internal/L;->c:LX2/C;

    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lio/grpc/internal/F;->e:Lio/grpc/internal/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/K;->b:Z

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/internal/K;->c:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
