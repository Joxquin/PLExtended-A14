.class public final Lio/grpc/internal/t;
.super LX2/k;
.source "SourceFile"


# static fields
.field public static final t:Ljava/util/logging/Logger;

.field public static final u:[B


# instance fields
.field public final a:LX2/u0;

.field public final b:Lc3/d;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:Lio/grpc/internal/k;

.field public final f:LX2/C;

.field public volatile g:Ljava/util/concurrent/ScheduledFuture;

.field public final h:Z

.field public i:LX2/g;

.field public j:Lio/grpc/internal/u;

.field public volatile k:Z

.field public l:Z

.field public m:Z

.field public final n:Lio/grpc/internal/b1;

.field public final o:Lio/grpc/internal/r;

.field public final p:Ljava/util/concurrent/ScheduledExecutorService;

.field public q:Z

.field public r:LX2/H;

.field public s:LX2/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/internal/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/t;->t:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/internal/t;->u:[B

    return-void
.end method

.method public constructor <init>(LX2/u0;Ljava/util/concurrent/Executor;LX2/g;Lio/grpc/internal/b1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k;)V
    .locals 3

    invoke-direct {p0}, LX2/k;-><init>()V

    new-instance v0, Lio/grpc/internal/r;

    invoke-direct {v0, p0}, Lio/grpc/internal/r;-><init>(Lio/grpc/internal/t;)V

    iput-object v0, p0, Lio/grpc/internal/t;->o:Lio/grpc/internal/r;

    sget-object v0, LX2/H;->d:LX2/H;

    iput-object v0, p0, Lio/grpc/internal/t;->r:LX2/H;

    sget-object v0, LX2/y;->b:LX2/y;

    iput-object v0, p0, Lio/grpc/internal/t;->s:LX2/y;

    iput-object p1, p0, Lio/grpc/internal/t;->a:LX2/u0;

    iget-object v0, p1, LX2/u0;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    sget-object v0, Lc3/c;->a:Lc3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lc3/a;->a:Lc3/d;

    iput-object v0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lio/grpc/internal/u2;

    invoke-direct {p2}, Lio/grpc/internal/u2;-><init>()V

    iput-object p2, p0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lio/grpc/internal/t;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/y2;

    invoke-direct {v0, p2}, Lio/grpc/internal/y2;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lio/grpc/internal/t;->d:Z

    :goto_0
    iput-object p6, p0, Lio/grpc/internal/t;->e:Lio/grpc/internal/k;

    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/internal/t;->f:LX2/C;

    sget-object p2, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iget-object p1, p1, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    if-eq p1, p2, :cond_2

    sget-object p2, Lio/grpc/MethodDescriptor$MethodType;->f:Lio/grpc/MethodDescriptor$MethodType;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lio/grpc/internal/t;->h:Z

    iput-object p3, p0, Lio/grpc/internal/t;->i:LX2/g;

    iput-object p4, p0, Lio/grpc/internal/t;->n:Lio/grpc/internal/b1;

    iput-object p5, p0, Lio/grpc/internal/t;->p:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/t;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/t;->l:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/t;->m:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lio/grpc/internal/t;->m:Z

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final c(I)V
    .locals 4

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Not started"

    invoke-static {v3, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Number requested must be non-negative"

    invoke-static {v0, v1}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/internal/t;->h(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final e(LX2/j;LX2/r0;)V
    .locals 0

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/t;->i(LX2/j;LX2/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Cancelling without a message or cause is suboptimal"

    sget-object v2, Lio/grpc/internal/t;->t:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/t;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/t;->l:Z

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    if-eqz v0, :cond_4

    sget-object v0, LX2/L0;->f:LX2/L0;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p2, p1}, Lio/grpc/internal/u;->g(LX2/L0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p0}, Lio/grpc/internal/t;->g()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/grpc/internal/t;->g()V

    throw p1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lio/grpc/internal/t;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/t;->l:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/t;->m:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    instance-of v1, v0, Lio/grpc/internal/r2;

    if-eqz v1, :cond_1

    check-cast v0, Lio/grpc/internal/r2;

    invoke-virtual {v0, p1}, Lio/grpc/internal/r2;->A(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/grpc/internal/t;->a:LX2/u0;

    iget-object v1, v1, LX2/u0;->d:LX2/t0;

    invoke-interface {v1, p1}, LX2/t0;->a(Ljava/lang/Object;)LZ2/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/internal/u;->i(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean p1, p0, Lio/grpc/internal/t;->h:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->flush()V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    sget-object v0, LX2/L0;->f:LX2/L0;

    const-string v1, "Client sendMessage() failed with Error"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    throw p1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    sget-object v0, LX2/L0;->f:LX2/L0;

    invoke-virtual {v0, p1}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p1

    const-string v0, "Failed to stream message"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/grpc/internal/u;->g(LX2/L0;)V

    return-void
.end method

.method public final i(LX2/j;LX2/r0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v6, "Already started"

    invoke-static {v6, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v2, v0, Lio/grpc/internal/t;->l:Z

    xor-int/2addr v2, v3

    const-string v6, "call was cancelled"

    invoke-static {v6, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    const-string v2, "observer"

    invoke-static {v1, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "headers"

    invoke-static {v5, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    sget-object v6, Lio/grpc/internal/A1;->g:LX2/f;

    invoke-virtual {v2, v6}, LX2/g;->a(LX2/f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/A1;

    const-wide/16 v7, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v9, v2, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v12, LX2/E;->g:LX2/D;

    if-eqz v11, :cond_6

    new-instance v12, LX2/E;

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    invoke-direct {v12, v9, v10}, LX2/E;-><init>(J)V

    iget-object v9, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v10, v9, LX2/g;->a:LX2/E;

    if-eqz v10, :cond_5

    iget-object v11, v12, LX2/E;->d:LX2/D;

    iget-object v13, v10, LX2/E;->d:LX2/D;

    if-ne v11, v13, :cond_4

    iget-wide v13, v12, LX2/E;->e:J

    iget-wide v10, v10, LX2/E;->e:J

    sub-long/2addr v13, v10

    cmp-long v10, v13, v7

    if-gez v10, :cond_2

    const/4 v10, -0x1

    goto :goto_1

    :cond_2
    if-lez v10, :cond_3

    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    if-gez v10, :cond_7

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tickers ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, LX2/E;->d:LX2/D;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, LX2/E;->d:LX2/D;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, LX2/g;

    invoke-direct {v10, v9}, LX2/g;-><init>(LX2/g;)V

    iput-object v12, v10, LX2/g;->a:LX2/E;

    iput-object v10, v0, Lio/grpc/internal/t;->i:LX2/g;

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "units"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v9, v2, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lio/grpc/internal/t;->i:LX2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, LX2/g;

    invoke-direct {v10, v9}, LX2/g;-><init>(LX2/g;)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v10, LX2/g;->h:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    iget-object v9, v0, Lio/grpc/internal/t;->i:LX2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, LX2/g;

    invoke-direct {v10, v9}, LX2/g;-><init>(LX2/g;)V

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v10, LX2/g;->h:Ljava/lang/Boolean;

    :goto_4
    iput-object v10, v0, Lio/grpc/internal/t;->i:LX2/g;

    :cond_9
    iget-object v9, v2, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    const-string v10, "invalid maxsize %s"

    if-eqz v9, :cond_d

    iget-object v11, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v12, v11, LX2/g;->i:Ljava/lang/Integer;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ltz v9, :cond_a

    move v12, v3

    goto :goto_5

    :cond_a
    move v12, v4

    :goto_5
    invoke-static {v10, v9, v12}, LO2/m;->c(Ljava/lang/String;IZ)V

    new-instance v12, LX2/g;

    invoke-direct {v12, v11}, LX2/g;-><init>(LX2/g;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v12, LX2/g;->i:Ljava/lang/Integer;

    iput-object v12, v0, Lio/grpc/internal/t;->i:LX2/g;

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_c

    move v12, v3

    goto :goto_6

    :cond_c
    move v12, v4

    :goto_6
    invoke-static {v10, v9, v12}, LO2/m;->c(Ljava/lang/String;IZ)V

    new-instance v12, LX2/g;

    invoke-direct {v12, v11}, LX2/g;-><init>(LX2/g;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v12, LX2/g;->i:Ljava/lang/Integer;

    iput-object v12, v0, Lio/grpc/internal/t;->i:LX2/g;

    :cond_d
    :goto_7
    iget-object v2, v2, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    iget-object v9, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v11, v9, LX2/g;->j:Ljava/lang/Integer;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v2, :cond_e

    move v11, v3

    goto :goto_8

    :cond_e
    move v11, v4

    :goto_8
    invoke-static {v10, v2, v11}, LO2/m;->c(Ljava/lang/String;IZ)V

    new-instance v10, LX2/g;

    invoke-direct {v10, v9}, LX2/g;-><init>(LX2/g;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v10, LX2/g;->j:Ljava/lang/Integer;

    iput-object v10, v0, Lio/grpc/internal/t;->i:LX2/g;

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_10

    move v11, v3

    goto :goto_9

    :cond_10
    move v11, v4

    :goto_9
    invoke-static {v10, v2, v11}, LO2/m;->c(Ljava/lang/String;IZ)V

    new-instance v10, LX2/g;

    invoke-direct {v10, v9}, LX2/g;-><init>(LX2/g;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v10, LX2/g;->j:Ljava/lang/Integer;

    iput-object v10, v0, Lio/grpc/internal/t;->i:LX2/g;

    :cond_11
    :goto_a
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->e:Ljava/lang/String;

    sget-object v9, LX2/t;->a:LX2/t;

    if-eqz v2, :cond_13

    iget-object v10, v0, Lio/grpc/internal/t;->s:LX2/y;

    iget-object v10, v10, LX2/y;->a:Ljava/util/concurrent/ConcurrentMap;

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LX2/x;

    if-nez v10, :cond_12

    sget-object v3, Lio/grpc/internal/G1;->a:Lio/grpc/internal/G1;

    iput-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    iget-object v3, v0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/internal/o;

    invoke-direct {v4, v0, v1, v2}, Lio/grpc/internal/o;-><init>(Lio/grpc/internal/t;LX2/j;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    move-object v11, v10

    goto :goto_b

    :cond_13
    move-object v11, v9

    :goto_b
    iget-object v2, v0, Lio/grpc/internal/t;->r:LX2/H;

    iget-boolean v10, v0, Lio/grpc/internal/t;->q:Z

    sget-object v12, Lio/grpc/internal/r0;->g:LX2/i0;

    invoke-virtual {v5, v12}, LX2/r0;->a(LX2/n0;)V

    sget-object v12, Lio/grpc/internal/r0;->c:LX2/i0;

    invoke-virtual {v5, v12}, LX2/r0;->a(LX2/n0;)V

    if-eq v11, v9, :cond_14

    invoke-interface {v11}, LX2/x;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v12, v9}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    :cond_14
    sget-object v9, Lio/grpc/internal/r0;->d:LX2/p0;

    invoke-virtual {v5, v9}, LX2/r0;->a(LX2/n0;)V

    iget-object v2, v2, LX2/H;->b:[B

    array-length v12, v2

    if-eqz v12, :cond_15

    invoke-virtual {v5, v9, v2}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    :cond_15
    sget-object v2, Lio/grpc/internal/r0;->e:LX2/i0;

    invoke-virtual {v5, v2}, LX2/r0;->a(LX2/n0;)V

    sget-object v2, Lio/grpc/internal/r0;->f:LX2/p0;

    invoke-virtual {v5, v2}, LX2/r0;->a(LX2/n0;)V

    if-eqz v10, :cond_16

    sget-object v9, Lio/grpc/internal/t;->u:[B

    invoke-virtual {v5, v2, v9}, LX2/r0;->d(LX2/n0;Ljava/lang/Object;)V

    :cond_16
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->a:LX2/E;

    iget-object v9, v0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    if-nez v2, :cond_17

    move-object v13, v12

    goto :goto_c

    :cond_17
    move-object v13, v2

    :goto_c
    if-eqz v13, :cond_18

    invoke-virtual {v13}, LX2/E;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_d

    :cond_18
    move v3, v4

    :goto_d
    if-nez v3, :cond_22

    iget-object v2, v0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->a:LX2/E;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v9, Lio/grpc/internal/t;->t:Ljava/util/logging/Logger;

    invoke-virtual {v9, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v13, :cond_1b

    invoke-virtual {v13, v12}, LX2/E;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_f

    :cond_19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v3}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Call timeout set to \'%d\' ns, due to context deadline."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1a

    const-string v2, " Explicit call timeout was not set."

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1a
    invoke-virtual {v2, v3}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " Explicit call timeout was \'%d\' ns."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1b
    :goto_f
    iget-object v3, v0, Lio/grpc/internal/t;->n:Lio/grpc/internal/b1;

    iget-object v7, v0, Lio/grpc/internal/t;->a:LX2/u0;

    iget-object v8, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v10, v0, Lio/grpc/internal/t;->f:LX2/C;

    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-boolean v9, v2, Lio/grpc/internal/s1;->c0:Z

    if-nez v9, :cond_1f

    const-string v2, "method"

    invoke-static {v7, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "callOptions"

    invoke-static {v8, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->C:LX2/V;

    iget-object v6, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v6, v6, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    goto :goto_10

    :cond_1c
    if-nez v2, :cond_1d

    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v6, Lio/grpc/internal/Z0;

    invoke-direct {v6, v4, v3}, Lio/grpc/internal/Z0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    goto :goto_10

    :cond_1d
    invoke-virtual {v2}, LX2/V;->e()LX2/W;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v9, v8, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v2, v6}, Lio/grpc/internal/r0;->c(LX2/W;Z)Lio/grpc/internal/w;

    move-result-object v2

    if-eqz v2, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v2, v3, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    :goto_10
    invoke-virtual {v10}, LX2/C;->a()LX2/C;

    move-result-object v3

    invoke-static {v8, v5, v4, v4}, Lio/grpc/internal/r0;->a(LX2/g;LX2/r0;IZ)[LX2/r;

    move-result-object v4

    :try_start_0
    invoke-interface {v2, v7, v5, v8, v4}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10, v3}, LX2/C;->c(LX2/C;)V

    goto :goto_13

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v10, v3}, LX2/C;->c(LX2/C;)V

    throw v1

    :cond_1f
    iget-object v2, v2, Lio/grpc/internal/s1;->W:Lio/grpc/internal/C1;

    iget-object v9, v2, Lio/grpc/internal/C1;->d:Lio/grpc/internal/q2;

    invoke-virtual {v8, v6}, LX2/g;->a(LX2/f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/A1;

    if-nez v2, :cond_20

    move-object v14, v12

    goto :goto_11

    :cond_20
    iget-object v4, v2, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    move-object v14, v4

    :goto_11
    if-nez v2, :cond_21

    move-object v15, v12

    goto :goto_12

    :cond_21
    iget-object v2, v2, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    move-object v15, v2

    :goto_12
    new-instance v16, Lio/grpc/internal/a1;

    move-object/from16 v2, v16

    move-object v4, v7

    move-object/from16 v5, p2

    move-object v6, v8

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/a1;-><init>(Lio/grpc/internal/b1;LX2/u0;LX2/r0;LX2/g;Lio/grpc/internal/s2;Lio/grpc/internal/s0;Lio/grpc/internal/q2;LX2/C;)V

    :goto_13
    iput-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    goto :goto_14

    :cond_22
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    invoke-static {v2, v5, v4, v4}, Lio/grpc/internal/r0;->a(LX2/g;LX2/r0;IZ)[LX2/r;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/h0;

    sget-object v4, LX2/L0;->h:LX2/L0;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClientCall started after deadline exceeded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v4

    sget-object v5, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v3, v4, v5, v2}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    iput-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    :goto_14
    iget-boolean v2, v0, Lio/grpc/internal/t;->d:Z

    if-eqz v2, :cond_23

    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v2}, Lio/grpc/internal/u;->l()V

    :cond_23
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v3, v2}, Lio/grpc/internal/u;->j(Ljava/lang/String;)V

    :cond_24
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lio/grpc/internal/u;->b(I)V

    :cond_25
    iget-object v2, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v2, v2, LX2/g;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    iget-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lio/grpc/internal/u;->h(I)V

    :cond_26
    if-eqz v13, :cond_27

    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v2, v13}, Lio/grpc/internal/u;->d(LX2/E;)V

    :cond_27
    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v2, v11}, Lio/grpc/internal/u;->o(LX2/x;)V

    iget-boolean v2, v0, Lio/grpc/internal/t;->q:Z

    if-eqz v2, :cond_28

    iget-object v3, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v3, v2}, Lio/grpc/internal/u;->n(Z)V

    :cond_28
    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    iget-object v3, v0, Lio/grpc/internal/t;->r:LX2/H;

    invoke-interface {v2, v3}, Lio/grpc/internal/u;->f(LX2/H;)V

    iget-object v2, v0, Lio/grpc/internal/t;->e:Lio/grpc/internal/k;

    iget-object v3, v2, Lio/grpc/internal/k;->b:Lio/grpc/internal/Q0;

    invoke-interface {v3}, Lio/grpc/internal/Q0;->a()V

    iget-object v2, v2, Lio/grpc/internal/k;->a:Lio/grpc/internal/K2;

    invoke-interface {v2}, Lio/grpc/internal/K2;->a()J

    iget-object v2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    new-instance v3, Lio/grpc/internal/q;

    invoke-direct {v3, v0, v1}, Lio/grpc/internal/q;-><init>(Lio/grpc/internal/t;LX2/j;)V

    invoke-interface {v2, v3}, Lio/grpc/internal/u;->c(Lio/grpc/internal/v;)V

    iget-object v1, v0, Lio/grpc/internal/t;->f:LX2/C;

    iget-object v2, v0, Lio/grpc/internal/t;->o:Lio/grpc/internal/r;

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_2b

    sget-object v1, LX2/C;->a:Ljava/util/logging/Logger;

    if-eqz v13, :cond_29

    iget-object v1, v0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v12}, LX2/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v0, Lio/grpc/internal/t;->p:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_29

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v1}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    new-instance v4, Lio/grpc/internal/P0;

    new-instance v5, Lio/grpc/internal/s;

    invoke-direct {v5, v0, v2, v3}, Lio/grpc/internal/s;-><init>(Lio/grpc/internal/t;J)V

    invoke-direct {v4, v5}, Lio/grpc/internal/P0;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, v0, Lio/grpc/internal/t;->p:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5, v4, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/t;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_29
    iget-boolean v1, v0, Lio/grpc/internal/t;->k:Z

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lio/grpc/internal/t;->g()V

    :cond_2a
    return-void

    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cancellationListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "method"

    iget-object p0, p0, Lio/grpc/internal/t;->a:LX2/u0;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
