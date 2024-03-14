.class public abstract Lio/grpc/internal/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# static fields
.field public static final A:Ljava/util/Random;

.field public static final x:LX2/i0;

.field public static final y:LX2/i0;

.field public static final z:LX2/L0;


# instance fields
.field public final a:LX2/u0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LX2/P0;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:LX2/r0;

.field public final f:Lio/grpc/internal/s2;

.field public final g:Lio/grpc/internal/s0;

.field public final h:Z

.field public final i:Ljava/lang/Object;

.field public final j:Lio/grpc/internal/h2;

.field public final k:J

.field public final l:J

.field public final m:Lio/grpc/internal/q2;

.field public final n:Lio/grpc/internal/u0;

.field public volatile o:Lio/grpc/internal/l2;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:J

.field public r:Lio/grpc/internal/v;

.field public s:Lio/grpc/internal/i2;

.field public t:Lio/grpc/internal/i2;

.field public u:J

.field public v:LX2/L0;

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, LX2/r0;->d:LX2/h0;

    sget-object v1, LX2/n0;->d:Ljava/util/BitSet;

    new-instance v1, LX2/i0;

    const-string v2, "grpc-previous-rpc-attempts"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r2;->x:LX2/i0;

    new-instance v1, LX2/i0;

    const-string v2, "grpc-retry-pushback-ms"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r2;->y:LX2/i0;

    sget-object v0, LX2/L0;->f:LX2/L0;

    const-string v1, "Stream thrown away because RetriableStream committed"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/r2;->z:LX2/L0;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/grpc/internal/r2;->A:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(LX2/u0;LX2/r0;Lio/grpc/internal/h2;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/s2;Lio/grpc/internal/s0;Lio/grpc/internal/q2;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, LX2/P0;

    new-instance v4, Lio/grpc/internal/W1;

    invoke-direct {v4}, Lio/grpc/internal/W1;-><init>()V

    invoke-direct {v3, v4}, LX2/P0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v3, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    new-instance v3, Lio/grpc/internal/u0;

    invoke-direct {v3}, Lio/grpc/internal/u0;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/r2;->n:Lio/grpc/internal/u0;

    new-instance v3, Lio/grpc/internal/l2;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lio/grpc/internal/l2;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/p2;ZZZI)V

    iput-object v3, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/r2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, p1

    iput-object v3, v0, Lio/grpc/internal/r2;->a:LX2/u0;

    move-object/from16 v3, p3

    iput-object v3, v0, Lio/grpc/internal/r2;->j:Lio/grpc/internal/h2;

    move-wide/from16 v3, p4

    iput-wide v3, v0, Lio/grpc/internal/r2;->k:J

    move-wide/from16 v3, p6

    iput-wide v3, v0, Lio/grpc/internal/r2;->l:J

    move-object/from16 v3, p8

    iput-object v3, v0, Lio/grpc/internal/r2;->b:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p9

    iput-object v3, v0, Lio/grpc/internal/r2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p2

    iput-object v3, v0, Lio/grpc/internal/r2;->e:LX2/r0;

    iput-object v1, v0, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    if-eqz v1, :cond_0

    iget-wide v3, v1, Lio/grpc/internal/s2;->b:J

    iput-wide v3, v0, Lio/grpc/internal/r2;->u:J

    :cond_0
    iput-object v2, v0, Lio/grpc/internal/r2;->g:Lio/grpc/internal/s0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    const-string v5, "Should not provide both retryPolicy and hedgingPolicy"

    invoke-static {v5, v1}, LO2/m;->b(Ljava/lang/Object;Z)V

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, v0, Lio/grpc/internal/r2;->h:Z

    move-object/from16 v1, p12

    iput-object v1, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    return-void
.end method

.method public static p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/r2;->r(Lio/grpc/internal/p2;)Lio/grpc/internal/Y1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/Y1;->run()V

    :cond_0
    return-void
.end method

.method public static q(Lio/grpc/internal/r2;Ljava/lang/Integer;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lio/grpc/internal/r2;->v()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/grpc/internal/i2;->c:Z

    iget-object v1, v1, Lio/grpc/internal/i2;->b:Ljava/util/concurrent/Future;

    new-instance v3, Lio/grpc/internal/i2;

    iget-object v4, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lio/grpc/internal/i2;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lio/grpc/internal/r2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/grpc/internal/e2;

    invoke-direct {v1, v2, p0, v3}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {v3, p0}, Lio/grpc/internal/i2;->a(Ljava/util/concurrent/Future;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v1, v0, Lio/grpc/internal/l2;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object v0, v0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/r2;->a:LX2/u0;

    iget-object p0, p0, LX2/u0;->d:LX2/t0;

    invoke-interface {p0, p1}, LX2/t0;->a(Ljava/lang/Object;)LZ2/a;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->i(Ljava/io/InputStream;)V

    return-void

    :cond_0
    new-instance v0, Lio/grpc/internal/X1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/X1;-><init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v1, v0, Lio/grpc/internal/l2;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object p0, p0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->a(I)V

    return-void

    :cond_0
    new-instance v0, Lio/grpc/internal/b2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lio/grpc/internal/b2;-><init>(II)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    new-instance v0, Lio/grpc/internal/b2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/internal/b2;-><init>(II)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final c(Lio/grpc/internal/v;)V
    .locals 6

    iput-object p1, p0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    invoke-virtual {p0}, Lio/grpc/internal/r2;->z()LX2/L0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lio/grpc/internal/r2;->g(LX2/L0;)V

    return-void

    :cond_0
    iget-object p1, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->b:Ljava/util/List;

    new-instance v1, Lio/grpc/internal/k2;

    invoke-direct {v1, p0}, Lio/grpc/internal/k2;-><init>(Lio/grpc/internal/r2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lio/grpc/internal/r2;->s(IZ)Lio/grpc/internal/p2;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/r2;->h:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {v2, v0}, Lio/grpc/internal/l2;->a(Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v2, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {p0, v2}, Lio/grpc/internal/r2;->w(Lio/grpc/internal/l2;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lio/grpc/internal/q2;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v2, v2, Lio/grpc/internal/q2;->b:I

    if-le v4, v2, :cond_1

    move p1, v3

    :cond_1
    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    new-instance p1, Lio/grpc/internal/i2;

    iget-object v2, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    invoke-direct {p1, v2}, Lio/grpc/internal/i2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lio/grpc/internal/r2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/e2;

    invoke-direct {v2, v3, p0, p1}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lio/grpc/internal/r2;->g:Lio/grpc/internal/s0;

    iget-wide v3, v3, Lio/grpc/internal/s0;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/grpc/internal/i2;->a(Ljava/util/concurrent/Future;)V

    goto :goto_3

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->u(Lio/grpc/internal/p2;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final d(LX2/E;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/X1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/X1;-><init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object p0, p0, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p2;

    iget-object v0, v0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {v0}, Lio/grpc/internal/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(LX2/H;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/X1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/X1;-><init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v1, v0, Lio/grpc/internal/l2;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object p0, p0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->flush()V

    return-void

    :cond_0
    new-instance v0, Lio/grpc/internal/Z1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/Z1;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final g(LX2/L0;)V
    .locals 13

    new-instance v0, Lio/grpc/internal/p2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/p2;-><init>(I)V

    new-instance v2, Lio/grpc/internal/G1;

    invoke-direct {v2}, Lio/grpc/internal/G1;-><init>()V

    iput-object v2, v0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->r(Lio/grpc/internal/p2;)Lio/grpc/internal/Y1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/internal/Y1;->run()V

    iget-object v0, p0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v2, Lio/grpc/internal/e2;

    invoke-direct {v2, v1, p0, p1}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v1, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    iget-object v2, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v2, v2, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lio/grpc/internal/r2;->v:LX2/L0;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    new-instance v12, Lio/grpc/internal/l2;

    iget-object v4, v2, Lio/grpc/internal/l2;->b:Ljava/util/List;

    iget-object v5, v2, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    iget-object v6, v2, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    iget-object v7, v2, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    const/4 v8, 0x1

    iget-boolean v9, v2, Lio/grpc/internal/l2;->a:Z

    iget-boolean v10, v2, Lio/grpc/internal/l2;->h:Z

    iget v11, v2, Lio/grpc/internal/l2;->e:I

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lio/grpc/internal/l2;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/p2;ZZZI)V

    iput-object v12, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object p0, v1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->g(LX2/L0;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h(I)V
    .locals 2

    new-instance v0, Lio/grpc/internal/b2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/grpc/internal/b2;-><init>(II)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final i(Ljava/io/InputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/X1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/X1;-><init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final k(Lio/grpc/internal/u0;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    iget-object v2, p0, Lio/grpc/internal/r2;->n:Lio/grpc/internal/u0;

    invoke-virtual {p1, v2, v1}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-eqz v0, :cond_0

    new-instance v0, Lio/grpc/internal/u0;

    invoke-direct {v0}, Lio/grpc/internal/u0;-><init>()V

    iget-object p0, p0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object p0, p0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0, v0}, Lio/grpc/internal/u;->k(Lio/grpc/internal/u0;)V

    const-string p0, "committed"

    invoke-virtual {p1, v0, p0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lio/grpc/internal/u0;

    invoke-direct {v0}, Lio/grpc/internal/u0;-><init>()V

    iget-object p0, p0, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/p2;

    new-instance v2, Lio/grpc/internal/u0;

    invoke-direct {v2}, Lio/grpc/internal/u0;-><init>()V

    iget-object v1, v1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {v1, v2}, Lio/grpc/internal/u;->k(Lio/grpc/internal/u0;)V

    iget-object v1, v0, Lio/grpc/internal/u0;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "open"

    invoke-virtual {p1, v0, p0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l()V
    .locals 2

    new-instance v0, Lio/grpc/internal/Z1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/grpc/internal/Z1;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Lio/grpc/internal/Z1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/grpc/internal/Z1;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    new-instance v0, Lio/grpc/internal/a2;

    invoke-direct {v0, p1}, Lio/grpc/internal/a2;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final o(LX2/x;)V
    .locals 2

    new-instance v0, Lio/grpc/internal/X1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/X1;-><init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/r2;->t(Lio/grpc/internal/f2;)V

    return-void
.end method

.method public final r(Lio/grpc/internal/p2;)Lio/grpc/internal/Y1;
    .locals 17

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v1, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v7

    return-object v2

    :cond_0
    iget-object v1, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v3, v1, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    iget-object v1, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v4, v1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    const-string v8, "Already committed"

    invoke-static {v8, v4}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v4, v1, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    move-object/from16 v15, p1

    invoke-interface {v4, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    move-object v9, v2

    move-object v10, v4

    move v14, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v8, v1, Lio/grpc/internal/l2;->b:Ljava/util/List;

    move-object v10, v4

    move v14, v6

    move-object v9, v8

    :goto_1
    new-instance v4, Lio/grpc/internal/l2;

    iget-object v11, v1, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    iget-boolean v13, v1, Lio/grpc/internal/l2;->g:Z

    iget-boolean v6, v1, Lio/grpc/internal/l2;->h:Z

    iget v1, v1, Lio/grpc/internal/l2;->e:I

    move-object v8, v4

    move-object/from16 v12, p1

    move v15, v6

    move/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lio/grpc/internal/l2;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/p2;ZZZI)V

    iput-object v4, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v0, Lio/grpc/internal/r2;->j:Lio/grpc/internal/h2;

    iget-wide v8, v0, Lio/grpc/internal/r2;->q:J

    neg-long v8, v8

    iget-object v1, v1, Lio/grpc/internal/h2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v1, v0, Lio/grpc/internal/r2;->s:Lio/grpc/internal/i2;

    if-eqz v1, :cond_3

    iput-boolean v5, v1, Lio/grpc/internal/i2;->c:Z

    iget-object v1, v1, Lio/grpc/internal/i2;->b:Ljava/util/concurrent/Future;

    iput-object v2, v0, Lio/grpc/internal/r2;->s:Lio/grpc/internal/i2;

    move-object v6, v1

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    iget-object v1, v0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    if-eqz v1, :cond_4

    iput-boolean v5, v1, Lio/grpc/internal/i2;->c:Z

    iget-object v1, v1, Lio/grpc/internal/i2;->b:Ljava/util/concurrent/Future;

    iput-object v2, v0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    move-object v8, v1

    goto :goto_3

    :cond_4
    move-object v8, v2

    :goto_3
    new-instance v9, Lio/grpc/internal/Y1;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/Y1;-><init>(Lio/grpc/internal/r2;Ljava/util/Collection;Lio/grpc/internal/p2;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v7

    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s(IZ)Lio/grpc/internal/p2;
    .locals 10

    new-instance v0, Lio/grpc/internal/p2;

    invoke-direct {v0, p1}, Lio/grpc/internal/p2;-><init>(I)V

    new-instance v1, Lio/grpc/internal/g2;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/g2;-><init>(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    new-instance v2, Lio/grpc/internal/c2;

    invoke-direct {v2, v1}, Lio/grpc/internal/c2;-><init>(Lio/grpc/internal/g2;)V

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    iget-object v3, p0, Lio/grpc/internal/r2;->e:LX2/r0;

    iget v4, v3, LX2/r0;->b:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v1, LX2/r0;->a:[Ljava/lang/Object;

    if-eqz v7, :cond_2

    array-length v7, v7

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    iget v8, v1, LX2/r0;->b:I

    mul-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-nez v5, :cond_4

    mul-int/lit8 v5, v4, 0x2

    if-ge v7, v5, :cond_5

    :cond_4
    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, LX2/r0;->b(I)V

    :cond_5
    iget-object v4, v3, LX2/r0;->a:[Ljava/lang/Object;

    iget-object v5, v1, LX2/r0;->a:[Ljava/lang/Object;

    iget v7, v1, LX2/r0;->b:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, v3, LX2/r0;->b:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v1, LX2/r0;->b:I

    iget v3, v3, LX2/r0;->b:I

    add-int/2addr v4, v3

    iput v4, v1, LX2/r0;->b:I

    :goto_3
    if-lez p1, :cond_6

    sget-object v3, Lio/grpc/internal/r2;->x:LX2/i0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0, v1, v2, p1, p2}, Lio/grpc/internal/r2;->x(LX2/r0;Lio/grpc/internal/c2;IZ)Lio/grpc/internal/u;

    move-result-object p0

    iput-object p0, v0, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    return-object v0
.end method

.method public final t(Lio/grpc/internal/f2;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v1, v1, Lio/grpc/internal/l2;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v1, Lio/grpc/internal/l2;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object p0, p0, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p2;

    invoke-interface {p1, v0}, Lio/grpc/internal/f2;->a(Lio/grpc/internal/p2;)V

    goto :goto_0

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

.method public final u(Lio/grpc/internal/p2;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    if-eqz v2, :cond_1

    iget-object v7, v6, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-eqz v7, :cond_0

    if-eq v7, p1, :cond_0

    monitor-exit v5

    goto :goto_1

    :cond_0
    iget-boolean v7, v6, Lio/grpc/internal/l2;->g:Z

    if-eqz v7, :cond_1

    monitor-exit v5

    goto :goto_1

    :cond_1
    iget-object v7, v6, Lio/grpc/internal/l2;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v3, v7, :cond_5

    invoke-virtual {v6, p1}, Lio/grpc/internal/l2;->e(Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {p0}, Lio/grpc/internal/r2;->e()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v5

    return-void

    :cond_2
    new-instance v1, Lio/grpc/internal/d2;

    invoke-direct {v1, v0, p0}, Lio/grpc/internal/d2;-><init>(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, Lio/grpc/internal/r2;->c:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-ne v1, p1, :cond_4

    iget-object p0, p0, Lio/grpc/internal/r2;->v:LX2/L0;

    goto :goto_2

    :cond_4
    sget-object p0, Lio/grpc/internal/r2;->z:LX2/L0;

    :goto_2
    invoke-interface {v0, p0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    return-void

    :cond_5
    :try_start_1
    iget-boolean v7, p1, Lio/grpc/internal/p2;->b:Z

    if-eqz v7, :cond_6

    monitor-exit v5

    return-void

    :cond_6
    add-int/lit16 v7, v3, 0x80

    iget-object v8, v6, Lio/grpc/internal/l2;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v6, Lio/grpc/internal/l2;->b:Ljava/util/List;

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v6, v6, Lio/grpc/internal/l2;->b:Ljava/util/List;

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/internal/f2;

    invoke-interface {v5, p1}, Lio/grpc/internal/f2;->a(Lio/grpc/internal/p2;)V

    instance-of v5, v5, Lio/grpc/internal/k2;

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_8

    iget-object v5, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v6, v5, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-eqz v6, :cond_a

    if-eq v6, p1, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean v5, v5, Lio/grpc/internal/l2;->g:Z

    if-eqz v5, :cond_8

    :cond_b
    :goto_4
    move v3, v7

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final v()V
    .locals 13

    iget-object v0, p0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v1, Lio/grpc/internal/i2;->c:Z

    iget-object v1, v1, Lio/grpc/internal/i2;->b:Ljava/util/concurrent/Future;

    iput-object v2, p0, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    move-object v2, v1

    :cond_0
    iget-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v3, v1, Lio/grpc/internal/l2;->h:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lio/grpc/internal/l2;

    iget-object v5, v1, Lio/grpc/internal/l2;->b:Ljava/util/List;

    iget-object v6, v1, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    iget-object v7, v1, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    iget-object v8, v1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-boolean v9, v1, Lio/grpc/internal/l2;->g:Z

    iget-boolean v10, v1, Lio/grpc/internal/l2;->a:Z

    const/4 v11, 0x1

    iget v12, v1, Lio/grpc/internal/l2;->e:I

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lio/grpc/internal/l2;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/p2;ZZZI)V

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final w(Lio/grpc/internal/l2;)Z
    .locals 1

    iget-object v0, p1, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/r2;->g:Lio/grpc/internal/s0;

    iget p0, p0, Lio/grpc/internal/s0;->a:I

    iget v0, p1, Lio/grpc/internal/l2;->e:I

    if-ge v0, p0, :cond_0

    iget-boolean p0, p1, Lio/grpc/internal/l2;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract x(LX2/r0;Lio/grpc/internal/c2;IZ)Lio/grpc/internal/u;
.end method

.method public abstract y()V
.end method

.method public abstract z()LX2/L0;
.end method
