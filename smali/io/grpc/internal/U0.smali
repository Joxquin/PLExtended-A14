.class public final Lio/grpc/internal/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/grpc/internal/H2;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/q1;LX2/Z;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/internal/K2;->a:Lio/grpc/internal/J2;

    .line 2
    iput-object p1, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/H1;

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Lio/grpc/internal/H1;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
