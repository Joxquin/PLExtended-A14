.class public final Lio/grpc/internal/I1;
.super LX2/f0;
.source "SourceFile"

# interfaces
.implements LX2/P;


# instance fields
.field public volatile d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/I1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()LX2/Q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 7

    new-instance p0, Lio/grpc/internal/t;

    iget-object v0, p2, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/t;-><init>(LX2/u0;Ljava/util/concurrent/Executor;LX2/g;Lio/grpc/internal/b1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k;)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/internal/I1;->d:Z

    return p0
.end method

.method public final i()LX2/f0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/I1;->d:Z

    sget-object p0, LX2/L0;->n:LX2/L0;

    const-string v0, "OobChannel.shutdown() called"

    invoke-virtual {p0, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    const/4 p0, 0x0

    throw p0
.end method
