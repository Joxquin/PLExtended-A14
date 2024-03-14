.class public final Lio/grpc/internal/q1;
.super LX2/Y;
.source "SourceFile"


# instance fields
.field public final a:LX2/U;

.field public final b:Lio/grpc/internal/g1;

.field public final c:LX2/Q;

.field public final d:Lio/grpc/internal/l;

.field public final e:Lio/grpc/internal/m;

.field public f:Ljava/util/List;

.field public g:Lio/grpc/internal/H0;

.field public h:Z

.field public i:Z

.field public j:LX2/O0;

.field public final synthetic k:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;LX2/U;Lio/grpc/internal/g1;)V
    .locals 5

    iput-object p1, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    invoke-direct {p0}, LX2/Y;-><init>()V

    iget-object v0, p2, LX2/U;->a:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/internal/q1;->f:Ljava/util/List;

    sget-object v1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lio/grpc/internal/q1;->a:LX2/U;

    const-string p2, "helper"

    invoke-static {p3, p2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lio/grpc/internal/q1;->b:Lio/grpc/internal/g1;

    invoke-virtual {p1}, Lio/grpc/internal/s1;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, LX2/Q;

    sget-object v1, LX2/Q;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    const-string v3, "Subchannel"

    invoke-direct {p3, v3, p2, v1, v2}, LX2/Q;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p3, p0, Lio/grpc/internal/q1;->c:LX2/Q;

    new-instance p2, Lio/grpc/internal/m;

    iget-object p1, p1, Lio/grpc/internal/s1;->q:Lio/grpc/internal/K2;

    invoke-interface {p1}, Lio/grpc/internal/K2;->a()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subchannel for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v1, v2, v0}, Lio/grpc/internal/m;-><init>(LX2/Q;JLjava/lang/String;)V

    iput-object p2, p0, Lio/grpc/internal/q1;->e:Lio/grpc/internal/m;

    new-instance p3, Lio/grpc/internal/l;

    invoke-direct {p3, p2, p1}, Lio/grpc/internal/l;-><init>(Lio/grpc/internal/m;Lio/grpc/internal/K2;)V

    iput-object p3, p0, Lio/grpc/internal/q1;->d:Lio/grpc/internal/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-boolean v0, p0, Lio/grpc/internal/q1;->h:Z

    const-string v1, "not started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lio/grpc/internal/q1;->f:Ljava/util/List;

    return-object p0
.end method

.method public final b()LX2/c;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q1;->a:LX2/U;

    iget-object p0, p0, LX2/U;->b:LX2/c;

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/q1;->h:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-boolean v0, p0, Lio/grpc/internal/q1;->h:Z

    const-string v1, "not started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    invoke-virtual {p0}, Lio/grpc/internal/H0;->a()Lio/grpc/internal/E1;

    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    iget-object v1, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lio/grpc/internal/q1;->i:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lio/grpc/internal/q1;->i:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lio/grpc/internal/s1;->M:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/q1;->j:LX2/O0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LX2/O0;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/q1;->j:LX2/O0;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Lio/grpc/internal/q1;->i:Z

    :goto_0
    iget-boolean v1, v0, Lio/grpc/internal/s1;->M:Z

    if-nez v1, :cond_3

    iget-object v2, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v3, Lio/grpc/internal/P0;

    new-instance v1, Lio/grpc/internal/Z0;

    const/4 v4, 0x2

    invoke-direct {v1, v4, p0}, Lio/grpc/internal/Z0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, v1}, Lio/grpc/internal/P0;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v0}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, LX2/P0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LX2/O0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/q1;->j:LX2/O0;

    return-void

    :cond_3
    iget-object p0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    sget-object v0, Lio/grpc/internal/s1;->m0:LX2/L0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/grpc/internal/y0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/internal/y0;-><init>(Lio/grpc/internal/H0;LX2/L0;I)V

    iget-object p0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(LX2/Z;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v2, v1, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v2}, LX2/P0;->d()V

    iget-boolean v2, v0, Lio/grpc/internal/q1;->h:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "already started"

    invoke-static {v4, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v2, v0, Lio/grpc/internal/q1;->i:Z

    xor-int/2addr v2, v3

    const-string v4, "already shutdown"

    invoke-static {v4, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v2, v1, Lio/grpc/internal/s1;->M:Z

    xor-int/2addr v2, v3

    const-string v4, "Channel is being terminated"

    invoke-static {v4, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    iput-boolean v3, v0, Lio/grpc/internal/q1;->h:Z

    new-instance v2, Lio/grpc/internal/H0;

    iget-object v3, v0, Lio/grpc/internal/q1;->a:LX2/U;

    iget-object v6, v3, LX2/U;->a:Ljava/util/List;

    invoke-virtual {v1}, Lio/grpc/internal/s1;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lio/grpc/internal/s1;->x:Lio/grpc/internal/f0;

    iget-object v9, v1, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v9}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v11, v1, Lio/grpc/internal/s1;->u:LO2/q;

    iget-object v12, v1, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v13, Lio/grpc/internal/U0;

    move-object/from16 v3, p1

    invoke-direct {v13, v0, v3}, Lio/grpc/internal/U0;-><init>(Lio/grpc/internal/q1;LX2/Z;)V

    iget-object v14, v1, Lio/grpc/internal/s1;->T:LX2/M;

    new-instance v15, Lio/grpc/internal/k;

    iget-object v3, v1, Lio/grpc/internal/s1;->P:Lio/grpc/internal/U0;

    iget-object v3, v3, Lio/grpc/internal/U0;->a:Ljava/lang/Object;

    check-cast v3, Lio/grpc/internal/K2;

    invoke-direct {v15, v3}, Lio/grpc/internal/k;-><init>(Lio/grpc/internal/K2;)V

    iget-object v3, v0, Lio/grpc/internal/q1;->e:Lio/grpc/internal/m;

    iget-object v4, v0, Lio/grpc/internal/q1;->c:LX2/Q;

    iget-object v5, v0, Lio/grpc/internal/q1;->d:Lio/grpc/internal/l;

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v5 .. v18}, Lio/grpc/internal/H0;-><init>(Ljava/util/List;Ljava/lang/String;Lio/grpc/internal/f0;Lio/grpc/internal/j;Ljava/util/concurrent/ScheduledExecutorService;LO2/q;LX2/P0;Lio/grpc/internal/U0;LX2/M;Lio/grpc/internal/k;Lio/grpc/internal/m;LX2/Q;Lio/grpc/internal/l;)V

    const-string v6, "Child Subchannel started"

    sget-object v7, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->d:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    iget-object v3, v1, Lio/grpc/internal/s1;->q:Lio/grpc/internal/K2;

    invoke-interface {v3}, Lio/grpc/internal/K2;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestampNanos"

    invoke-static {v3, v4}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, LX2/L;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v5, v4

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, LX2/L;-><init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLX2/P;)V

    iget-object v3, v1, Lio/grpc/internal/s1;->R:Lio/grpc/internal/m;

    invoke-virtual {v3, v4}, Lio/grpc/internal/m;->b(LX2/L;)V

    iput-object v2, v0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    iget-object v0, v1, Lio/grpc/internal/s1;->T:LX2/M;

    iget-object v0, v0, LX2/M;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v2}, LX2/M;->a(Ljava/util/Map;LX2/P;)V

    iget-object v0, v1, Lio/grpc/internal/s1;->E:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iput-object p1, p0, Lio/grpc/internal/q1;->f:Ljava/util/List;

    iget-object p0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "newAddressGroups"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newAddressGroups contains null entry"

    invoke-static {v1, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lio/grpc/internal/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v0}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q1;->c:LX2/Q;

    invoke-virtual {p0}, LX2/Q;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
