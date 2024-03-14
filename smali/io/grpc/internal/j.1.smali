.class public final Lio/grpc/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/y;


# instance fields
.field public final d:Lio/grpc/internal/y;

.field public final e:LX2/e;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/internal/y;LX2/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/j;->d:Lio/grpc/internal/y;

    iput-object p2, p0, Lio/grpc/internal/j;->e:LX2/e;

    iput-object p3, p0, Lio/grpc/internal/j;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/j;->d:Lio/grpc/internal/y;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final s()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/j;->d:Lio/grpc/internal/y;

    invoke-interface {p0}, Lio/grpc/internal/y;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ljava/net/SocketAddress;Lio/grpc/internal/x;Lio/grpc/internal/G0;)Lio/grpc/internal/z;
    .locals 2

    new-instance v0, Lio/grpc/internal/i;

    iget-object v1, p0, Lio/grpc/internal/j;->d:Lio/grpc/internal/y;

    invoke-interface {v1, p1, p2, p3}, Lio/grpc/internal/y;->w(Ljava/net/SocketAddress;Lio/grpc/internal/x;Lio/grpc/internal/G0;)Lio/grpc/internal/z;

    move-result-object p1

    iget-object p2, p2, Lio/grpc/internal/x;->a:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/i;-><init>(Lio/grpc/internal/j;Lio/grpc/internal/z;Ljava/lang/String;)V

    return-object v0
.end method
