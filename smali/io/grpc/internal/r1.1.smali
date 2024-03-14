.class public final Lio/grpc/internal/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Collection;

.field public c:LX2/L0;

.field public final synthetic d:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/r1;->d:Lio/grpc/internal/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/r1;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(LX2/L0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/r1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/r1;->c:LX2/L0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lio/grpc/internal/r1;->c:LX2/L0;

    iget-object v1, p0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {p0, p1}, Lio/grpc/internal/O;->f(LX2/L0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
