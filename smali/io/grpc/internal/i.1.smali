.class public final Lio/grpc/internal/i;
.super Lio/grpc/internal/j0;
.source "SourceFile"


# instance fields
.field public final d:Lio/grpc/internal/z;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile f:LX2/L0;

.field public g:LX2/L0;

.field public h:LX2/L0;

.field public final i:Lio/grpc/internal/g;

.field public final synthetic j:Lio/grpc/internal/j;


# direct methods
.method public constructor <init>(Lio/grpc/internal/j;Lio/grpc/internal/z;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/internal/i;->j:Lio/grpc/internal/j;

    invoke-direct {p0}, Lio/grpc/internal/j0;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lio/grpc/internal/g;

    invoke-direct {p1, p0}, Lio/grpc/internal/g;-><init>(Lio/grpc/internal/i;)V

    iput-object p1, p0, Lio/grpc/internal/i;->i:Lio/grpc/internal/g;

    const-string p1, "delegate"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/i;->d:Lio/grpc/internal/z;

    const-string p0, "authority"

    invoke-static {p3, p0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Lio/grpc/internal/i;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/i;->g:LX2/L0;

    iget-object v1, p0, Lio/grpc/internal/i;->h:LX2/L0;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/i;->g:LX2/L0;

    iput-object v2, p0, Lio/grpc/internal/i;->h:LX2/L0;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-super {p0, v0}, Lio/grpc/internal/j0;->f(LX2/L0;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-super {p0, v1}, Lio/grpc/internal/j0;->d(LX2/L0;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lio/grpc/internal/z;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/i;->d:Lio/grpc/internal/z;

    return-object p0
.end method

.method public final c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 3

    iget-object v0, p3, LX2/g;->d:LX2/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/i;->j:Lio/grpc/internal/j;

    iget-object v0, v0, Lio/grpc/internal/j;->e:LX2/e;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/grpc/internal/i;->j:Lio/grpc/internal/j;

    iget-object v1, v1, Lio/grpc/internal/j;->e:LX2/e;

    if-eqz v1, :cond_1

    new-instance v2, LX2/w;

    invoke-direct {v2, v1, v0}, LX2/w;-><init>(LX2/e;LX2/e;)V

    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_c

    new-instance p1, Lio/grpc/internal/F1;

    iget-object p2, p0, Lio/grpc/internal/i;->d:Lio/grpc/internal/z;

    iget-object v1, p0, Lio/grpc/internal/i;->i:Lio/grpc/internal/g;

    invoke-direct {p1, p2, v1, p4}, Lio/grpc/internal/F1;-><init>(Lio/grpc/internal/z;Lio/grpc/internal/g;[LX2/r;)V

    iget-object p2, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p1, p0, Lio/grpc/internal/i;->i:Lio/grpc/internal/g;

    iget-object p1, p1, Lio/grpc/internal/g;->a:Lio/grpc/internal/i;

    iget-object p2, p1, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lio/grpc/internal/i;->g(Lio/grpc/internal/i;)V

    :cond_2
    new-instance p1, Lio/grpc/internal/h0;

    iget-object p0, p0, Lio/grpc/internal/i;->f:LX2/L0;

    invoke-direct {p1, p0, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;[LX2/r;)V

    return-object p1

    :cond_3
    new-instance p2, Lio/grpc/internal/h;

    invoke-direct {p2}, Lio/grpc/internal/h;-><init>()V

    :try_start_0
    iget-object p3, p3, LX2/g;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lio/grpc/internal/i;->j:Lio/grpc/internal/j;

    iget-object p0, p0, Lio/grpc/internal/j;->f:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    move-object p3, p0

    :goto_1
    invoke-virtual {v0, p2, p3, p1}, LX2/e;->a(Lio/grpc/internal/h;Ljava/util/concurrent/Executor;LX2/d;)V

    goto/16 :goto_4

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p2, "Both parameters are null"

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p2, LX2/L0;->j:LX2/L0;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    invoke-virtual {p2, p3}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p2

    invoke-virtual {p2, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const-string p4, "Cannot fail with OK status"

    invoke-static {p4, p2}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget-boolean p2, p1, Lio/grpc/internal/F1;->f:Z

    xor-int/2addr p2, p3

    const-string p4, "apply() or fail() already called"

    invoke-static {p4, p2}, LO2/m;->k(Ljava/lang/Object;Z)V

    new-instance p2, Lio/grpc/internal/h0;

    iget-object p4, p1, Lio/grpc/internal/F1;->c:[LX2/r;

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p2, p0, v0, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    iget-boolean p0, p1, Lio/grpc/internal/F1;->f:Z

    xor-int/2addr p0, p3

    const-string p4, "already finalized"

    invoke-static {p4, p0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iput-boolean p3, p1, Lio/grpc/internal/F1;->f:Z

    iget-object v0, p1, Lio/grpc/internal/F1;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p1, Lio/grpc/internal/F1;->e:Lio/grpc/internal/u;

    const/4 p4, 0x0

    if-nez p0, :cond_6

    iput-object p2, p1, Lio/grpc/internal/F1;->e:Lio/grpc/internal/u;

    move p0, p3

    goto :goto_2

    :cond_6
    move p0, p4

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_7

    iget-object p0, p1, Lio/grpc/internal/F1;->b:Lio/grpc/internal/g;

    iget-object p0, p0, Lio/grpc/internal/g;->a:Lio/grpc/internal/i;

    iget-object p2, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p0}, Lio/grpc/internal/i;->g(Lio/grpc/internal/i;)V

    goto :goto_4

    :cond_7
    iget-object p0, p1, Lio/grpc/internal/F1;->g:Lio/grpc/internal/W;

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    move p3, p4

    :goto_3
    const-string p0, "delayedStream is null"

    invoke-static {p0, p3}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object p0, p1, Lio/grpc/internal/F1;->g:Lio/grpc/internal/W;

    invoke-virtual {p0, p2}, Lio/grpc/internal/W;->t(Lio/grpc/internal/u;)Lio/grpc/internal/Q;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lio/grpc/internal/Q;->run()V

    :cond_9
    iget-object p0, p1, Lio/grpc/internal/F1;->b:Lio/grpc/internal/g;

    iget-object p0, p0, Lio/grpc/internal/g;->a:Lio/grpc/internal/i;

    iget-object p2, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p0}, Lio/grpc/internal/i;->g(Lio/grpc/internal/i;)V

    :cond_a
    :goto_4
    iget-object p0, p1, Lio/grpc/internal/F1;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    iget-object p2, p1, Lio/grpc/internal/F1;->e:Lio/grpc/internal/u;

    if-nez p2, :cond_b

    new-instance p2, Lio/grpc/internal/W;

    invoke-direct {p2}, Lio/grpc/internal/W;-><init>()V

    iput-object p2, p1, Lio/grpc/internal/F1;->g:Lio/grpc/internal/W;

    iput-object p2, p1, Lio/grpc/internal/F1;->e:Lio/grpc/internal/u;

    monitor-exit p0

    goto :goto_5

    :cond_b
    monitor-exit p0

    :goto_5
    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_c
    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_d

    new-instance p1, Lio/grpc/internal/h0;

    iget-object p0, p0, Lio/grpc/internal/i;->f:LX2/L0;

    invoke-direct {p1, p0, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;[LX2/r;)V

    return-object p1

    :cond_d
    iget-object p0, p0, Lio/grpc/internal/i;->d:Lio/grpc/internal/z;

    invoke-interface {p0, p1, p2, p3, p4}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object p0

    return-object p0
.end method

.method public final d(LX2/L0;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lio/grpc/internal/i;->f:LX2/L0;

    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/i;->h:LX2/L0;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lio/grpc/internal/i;->h:LX2/L0;

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lio/grpc/internal/j0;->d(LX2/L0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(LX2/L0;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    iput-object p1, p0, Lio/grpc/internal/i;->f:LX2/L0;

    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lio/grpc/internal/i;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/grpc/internal/i;->g:LX2/L0;

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lio/grpc/internal/j0;->f(LX2/L0;)V

    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
