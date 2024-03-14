.class public abstract Lkotlinx/coroutines/Q;
.super Lkotlinx/coroutines/N;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/G;


# instance fields
.field public final i:Lt3/f;

.field public final j:Lt3/f;

.field public final k:Lt3/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/N;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->a(Z)Lt3/b;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/Q;->k:Lt3/b;

    return-void
.end method

.method public static final H(Lkotlinx/coroutines/E;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/Q;->k:Lt3/b;

    iget p0, p0, Lt3/b;->b:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/Q;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/Q;->J(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/Q;->K()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/coroutines/E;->l:Lkotlinx/coroutines/E;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/E;->I(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J(Ljava/lang/Runnable;)Z
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    :cond_0
    :goto_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/Q;->k:Lt3/b;

    iget v2, v2, Lt3/b;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    return v4

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_3
    instance-of v2, v1, Lkotlinx/coroutines/internal/s;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v1, 0x2

    if-eq v5, v1, :cond_4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    iget-object v3, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return v3

    :cond_7
    sget-object v2, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_8

    return v4

    :cond_8
    new-instance v2, Lkotlinx/coroutines/internal/s;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/internal/s;-><init>(IZ)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)I

    iget-object v4, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-virtual {v4, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method public abstract K()Ljava/lang/Thread;
.end method

.method public final L()Z
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/N;->h:Lkotlin/collections/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/j;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/P;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, p0, Lkotlinx/coroutines/internal/s;

    if-eqz v0, :cond_5

    check-cast p0, Lkotlinx/coroutines/internal/s;

    iget-object p0, p0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    iget-wide v3, p0, Lt3/e;->b:J

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    shr-long/2addr v5, v2

    long-to-int p0, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v3, v5

    const/16 v0, 0x1e

    shr-long/2addr v3, v0

    long-to-int v0, v3

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_5
    sget-object v0, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public final M()J
    .locals 12

    invoke-virtual {p0}, Lkotlinx/coroutines/N;->G()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/P;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-object v6, v0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v6, v6, Lt3/d;->b:I

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-nez v6, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v8, v0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    if-eqz v8, :cond_3

    aget-object v8, v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    move-object v8, v4

    :goto_1
    if-nez v8, :cond_4

    monitor-exit v0

    move-object v8, v4

    goto :goto_5

    :cond_4
    :try_start_1
    check-cast v8, Lkotlinx/coroutines/O;

    iget-wide v9, v8, Lkotlinx/coroutines/O;->d:J

    sub-long v9, v6, v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_5

    move v9, v3

    goto :goto_2

    :cond_5
    move v9, v5

    :goto_2
    if-eqz v9, :cond_6

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/Q;->J(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_3

    :cond_6
    move v8, v5

    :goto_3
    if-eqz v8, :cond_7

    invoke-virtual {v0, v5}, Lkotlinx/coroutines/internal/I;->b(I)Lkotlinx/coroutines/internal/J;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    move-object v8, v4

    :goto_4
    monitor-exit v0

    :goto_5
    check-cast v8, Lkotlinx/coroutines/O;

    if-nez v8, :cond_2

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8
    :goto_6
    iget-object v0, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    :cond_9
    :goto_7
    iget-object v6, v0, Lt3/f;->b:Ljava/lang/Object;

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    instance-of v7, v6, Lkotlinx/coroutines/internal/s;

    if-eqz v7, :cond_c

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/s;->d()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkotlinx/coroutines/internal/s;->g:Lkotlinx/coroutines/internal/E;

    if-eq v8, v9, :cond_b

    check-cast v8, Ljava/lang/Runnable;

    goto :goto_9

    :cond_b
    iget-object v8, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    sget-object v7, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    if-ne v6, v7, :cond_d

    :goto_8
    move-object v8, v4

    goto :goto_9

    :cond_d
    iget-object v7, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-virtual {v7, v6, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v8, v6

    check-cast v8, Ljava/lang/Runnable;

    :goto_9
    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_e
    iget-object v0, p0, Lkotlinx/coroutines/N;->h:Lkotlin/collections/j;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Lkotlin/collections/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_a
    move-wide v8, v6

    goto :goto_b

    :cond_10
    move-wide v8, v1

    :goto_b
    cmp-long v0, v8, v1

    if-nez v0, :cond_11

    goto :goto_e

    :cond_11
    iget-object v0, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_14

    instance-of v8, v0, Lkotlinx/coroutines/internal/s;

    if-eqz v8, :cond_13

    check-cast v0, Lkotlinx/coroutines/internal/s;

    iget-object v0, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    iget-wide v8, v0, Lt3/e;->b:J

    const-wide/32 v10, 0x3fffffff

    and-long/2addr v10, v8

    shr-long/2addr v10, v5

    long-to-int v0, v10

    const-wide v10, 0xfffffffc0000000L

    and-long/2addr v8, v10

    const/16 v10, 0x1e

    shr-long/2addr v8, v10

    long-to-int v8, v8

    if-ne v0, v8, :cond_12

    goto :goto_c

    :cond_12
    move v3, v5

    :goto_c
    if-nez v3, :cond_14

    goto :goto_e

    :cond_13
    sget-object p0, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    if-ne v0, p0, :cond_19

    goto :goto_d

    :cond_14
    iget-object p0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/P;

    if-eqz p0, :cond_18

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    if-eqz v0, :cond_15

    aget-object v4, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_15
    monitor-exit p0

    check-cast v4, Lkotlinx/coroutines/O;

    if-nez v4, :cond_16

    goto :goto_d

    :cond_16
    iget-wide v3, v4, Lkotlinx/coroutines/O;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_17

    goto :goto_e

    :cond_17
    move-wide v1, v3

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :goto_d
    move-wide v1, v6

    :cond_19
    :goto_e
    return-wide v1
.end method

.method public N(JLkotlinx/coroutines/O;)V
    .locals 5

    sget-object p0, Lkotlinx/coroutines/E;->l:Lkotlinx/coroutines/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlinx/coroutines/Q;->k:Lt3/b;

    iget v0, v0, Lt3/b;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/P;

    if-nez v0, :cond_2

    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    new-instance v4, Lkotlinx/coroutines/P;

    invoke-direct {v4, p1, p2}, Lkotlinx/coroutines/P;-><init>(J)V

    invoke-virtual {v0, v3, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/P;

    :cond_2
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/O;->g(JLkotlinx/coroutines/P;Lkotlinx/coroutines/E;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_3

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object p1, p1, Lt3/f;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/P;

    if-eqz p1, :cond_7

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    if-eqz p2, :cond_6

    aget-object v3, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p1

    check-cast v3, Lkotlinx/coroutines/O;

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_7
    :goto_2
    if-ne v3, p3, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lkotlinx/coroutines/E;->K()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_9

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public shutdown()V
    .locals 6

    sget-object v0, Lkotlinx/coroutines/s0;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/coroutines/Q;->k:Lt3/b;

    invoke-virtual {v0}, Lt3/b;->b()V

    iget-object v0, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    :cond_0
    iget-object v2, v0, Lt3/f;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    sget-object v3, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v2, v1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lkotlinx/coroutines/internal/s;

    if-eqz v3, :cond_2

    check-cast v2, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->b()Z

    goto :goto_0

    :cond_2
    sget-object v3, Lkotlinx/coroutines/S;->b:Lkotlinx/coroutines/internal/E;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lkotlinx/coroutines/internal/s;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/internal/s;-><init>(IZ)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)I

    iget-object v4, p0, Lkotlinx/coroutines/Q;->i:Lt3/f;

    invoke-virtual {v4, v2, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/Q;->M()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/Q;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/P;

    if-eqz v0, :cond_7

    monitor-enter v0

    :try_start_0
    iget-object v4, v0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v4, v4, Lt3/d;->b:I

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/internal/I;->b(I)Lkotlinx/coroutines/internal/J;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    monitor-exit v0

    check-cast v4, Lkotlinx/coroutines/O;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v3, v4}, Lkotlinx/coroutines/Q;->N(JLkotlinx/coroutines/O;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method
