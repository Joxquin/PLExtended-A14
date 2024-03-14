.class public final Lio/grpc/internal/s1;
.super LX2/f0;
.source "SourceFile"

# interfaces
.implements LX2/P;


# static fields
.field public static final j0:Ljava/util/logging/Logger;

.field public static final k0:Ljava/util/regex/Pattern;

.field public static final l0:LX2/L0;

.field public static final m0:LX2/L0;

.field public static final n0:LX2/L0;

.field public static final o0:Lio/grpc/internal/C1;

.field public static final p0:Lio/grpc/internal/S0;

.field public static final q0:Lio/grpc/internal/Y0;


# instance fields
.field public A:Z

.field public B:Lio/grpc/internal/g1;

.field public volatile C:LX2/V;

.field public D:Z

.field public final E:Ljava/util/Set;

.field public F:Ljava/util/Collection;

.field public final G:Ljava/lang/Object;

.field public final H:Ljava/util/Set;

.field public final I:Lio/grpc/internal/O;

.field public final J:Lio/grpc/internal/r1;

.field public final K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public L:Z

.field public M:Z

.field public volatile N:Z

.field public final O:Ljava/util/concurrent/CountDownLatch;

.field public final P:Lio/grpc/internal/U0;

.field public final Q:Lio/grpc/internal/k;

.field public final R:Lio/grpc/internal/m;

.field public final S:Lio/grpc/internal/l;

.field public final T:LX2/M;

.field public final U:Lio/grpc/internal/o1;

.field public V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field public W:Lio/grpc/internal/C1;

.field public X:Z

.field public final Y:Z

.field public final Z:Lio/grpc/internal/h2;

.field public final a0:J

.field public final b0:J

.field public final c0:Z

.field public final d:LX2/Q;

.field public final d0:Lio/grpc/internal/b1;

.field public final e:Ljava/lang/String;

.field public final e0:Lio/grpc/internal/e1;

.field public final f:LX2/x0;

.field public f0:LX2/O0;

.field public final g:LX2/v0;

.field public g0:Lio/grpc/internal/g0;

.field public final h:Lio/grpc/internal/f;

.field public final h0:Lio/grpc/internal/b1;

.field public final i:Lio/grpc/internal/y;

.field public final i0:Lio/grpc/internal/V1;

.field public final j:Lio/grpc/internal/j;

.field public final k:Lio/grpc/internal/p1;

.field public final l:Ljava/util/concurrent/Executor;

.field public final m:Lio/grpc/internal/H2;

.field public final n:Lio/grpc/internal/H1;

.field public final o:Lio/grpc/internal/U0;

.field public final p:Lio/grpc/internal/U0;

.field public final q:Lio/grpc/internal/K2;

.field public final r:LX2/P0;

.field public final s:LX2/H;

.field public final t:LX2/y;

.field public final u:LO2/q;

.field public final v:J

.field public final w:Lio/grpc/internal/B;

.field public final x:Lio/grpc/internal/f0;

.field public final y:LX2/h;

.field public z:LX2/A0;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Lio/grpc/internal/s1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/s1;->k0:Ljava/util/regex/Pattern;

    sget-object v0, LX2/L0;->n:LX2/L0;

    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/s1;->l0:LX2/L0;

    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/s1;->m0:LX2/L0;

    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/s1;->n0:LX2/L0;

    new-instance v0, Lio/grpc/internal/C1;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/grpc/internal/C1;-><init>(Lio/grpc/internal/A1;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/q2;Ljava/lang/Object;Ljava/util/Map;)V

    sput-object v0, Lio/grpc/internal/s1;->o0:Lio/grpc/internal/C1;

    new-instance v0, Lio/grpc/internal/S0;

    invoke-direct {v0}, Lio/grpc/internal/S0;-><init>()V

    sput-object v0, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    new-instance v0, Lio/grpc/internal/Y0;

    invoke-direct {v0}, Lio/grpc/internal/Y0;-><init>()V

    sput-object v0, Lio/grpc/internal/s1;->q0:Lio/grpc/internal/Y0;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/x1;Lio/grpc/internal/y;Lio/grpc/internal/f0;Lio/grpc/internal/H2;Lio/grpc/internal/o0;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Lio/grpc/internal/K2;->a:Lio/grpc/internal/J2;

    invoke-direct/range {p0 .. p0}, LX2/f0;-><init>()V

    new-instance v14, LX2/P0;

    new-instance v6, Lio/grpc/internal/W0;

    invoke-direct {v6, v0}, Lio/grpc/internal/W0;-><init>(Lio/grpc/internal/s1;)V

    invoke-direct {v14, v6}, LX2/P0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v14, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v6, Lio/grpc/internal/B;

    invoke-direct {v6}, Lio/grpc/internal/B;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/s1;->w:Lio/grpc/internal/B;

    new-instance v6, Ljava/util/HashSet;

    const/16 v7, 0x10

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-direct {v6, v7, v8}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v6, v0, Lio/grpc/internal/s1;->E:Ljava/util/Set;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/s1;->G:Ljava/lang/Object;

    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v8}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v6, v0, Lio/grpc/internal/s1;->H:Ljava/util/Set;

    new-instance v6, Lio/grpc/internal/r1;

    invoke-direct {v6, v0}, Lio/grpc/internal/r1;-><init>(Lio/grpc/internal/s1;)V

    iput-object v6, v0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, v0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, v0, Lio/grpc/internal/s1;->O:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->d:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    iput-object v6, v0, Lio/grpc/internal/s1;->V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    sget-object v6, Lio/grpc/internal/s1;->o0:Lio/grpc/internal/C1;

    iput-object v6, v0, Lio/grpc/internal/s1;->W:Lio/grpc/internal/C1;

    iput-boolean v8, v0, Lio/grpc/internal/s1;->X:Z

    new-instance v6, Lio/grpc/internal/h2;

    invoke-direct {v6}, Lio/grpc/internal/h2;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/s1;->Z:Lio/grpc/internal/h2;

    new-instance v15, Lio/grpc/internal/b1;

    invoke-direct {v15, v0}, Lio/grpc/internal/b1;-><init>(Lio/grpc/internal/s1;)V

    iput-object v15, v0, Lio/grpc/internal/s1;->d0:Lio/grpc/internal/b1;

    new-instance v6, Lio/grpc/internal/e1;

    invoke-direct {v6, v0}, Lio/grpc/internal/e1;-><init>(Lio/grpc/internal/s1;)V

    iput-object v6, v0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    new-instance v6, Lio/grpc/internal/b1;

    invoke-direct {v6, v0}, Lio/grpc/internal/b1;-><init>(Lio/grpc/internal/s1;)V

    iput-object v6, v0, Lio/grpc/internal/s1;->h0:Lio/grpc/internal/b1;

    const-string v6, "target"

    iget-object v13, v1, Lio/grpc/internal/x1;->e:Ljava/lang/String;

    invoke-static {v13, v6}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v0, Lio/grpc/internal/s1;->e:Ljava/lang/String;

    new-instance v6, LX2/Q;

    sget-object v7, LX2/Q;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    const-string v9, "Channel"

    invoke-direct {v6, v9, v13, v7, v8}, LX2/Q;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v6, v0, Lio/grpc/internal/s1;->d:LX2/Q;

    iput-object v5, v0, Lio/grpc/internal/s1;->q:Lio/grpc/internal/K2;

    const-string v7, "executorPool"

    iget-object v8, v1, Lio/grpc/internal/x1;->a:Lio/grpc/internal/H2;

    invoke-static {v8, v7}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, v0, Lio/grpc/internal/s1;->m:Lio/grpc/internal/H2;

    invoke-virtual {v8}, Lio/grpc/internal/H2;->a()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "executor"

    invoke-static {v7, v8}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v7

    check-cast v12, Ljava/util/concurrent/Executor;

    iput-object v12, v0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Lio/grpc/internal/s1;->i:Lio/grpc/internal/y;

    new-instance v7, Lio/grpc/internal/j;

    iget-object v8, v1, Lio/grpc/internal/x1;->f:LX2/e;

    invoke-direct {v7, v2, v8, v12}, Lio/grpc/internal/j;-><init>(Lio/grpc/internal/y;LX2/e;Ljava/util/concurrent/Executor;)V

    iput-object v7, v0, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    new-instance v11, Lio/grpc/internal/p1;

    invoke-virtual {v7}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v11, v2}, Lio/grpc/internal/p1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v11, v0, Lio/grpc/internal/s1;->k:Lio/grpc/internal/p1;

    new-instance v2, Lio/grpc/internal/m;

    invoke-virtual {v5}, Lio/grpc/internal/J2;->a()J

    move-result-wide v7

    const-string v9, "Channel for \'"

    const-string v10, "\'"

    invoke-static {v9, v13, v10}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v6, v7, v8, v9}, Lio/grpc/internal/m;-><init>(LX2/Q;JLjava/lang/String;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->R:Lio/grpc/internal/m;

    new-instance v10, Lio/grpc/internal/l;

    invoke-direct {v10, v2, v5}, Lio/grpc/internal/l;-><init>(Lio/grpc/internal/m;Lio/grpc/internal/K2;)V

    iput-object v10, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    sget-object v8, Lio/grpc/internal/r0;->h:Lio/grpc/internal/S1;

    iget-boolean v2, v1, Lio/grpc/internal/x1;->o:Z

    iput-boolean v2, v0, Lio/grpc/internal/s1;->c0:Z

    new-instance v6, Lio/grpc/internal/f;

    iget-object v7, v1, Lio/grpc/internal/x1;->g:Ljava/lang/String;

    invoke-direct {v6, v7}, Lio/grpc/internal/f;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lio/grpc/internal/s1;->h:Lio/grpc/internal/f;

    new-instance v7, Lio/grpc/internal/U0;

    const-string v9, "offloadExecutorPool"

    move-object/from16 p2, v10

    iget-object v10, v1, Lio/grpc/internal/x1;->b:Lio/grpc/internal/H2;

    invoke-static {v10, v9}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v7, v10}, Lio/grpc/internal/U0;-><init>(Lio/grpc/internal/H2;)V

    iput-object v7, v0, Lio/grpc/internal/s1;->p:Lio/grpc/internal/U0;

    new-instance v10, Lio/grpc/internal/t2;

    iget v7, v1, Lio/grpc/internal/x1;->k:I

    iget v9, v1, Lio/grpc/internal/x1;->l:I

    invoke-direct {v10, v2, v7, v9, v6}, Lio/grpc/internal/t2;-><init>(ZIILio/grpc/internal/f;)V

    iget-object v2, v1, Lio/grpc/internal/x1;->x:Lio/grpc/internal/w1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/grpc/internal/X0;

    invoke-direct {v2, v0}, Lio/grpc/internal/X0;-><init>(Lio/grpc/internal/s1;)V

    new-instance v9, LX2/v0;

    const/16 v16, 0x0

    move-object v6, v9

    move-object/from16 v17, v5

    move-object v5, v9

    move-object v9, v14

    move-object/from16 v18, p2

    move-object v4, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v15

    move-object v15, v13

    move-object v13, v2

    invoke-direct/range {v6 .. v13}, LX2/v0;-><init>(Ljava/lang/Integer;LX2/F0;LX2/P0;LX2/x0;Ljava/util/concurrent/ScheduledExecutorService;LX2/i;Ljava/util/concurrent/Executor;)V

    iput-object v5, v0, Lio/grpc/internal/s1;->g:LX2/v0;

    iget-object v2, v1, Lio/grpc/internal/x1;->d:LX2/x0;

    iput-object v2, v0, Lio/grpc/internal/s1;->f:LX2/x0;

    invoke-static {v15, v2, v5}, Lio/grpc/internal/s1;->n(Ljava/lang/String;LX2/x0;LX2/v0;)LX2/A0;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/s1;->z:LX2/A0;

    iput-object v3, v0, Lio/grpc/internal/s1;->n:Lio/grpc/internal/H1;

    new-instance v2, Lio/grpc/internal/U0;

    invoke-direct {v2, v3}, Lio/grpc/internal/U0;-><init>(Lio/grpc/internal/H2;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->o:Lio/grpc/internal/U0;

    new-instance v2, Lio/grpc/internal/O;

    invoke-direct {v2, v4, v14}, Lio/grpc/internal/O;-><init>(Ljava/util/concurrent/Executor;LX2/P0;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lio/grpc/internal/O;->b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;

    move-object/from16 v2, p3

    iput-object v2, v0, Lio/grpc/internal/s1;->x:Lio/grpc/internal/f0;

    iget-boolean v2, v1, Lio/grpc/internal/x1;->q:Z

    iput-boolean v2, v0, Lio/grpc/internal/s1;->Y:Z

    new-instance v2, Lio/grpc/internal/o1;

    iget-object v3, v0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {v3}, LX2/A0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lio/grpc/internal/o1;-><init>(Lio/grpc/internal/s1;Ljava/lang/String;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    sget v3, LX2/o;->a:I

    move-object/from16 v3, p6

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX2/l;

    new-instance v5, LX2/n;

    invoke-direct {v5, v2, v4}, LX2/n;-><init>(LX2/h;LX2/l;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lio/grpc/internal/s1;->y:LX2/h;

    const-string v2, "stopwatchSupplier"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Lio/grpc/internal/s1;->u:LO2/q;

    iget-wide v2, v1, Lio/grpc/internal/x1;->j:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iput-wide v2, v0, Lio/grpc/internal/s1;->v:J

    goto :goto_1

    :cond_1
    sget-wide v4, Lio/grpc/internal/x1;->A:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const/16 v16, 0x1

    :cond_2
    move/from16 v4, v16

    const-string v5, "invalid idleTimeoutMillis %s"

    invoke-static {v4, v5, v2, v3}, LO2/m;->e(ZLjava/lang/String;J)V

    iput-wide v2, v0, Lio/grpc/internal/s1;->v:J

    :goto_1
    new-instance v2, Lio/grpc/internal/V1;

    new-instance v3, Lio/grpc/internal/T0;

    invoke-direct {v3, v0}, Lio/grpc/internal/T0;-><init>(Lio/grpc/internal/s1;)V

    iget-object v4, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    iget-object v5, v0, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v5}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    new-instance v6, LO2/o;

    invoke-direct {v6}, LO2/o;-><init>()V

    invoke-direct {v2, v3, v4, v5, v6}, Lio/grpc/internal/V1;-><init>(Lio/grpc/internal/T0;LX2/P0;Ljava/util/concurrent/ScheduledExecutorService;LO2/o;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->i0:Lio/grpc/internal/V1;

    iget-object v2, v1, Lio/grpc/internal/x1;->h:LX2/H;

    const-string v3, "decompressorRegistry"

    invoke-static {v2, v3}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->s:LX2/H;

    iget-object v2, v1, Lio/grpc/internal/x1;->i:LX2/y;

    const-string v3, "compressorRegistry"

    invoke-static {v2, v3}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->t:LX2/y;

    iget-wide v2, v1, Lio/grpc/internal/x1;->m:J

    iput-wide v2, v0, Lio/grpc/internal/s1;->b0:J

    iget-wide v2, v1, Lio/grpc/internal/x1;->n:J

    iput-wide v2, v0, Lio/grpc/internal/s1;->a0:J

    new-instance v2, Lio/grpc/internal/U0;

    invoke-direct {v2, v0}, Lio/grpc/internal/U0;-><init>(Lio/grpc/internal/s1;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->P:Lio/grpc/internal/U0;

    new-instance v2, Lio/grpc/internal/k;

    move-object/from16 v5, v17

    check-cast v5, Lio/grpc/internal/K2;

    invoke-direct {v2, v5}, Lio/grpc/internal/k;-><init>(Lio/grpc/internal/K2;)V

    iput-object v2, v0, Lio/grpc/internal/s1;->Q:Lio/grpc/internal/k;

    iget-object v1, v1, Lio/grpc/internal/x1;->p:LX2/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lio/grpc/internal/s1;->T:LX2/M;

    iget-object v1, v1, LX2/M;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v1, v0}, LX2/M;->a(Ljava/util/Map;LX2/P;)V

    iget-boolean v1, v0, Lio/grpc/internal/s1;->Y:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/grpc/internal/s1;->X:Z

    :cond_3
    return-void
.end method

.method public static j(Lio/grpc/internal/s1;)V
    .locals 6

    iget-boolean v0, p0, Lio/grpc/internal/s1;->L:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/grpc/internal/s1;->E:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/H0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/grpc/internal/y0;

    const/4 v3, 0x0

    sget-object v4, Lio/grpc/internal/s1;->l0:LX2/L0;

    invoke-direct {v2, v1, v4, v3}, Lio/grpc/internal/y0;-><init>(Lio/grpc/internal/H0;LX2/L0;I)V

    iget-object v3, v1, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v3, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lio/grpc/internal/y0;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5}, Lio/grpc/internal/y0;-><init>(Lio/grpc/internal/H0;LX2/L0;I)V

    invoke-virtual {v3, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/grpc/internal/s1;->H:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/I1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static k(Lio/grpc/internal/s1;)V
    .locals 3

    iget-boolean v0, p0, Lio/grpc/internal/s1;->N:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/s1;->E:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/s1;->H:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->T:LX2/M;

    iget-object v0, v0, LX2/M;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p0}, LX2/M;->b(Ljava/util/Map;LX2/P;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->m:Lio/grpc/internal/H2;

    iget-object v1, p0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lio/grpc/internal/H2;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->o:Lio/grpc/internal/U0;

    invoke-virtual {v0}, Lio/grpc/internal/U0;->a()V

    iget-object v0, p0, Lio/grpc/internal/s1;->p:Lio/grpc/internal/U0;

    invoke-virtual {v0}, Lio/grpc/internal/U0;->a()V

    iget-object v0, p0, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v0}, Lio/grpc/internal/j;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/s1;->N:Z

    iget-object p0, p0, Lio/grpc/internal/s1;->O:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Ljava/lang/String;LX2/x0;LX2/v0;)LX2/A0;
    .locals 7

    const-string v0, "/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p1, v3, p2}, LX2/x0;->c(Ljava/net/URI;LX2/v0;)LX2/A0;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lio/grpc/internal/s1;->k0:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, LX2/x0;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v4, v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, v3, p2}, LX2/x0;->c(Ljava/net/URI;LX2/v0;)LX2/A0;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const/4 p0, 0x1

    aput-object v4, p2, p0

    const-string p0, "cannot find a NameResolver for %s%s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/s1;->y:LX2/h;

    invoke-virtual {p0}, LX2/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()LX2/Q;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/s1;->d:LX2/Q;

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/s1;->y:LX2/h;

    invoke-virtual {p0, p1, p2}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic i()LX2/f0;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/s1;->p()V

    return-object p0
.end method

.method public final l(Z)V
    .locals 1

    iget-object p0, p0, Lio/grpc/internal/s1;->i0:Lio/grpc/internal/V1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/V1;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/internal/s1;->D:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    iget-object v0, v0, Lio/grpc/internal/t0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/internal/s1;->l(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/grpc/internal/s1;->o()V

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Exiting idle mode"

    iget-object v3, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    invoke-virtual {v3, v0, v2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    new-instance v0, Lio/grpc/internal/g1;

    invoke-direct {v0, p0}, Lio/grpc/internal/g1;-><init>(Lio/grpc/internal/s1;)V

    iget-object v2, p0, Lio/grpc/internal/s1;->h:Lio/grpc/internal/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/grpc/internal/b;

    invoke-direct {v3, v2, v0}, Lio/grpc/internal/b;-><init>(Lio/grpc/internal/f;Lio/grpc/internal/g1;)V

    iput-object v3, v0, Lio/grpc/internal/g1;->a:Lio/grpc/internal/b;

    iput-object v0, p0, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    new-instance v2, Lio/grpc/internal/i1;

    iget-object v3, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-direct {v2, p0, v0, v3}, Lio/grpc/internal/i1;-><init>(Lio/grpc/internal/s1;Lio/grpc/internal/g1;LX2/A0;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {v0, v2}, LX2/A0;->d(LX2/x0;)V

    iput-boolean v1, p0, Lio/grpc/internal/s1;->A:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 10

    iget-wide v0, p0, Lio/grpc/internal/s1;->v:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/grpc/internal/s1;->i0:Lio/grpc/internal/V1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/grpc/internal/V1;->d:LO2/o;

    iget-boolean v4, v3, LO2/o;->b:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v3, LO2/o;->a:LO2/s;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, LO2/l;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v3, v3, LO2/o;->c:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    invoke-virtual {v2, v7, v8, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v3, v0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lio/grpc/internal/V1;->f:Z

    iget-wide v8, p0, Lio/grpc/internal/V1;->e:J

    sub-long v8, v3, v8

    cmp-long v5, v8, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v5, :cond_4

    :cond_2
    iget-object v5, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_3
    new-instance v5, Lio/grpc/internal/U1;

    invoke-direct {v5, p0, v7, v6}, Lio/grpc/internal/U1;-><init>(Lio/grpc/internal/V1;II)V

    iget-object v6, p0, Lio/grpc/internal/V1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v5, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    iput-wide v3, p0, Lio/grpc/internal/V1;->e:J

    return-void
.end method

.method public final p()V
    .locals 5

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->d:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v1, "shutdown() called"

    iget-object v2, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    invoke-virtual {v2, v0, v1}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/grpc/internal/T0;

    invoke-direct {v0, p0, v2}, Lio/grpc/internal/T0;-><init>(Lio/grpc/internal/s1;I)V

    iget-object v2, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v2, v0}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    iget-object v3, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v3, v3, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v4, Lio/grpc/internal/k1;

    invoke-direct {v4, v0, v1}, Lio/grpc/internal/k1;-><init>(Lio/grpc/internal/o1;I)V

    invoke-virtual {v3, v4}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lio/grpc/internal/T0;

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/T0;-><init>(Lio/grpc/internal/s1;I)V

    invoke-virtual {v2, v0}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Z)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lio/grpc/internal/s1;->A:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v2, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v1, p0, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v2, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    :cond_1
    iget-object v1, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    iget-object v1, p0, Lio/grpc/internal/s1;->f0:LX2/O0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LX2/O0;->a()V

    iput-object v2, p0, Lio/grpc/internal/s1;->f0:LX2/O0;

    iput-object v2, p0, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    :cond_2
    iget-object v1, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {v1}, LX2/A0;->c()V

    iput-boolean v0, p0, Lio/grpc/internal/s1;->A:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/grpc/internal/s1;->e:Ljava/lang/String;

    iget-object v0, p0, Lio/grpc/internal/s1;->f:LX2/x0;

    iget-object v1, p0, Lio/grpc/internal/s1;->g:LX2/v0;

    invoke-static {p1, v0, v1}, Lio/grpc/internal/s1;->n(Ljava/lang/String;LX2/x0;LX2/v0;)LX2/A0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    :cond_4
    :goto_1
    iget-object p1, p0, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lio/grpc/internal/g1;->a:Lio/grpc/internal/b;

    iget-object v0, p1, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v0}, LX2/a0;->c()V

    iput-object v2, p1, Lio/grpc/internal/b;->b:LX2/a0;

    iput-object v2, p0, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    :cond_5
    iput-object v2, p0, Lio/grpc/internal/s1;->C:LX2/V;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/s1;->d:LX2/Q;

    iget-wide v1, v1, LX2/Q;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, LO2/i;->b(Ljava/lang/String;J)V

    const-string v1, "target"

    iget-object p0, p0, Lio/grpc/internal/s1;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
