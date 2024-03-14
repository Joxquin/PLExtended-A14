.class public final Lio/grpc/internal/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/D1;


# instance fields
.field public final a:Lio/grpc/internal/z;

.field public b:Z

.field public final synthetic c:Lio/grpc/internal/H0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/H0;Lio/grpc/internal/C0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/internal/F0;->b:Z

    iput-object p2, p0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lio/grpc/internal/F0;->b:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v0, Lio/grpc/internal/H0;->m:LX2/i;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    invoke-interface {v3}, LX2/P;->e()LX2/Q;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "{0} Terminated"

    invoke-virtual {v1, v2, v5, v4}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lio/grpc/internal/H0;->k:LX2/M;

    iget-object v1, v1, LX2/M;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, v3}, LX2/M;->b(Ljava/util/Map;LX2/P;)V

    new-instance v1, Lio/grpc/internal/z0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lio/grpc/internal/z0;-><init>(Lio/grpc/internal/H0;Lio/grpc/internal/z;Z)V

    iget-object v0, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lio/grpc/internal/E0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lio/grpc/internal/E0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(LX2/L0;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v0, Lio/grpc/internal/H0;->m:LX2/i;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    invoke-interface {v3}, LX2/P;->e()LX2/Q;

    move-result-object v3

    invoke-static {p1}, Lio/grpc/internal/H0;->j(LX2/L0;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{0} SHUTDOWN with {1}"

    invoke-virtual {v1, v2, v4, v3}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/F0;->b:Z

    new-instance v2, Lio/grpc/internal/x0;

    invoke-direct {v2, v1, p0, p1}, Lio/grpc/internal/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/grpc/internal/z0;

    iget-object p0, p0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    invoke-direct {v1, v0, p0, p1}, Lio/grpc/internal/z0;-><init>(Lio/grpc/internal/H0;Lio/grpc/internal/z;Z)V

    iget-object p0, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v0, Lio/grpc/internal/H0;->m:LX2/i;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "READY"

    invoke-virtual {v1, v2, v3}, LX2/i;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object v0, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    new-instance v1, Lio/grpc/internal/E0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lio/grpc/internal/E0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
