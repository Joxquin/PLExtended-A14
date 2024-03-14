.class public final Lio/grpc/internal/a1;
.super Lio/grpc/internal/r2;
.source "SourceFile"


# instance fields
.field public final synthetic B:LX2/u0;

.field public final synthetic C:LX2/g;

.field public final synthetic D:LX2/C;

.field public final synthetic E:Lio/grpc/internal/b1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/b1;LX2/u0;LX2/r0;LX2/g;Lio/grpc/internal/s2;Lio/grpc/internal/s0;Lio/grpc/internal/q2;LX2/C;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    iput-object v1, v0, Lio/grpc/internal/a1;->E:Lio/grpc/internal/b1;

    move-object v3, p2

    iput-object v3, v0, Lio/grpc/internal/a1;->B:LX2/u0;

    iput-object v2, v0, Lio/grpc/internal/a1;->C:LX2/g;

    move-object/from16 v4, p8

    iput-object v4, v0, Lio/grpc/internal/a1;->D:LX2/C;

    iget-object v1, v1, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v4, v1, Lio/grpc/internal/s1;->Z:Lio/grpc/internal/h2;

    iget-wide v5, v1, Lio/grpc/internal/s1;->a0:J

    iget-wide v7, v1, Lio/grpc/internal/s1;->b0:J

    iget-object v2, v2, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    iget-object v2, v1, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    :cond_0
    move-object v9, v2

    iget-object v1, v1, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v1}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lio/grpc/internal/r2;-><init>(LX2/u0;LX2/r0;Lio/grpc/internal/h2;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/s2;Lio/grpc/internal/s0;Lio/grpc/internal/q2;)V

    return-void
.end method


# virtual methods
.method public final x(LX2/r0;Lio/grpc/internal/c2;IZ)Lio/grpc/internal/u;
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/a1;->C:LX2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LX2/g;

    invoke-direct {v1, v0}, LX2/g;-><init>(LX2/g;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, LX2/g;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, LX2/g;->g:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v1, LX2/g;->g:Ljava/util/List;

    invoke-static {v1, p1, p3, p4}, Lio/grpc/internal/r0;->a(LX2/g;LX2/r0;IZ)[LX2/r;

    move-result-object p2

    iget-object p3, p0, Lio/grpc/internal/a1;->B:LX2/u0;

    const-string p4, "method"

    invoke-static {p3, p4}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p4, p0, Lio/grpc/internal/a1;->E:Lio/grpc/internal/b1;

    iget-object v0, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->C:LX2/V;

    iget-object v2, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p4, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object p4, p4, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v2, Lio/grpc/internal/Z0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4}, Lio/grpc/internal/Z0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    iget-object p4, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object p4, p4, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LX2/V;->e()LX2/W;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v1, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v2}, Lio/grpc/internal/r0;->c(LX2/W;Z)Lio/grpc/internal/w;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p4, v0

    goto :goto_0

    :cond_2
    iget-object p4, p4, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object p4, p4, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/a1;->D:LX2/C;

    invoke-virtual {p0}, LX2/C;->a()LX2/C;

    move-result-object v0

    :try_start_0
    invoke-interface {p4, p3, p1, v1, p2}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LX2/C;->c(LX2/C;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, LX2/C;->c(LX2/C;)V

    throw p1
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/a1;->E:Lio/grpc/internal/b1;

    iget-object v0, v0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    iget-object v1, v0, Lio/grpc/internal/r1;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lio/grpc/internal/r1;->c:LX2/L0;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    iget-object v0, v0, Lio/grpc/internal/r1;->d:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {v0, p0}, Lio/grpc/internal/O;->f(LX2/L0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final z()LX2/L0;
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/a1;->E:Lio/grpc/internal/b1;

    iget-object v0, v0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    iget-object v1, v0, Lio/grpc/internal/r1;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lio/grpc/internal/r1;->c:LX2/L0;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
