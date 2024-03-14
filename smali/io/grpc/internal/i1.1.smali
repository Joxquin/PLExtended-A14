.class public final Lio/grpc/internal/i1;
.super LX2/x0;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/internal/g1;

.field public final b:LX2/A0;

.field public final synthetic c:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;Lio/grpc/internal/g1;LX2/A0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    invoke-direct {p0}, LX2/x0;-><init>()V

    iput-object p2, p0, Lio/grpc/internal/i1;->a:Lio/grpc/internal/g1;

    const-string p1, "resolver"

    invoke-static {p3, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lio/grpc/internal/i1;->b:LX2/A0;

    return-void
.end method

.method public static f(Lio/grpc/internal/i1;LX2/L0;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v3, v2, Lio/grpc/internal/s1;->d:LX2/Q;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual {v0, v1, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    iget-object v1, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/internal/o1;->i(LX2/O;)V

    :cond_0
    iget-object v0, v2, Lio/grpc/internal/s1;->V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->f:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    iget-object v3, v2, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    if-eq v0, v1, :cond_1

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->f:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v4, "Failed to resolve name: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v2, Lio/grpc/internal/s1;->V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    :cond_1
    iget-object v0, v2, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    iget-object p0, p0, Lio/grpc/internal/i1;->a:Lio/grpc/internal/g1;

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lio/grpc/internal/g1;->a:Lio/grpc/internal/b;

    iget-object p0, p0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {p0, p1}, LX2/a0;->a(LX2/L0;)V

    iget-object p0, v2, Lio/grpc/internal/s1;->f0:LX2/O0;

    if-eqz p0, :cond_4

    iget-object p0, p0, LX2/O0;->a:LX2/N0;

    iget-boolean p1, p0, LX2/N0;->f:Z

    if-nez p1, :cond_3

    iget-boolean p0, p0, LX2/N0;->e:Z

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v2, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    if-nez p0, :cond_5

    iget-object p0, v2, Lio/grpc/internal/s1;->x:Lio/grpc/internal/f0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/grpc/internal/g0;

    invoke-direct {p0}, Lio/grpc/internal/g0;-><init>()V

    iput-object p0, v2, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    :cond_5
    iget-object p0, v2, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    invoke-virtual {p0}, Lio/grpc/internal/g0;->a()J

    move-result-wide v6

    sget-object p0, Lio/grpc/ChannelLogger$ChannelLogLevel;->d:Lio/grpc/ChannelLogger$ChannelLogLevel;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Scheduling DNS resolution backoff for {0} ns"

    invoke-virtual {v3, p0, v0, p1}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v2, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v5, Lio/grpc/internal/T0;

    const/4 p0, 0x3

    invoke-direct {v5, v2, p0}, Lio/grpc/internal/T0;-><init>(Lio/grpc/internal/s1;I)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, v2, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {p0}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, LX2/P0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LX2/O0;

    move-result-object p0

    iput-object p0, v2, Lio/grpc/internal/s1;->f0:LX2/O0;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(LX2/L0;)V
    .locals 3

    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "the error status must not be OK"

    invoke-static {v2, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v2, Lio/grpc/internal/h1;

    invoke-direct {v2, v1, p0, p1}, Lio/grpc/internal/h1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(LX2/z0;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v1, Lio/grpc/internal/h1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lio/grpc/internal/h1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
