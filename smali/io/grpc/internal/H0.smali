.class public final Lio/grpc/internal/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/P;
.implements Lio/grpc/internal/L2;


# instance fields
.field public A:LX2/L0;

.field public final d:LX2/Q;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lio/grpc/internal/f0;

.field public final h:Lio/grpc/internal/U0;

.field public final i:Lio/grpc/internal/y;

.field public final j:Ljava/util/concurrent/ScheduledExecutorService;

.field public final k:LX2/M;

.field public final l:Lio/grpc/internal/k;

.field public final m:LX2/i;

.field public final n:LX2/P0;

.field public final o:Lio/grpc/internal/D0;

.field public volatile p:Ljava/util/List;

.field public q:Lio/grpc/internal/g0;

.field public final r:LO2/o;

.field public s:LX2/O0;

.field public t:LX2/O0;

.field public u:Lio/grpc/internal/E1;

.field public final v:Ljava/util/Collection;

.field public final w:Lio/grpc/internal/v0;

.field public x:Lio/grpc/internal/z;

.field public volatile y:Lio/grpc/internal/E1;

.field public volatile z:LX2/z;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lio/grpc/internal/f0;Lio/grpc/internal/j;Ljava/util/concurrent/ScheduledExecutorService;LO2/q;LX2/P0;Lio/grpc/internal/U0;LX2/M;Lio/grpc/internal/k;Lio/grpc/internal/m;LX2/Q;Lio/grpc/internal/l;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    new-instance v4, Lio/grpc/internal/v0;

    invoke-direct {v4, p0}, Lio/grpc/internal/v0;-><init>(Lio/grpc/internal/H0;)V

    iput-object v4, v0, Lio/grpc/internal/H0;->w:Lio/grpc/internal/v0;

    sget-object v4, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    invoke-static {v4}, LX2/z;->a(Lio/grpc/ConnectivityState;)LX2/z;

    move-result-object v4

    iput-object v4, v0, Lio/grpc/internal/H0;->z:LX2/z;

    const-string v4, "addressGroups"

    invoke-static {p1, v4}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v5, v4}, LO2/m;->b(Ljava/lang/Object;Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "addressGroups contains null entry"

    invoke-static {v5, v6}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/H0;->p:Ljava/util/List;

    new-instance v4, Lio/grpc/internal/D0;

    invoke-direct {v4, v1}, Lio/grpc/internal/D0;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    move-object v1, p2

    iput-object v1, v0, Lio/grpc/internal/H0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/grpc/internal/H0;->f:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lio/grpc/internal/H0;->g:Lio/grpc/internal/f0;

    move-object v1, p4

    iput-object v1, v0, Lio/grpc/internal/H0;->i:Lio/grpc/internal/y;

    move-object v1, p5

    iput-object v1, v0, Lio/grpc/internal/H0;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p6}, LO2/q;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/o;

    iput-object v1, v0, Lio/grpc/internal/H0;->r:LO2/o;

    move-object v1, p7

    iput-object v1, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    move-object v1, p8

    iput-object v1, v0, Lio/grpc/internal/H0;->h:Lio/grpc/internal/U0;

    move-object/from16 v1, p9

    iput-object v1, v0, Lio/grpc/internal/H0;->k:LX2/M;

    move-object/from16 v1, p10

    iput-object v1, v0, Lio/grpc/internal/H0;->l:Lio/grpc/internal/k;

    const-string v1, "channelTracer"

    move-object/from16 v4, p11

    invoke-static {v4, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "logId"

    invoke-static {v2, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lio/grpc/internal/H0;->d:LX2/Q;

    const-string v1, "channelLogger"

    invoke-static {v3, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Lio/grpc/internal/H0;->m:LX2/i;

    return-void
.end method

.method public static g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    invoke-static {p1}, LX2/z;->a(Lio/grpc/ConnectivityState;)LX2/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/H0;->i(LX2/z;)V

    return-void
.end method

.method public static h(Lio/grpc/internal/H0;)V
    .locals 8

    iget-object v0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v1, p0, Lio/grpc/internal/H0;->s:LX2/O0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Should have no reconnectTask scheduled"

    invoke-static {v4, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v1, p0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    iget v4, v1, Lio/grpc/internal/D0;->b:I

    if-nez v4, :cond_1

    iget v4, v1, Lio/grpc/internal/D0;->c:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/internal/H0;->r:LO2/o;

    iput-boolean v3, v2, LO2/o;->b:Z

    invoke-virtual {v2}, LO2/o;->a()V

    :cond_2
    iget-object v2, v1, Lio/grpc/internal/D0;->a:Ljava/util/List;

    iget v3, v1, Lio/grpc/internal/D0;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/I;

    iget-object v2, v2, LX2/I;->a:Ljava/util/List;

    iget v3, v1, Lio/grpc/internal/D0;->c:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    instance-of v3, v2, Lio/grpc/HttpConnectProxiedSocketAddress;

    if-eqz v3, :cond_3

    check-cast v2, Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->a()Ljava/net/InetSocketAddress;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_2
    iget-object v4, v1, Lio/grpc/internal/D0;->a:Ljava/util/List;

    iget v1, v1, Lio/grpc/internal/D0;->b:I

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX2/I;

    iget-object v1, v1, LX2/I;->b:LX2/c;

    sget-object v4, LX2/I;->d:LX2/b;

    invoke-virtual {v1, v4}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lio/grpc/internal/x;

    invoke-direct {v5}, Lio/grpc/internal/x;-><init>()V

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lio/grpc/internal/H0;->e:Ljava/lang/String;

    :goto_3
    const-string v6, "authority"

    invoke-static {v4, v6}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v5, Lio/grpc/internal/x;->a:Ljava/lang/String;

    iput-object v1, v5, Lio/grpc/internal/x;->b:LX2/c;

    iget-object v1, p0, Lio/grpc/internal/H0;->f:Ljava/lang/String;

    iput-object v1, v5, Lio/grpc/internal/x;->c:Ljava/lang/String;

    iput-object v2, v5, Lio/grpc/internal/x;->d:Lio/grpc/HttpConnectProxiedSocketAddress;

    new-instance v1, Lio/grpc/internal/G0;

    invoke-direct {v1}, Lio/grpc/internal/G0;-><init>()V

    iget-object v2, p0, Lio/grpc/internal/H0;->d:LX2/Q;

    iput-object v2, v1, Lio/grpc/internal/G0;->a:LX2/Q;

    new-instance v2, Lio/grpc/internal/C0;

    iget-object v4, p0, Lio/grpc/internal/H0;->i:Lio/grpc/internal/y;

    invoke-interface {v4, v3, v5, v1}, Lio/grpc/internal/y;->w(Ljava/net/SocketAddress;Lio/grpc/internal/x;Lio/grpc/internal/G0;)Lio/grpc/internal/z;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/H0;->l:Lio/grpc/internal/k;

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/C0;-><init>(Lio/grpc/internal/z;Lio/grpc/internal/k;)V

    invoke-virtual {v2}, Lio/grpc/internal/j0;->e()LX2/Q;

    move-result-object v3

    iput-object v3, v1, Lio/grpc/internal/G0;->a:LX2/Q;

    iget-object v3, p0, Lio/grpc/internal/H0;->k:LX2/M;

    iget-object v3, v3, LX2/M;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3, v2}, LX2/M;->a(Ljava/util/Map;LX2/P;)V

    iput-object v2, p0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    iget-object v3, p0, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lio/grpc/internal/F0;

    invoke-direct {v3, p0, v2}, Lio/grpc/internal/F0;-><init>(Lio/grpc/internal/H0;Lio/grpc/internal/C0;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/j0;->b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, LX2/P0;->b(Ljava/lang/Runnable;)V

    :cond_5
    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v1, v1, Lio/grpc/internal/G0;->a:LX2/Q;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lio/grpc/internal/H0;->m:LX2/i;

    const-string v2, "Started transport {0}"

    invoke-virtual {p0, v0, v2, v1}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static j(LX2/L0;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LX2/L0;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lio/grpc/internal/E1;
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    new-instance v1, Lio/grpc/internal/w0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/w0;-><init>(Lio/grpc/internal/H0;I)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()LX2/Q;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/H0;->d:LX2/Q;

    return-object p0
.end method

.method public final i(LX2/z;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v0, p0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    iget-object v1, p1, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot transition out of SHUTDOWN to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iput-object p1, p0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object p0, p0, Lio/grpc/internal/H0;->h:Lio/grpc/internal/U0;

    iget-object v0, p0, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    check-cast v0, LX2/Z;

    if-eqz v0, :cond_1

    move v3, v2

    :cond_1
    const-string v1, "listener is null"

    invoke-static {v1, v3}, LO2/m;->k(Ljava/lang/Object;Z)V

    invoke-interface {v0, p1}, LX2/Z;->a(LX2/z;)V

    iget-object p1, p1, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v0, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast p1, Lio/grpc/internal/q1;

    iget-object p1, p1, Lio/grpc/internal/q1;->b:Lio/grpc/internal/g1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast p1, Lio/grpc/internal/q1;

    iget-object p1, p1, Lio/grpc/internal/q1;->b:Lio/grpc/internal/g1;

    iget-boolean p1, p1, Lio/grpc/internal/g1;->b:Z

    if-nez p1, :cond_5

    sget-object p1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "LoadBalancer should call Helper.refreshNameResolution() to refresh name resolution if subchannel state becomes TRANSIENT_FAILURE or IDLE. This will no longer happen automatically in the future releases"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object p1, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast p1, Lio/grpc/internal/q1;

    iget-object p1, p1, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v0, p1, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v0, p1, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v1, p1, Lio/grpc/internal/s1;->f0:LX2/O0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LX2/O0;->a()V

    const/4 v1, 0x0

    iput-object v1, p1, Lio/grpc/internal/s1;->f0:LX2/O0;

    iput-object v1, p1, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    :cond_3
    invoke-virtual {v0}, LX2/P0;->d()V

    iget-boolean v0, p1, Lio/grpc/internal/s1;->A:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {p1}, LX2/A0;->b()V

    :cond_4
    iget-object p0, p0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q1;

    iget-object p0, p0, Lio/grpc/internal/q1;->b:Lio/grpc/internal/g1;

    iput-boolean v2, p0, Lio/grpc/internal/g1;->b:Z

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/H0;->d:LX2/Q;

    iget-wide v1, v1, LX2/Q;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, LO2/i;->b(Ljava/lang/String;J)V

    const-string v1, "addressGroups"

    iget-object p0, p0, Lio/grpc/internal/H0;->p:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
