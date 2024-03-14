.class public final Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final n:Lkotlinx/coroutines/internal/E;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Lv3/e;

.field public final i:Lv3/e;

.field public final j:Lt3/e;

.field public final k:Lkotlinx/coroutines/internal/z;

.field public final l:Lt3/e;

.field public final m:Lt3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 3

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/b;->d:I

    iput p2, p0, Lv3/b;->e:I

    iput-wide p3, p0, Lv3/b;->f:J

    iput-object p5, p0, Lv3/b;->g:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    if-eqz v1, :cond_7

    if-lt p2, p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    const-string v2, "Max pool size "

    if-eqz v1, :cond_6

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, p5

    :goto_2
    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, p5

    :goto_3
    if-eqz v0, :cond_4

    new-instance p2, Lv3/e;

    invoke-direct {p2}, Lv3/e;-><init>()V

    iput-object p2, p0, Lv3/b;->h:Lv3/e;

    new-instance p2, Lv3/e;

    invoke-direct {p2}, Lv3/e;-><init>()V

    iput-object p2, p0, Lv3/b;->i:Lv3/e;

    invoke-static {v1, v2}, Lt3/c;->c(J)Lt3/e;

    move-result-object p2

    iput-object p2, p0, Lv3/b;->j:Lt3/e;

    new-instance p2, Lkotlinx/coroutines/internal/z;

    add-int/lit8 p3, p1, 0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/z;-><init>(I)V

    iput-object p2, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    invoke-static {p1, p2}, Lt3/c;->c(J)Lt3/e;

    move-result-object p1

    iput-object p1, p0, Lv3/b;->l:Lt3/e;

    invoke-static {p5}, Lt3/c;->a(Z)Lt3/b;

    move-result-object p1

    iput-object p1, p0, Lv3/b;->m:Lt3/b;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Idle worker keep alive time "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " must be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p0, " should be greater than or equals to core pool size "

    invoke-static {v2, p2, p0, p1}, Lcom/android/launcher3/util/l;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Core pool size "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 12

    iget-object v0, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv3/b;->m:Lt3/b;

    iget v1, v1, Lt3/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lv3/b;->l:Lt3/e;

    iget-wide v4, v1, Lt3/e;->b:J

    const-wide/32 v6, 0x1fffff

    and-long v8, v4, v6

    long-to-int v1, v8

    const-wide v8, 0x3ffffe00000L

    and-long/2addr v4, v8

    const/16 v8, 0x15

    shr-long/2addr v4, v8

    long-to-int v4, v4

    sub-int v4, v1, v4

    if-gez v4, :cond_2

    move v4, v3

    :cond_2
    iget v5, p0, Lv3/b;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v5, :cond_3

    monitor-exit v0

    return v3

    :cond_3
    :try_start_2
    iget v5, p0, Lv3/b;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v1, v5, :cond_4

    monitor-exit v0

    return v3

    :cond_4
    :try_start_3
    iget-object v1, p0, Lv3/b;->l:Lt3/e;

    iget-wide v8, v1, Lt3/e;->b:J

    and-long/2addr v8, v6

    long-to-int v1, v8

    add-int/2addr v1, v2

    if-lez v1, :cond_5

    iget-object v5, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    if-eqz v5, :cond_9

    new-instance v5, Lv3/a;

    invoke-direct {v5, p0, v1}, Lv3/a;-><init>(Lv3/b;I)V

    iget-object v8, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v8, v1, v5}, Lkotlinx/coroutines/internal/z;->c(ILv3/a;)V

    iget-object p0, p0, Lv3/b;->l:Lt3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lt3/e;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    sget-object v10, Lt3/g;->a:Lt3/g;

    iget-object p0, p0, Lt3/e;->a:Lt3/h;

    if-eq p0, v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "incAndGet():"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lt3/h;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    and-long/2addr v6, v8

    long-to-int p0, v6

    if-ne v1, p0, :cond_7

    move v3, v2

    :cond_7
    if-eqz v3, :cond_8

    add-int/2addr v4, v2

    monitor-exit v0

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    return v4

    :cond_8
    :try_start_4
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/lang/Runnable;Lv3/j;Z)V
    .locals 8

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv3/m;->f:Lv3/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    instance-of v2, p1, Lv3/i;

    if-eqz v2, :cond_0

    check-cast p1, Lv3/i;

    iput-wide v0, p1, Lv3/i;->d:J

    iput-object p2, p1, Lv3/i;->e:Lv3/j;

    goto :goto_0

    :cond_0
    new-instance v2, Lv3/l;

    invoke-direct {v2, p1, v0, v1, p2}, Lv3/l;-><init>(Ljava/lang/Runnable;JLv3/j;)V

    move-object p1, v2

    :goto_0
    iget-object p2, p1, Lv3/i;->e:Lv3/j;

    invoke-interface {p2}, Lv3/j;->b()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lv3/b;->l:Lt3/e;

    const-wide/32 v3, 0x200000

    invoke-virtual {v2, v3, v4}, Lt3/e;->a(J)J

    move-result-wide v2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    instance-of v5, v4, Lv3/a;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    check-cast v4, Lv3/a;

    goto :goto_3

    :cond_3
    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_4

    iget-object v5, v4, Lv3/a;->l:Lv3/b;

    invoke-static {v5, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v6

    :goto_4
    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, v4, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v5, v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, p1, Lv3/i;->e:Lv3/j;

    invoke-interface {v5}, Lv3/j;->b()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v4, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->e:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v5, v7, :cond_7

    goto :goto_5

    :cond_7
    iput-boolean v1, v4, Lv3/a;->k:Z

    iget-object v5, v4, Lv3/a;->d:Lv3/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_8

    invoke-virtual {v5, p1}, Lv3/o;->a(Lv3/i;)Lv3/i;

    move-result-object p1

    goto :goto_5

    :cond_8
    iget-object v7, v5, Lv3/o;->b:Lt3/f;

    invoke-virtual {v7, p1}, Lt3/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/i;

    if-nez p1, :cond_9

    move-object p1, v6

    goto :goto_5

    :cond_9
    invoke-virtual {v5, p1}, Lv3/o;->a(Lv3/i;)Lv3/i;

    move-result-object p1

    :goto_5
    if-eqz p1, :cond_d

    iget-object v5, p1, Lv3/i;->e:Lv3/j;

    invoke-interface {v5}, Lv3/j;->b()I

    move-result v5

    if-ne v5, v1, :cond_a

    move v5, v1

    goto :goto_6

    :cond_a
    move v5, v0

    :goto_6
    if-eqz v5, :cond_b

    iget-object v5, p0, Lv3/b;->i:Lv3/e;

    invoke-virtual {v5, p1}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_7

    :cond_b
    iget-object v5, p0, Lv3/b;->h:Lv3/e;

    invoke-virtual {v5, p1}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Z

    move-result p1

    :goto_7
    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p0, p0, Lv3/b;->g:Ljava/lang/String;

    const-string p2, " was terminated"

    invoke-static {p0, p2}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_8
    if-eqz p3, :cond_e

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    if-eqz p2, :cond_12

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Lv3/b;->e()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p0, v2, v3}, Lv3/b;->d(J)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Lv3/b;->e()Z

    goto :goto_9

    :cond_12
    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lv3/b;->e()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_9

    :cond_14
    iget-object p1, p0, Lv3/b;->l:Lt3/e;

    iget-wide p1, p1, Lt3/e;->b:J

    invoke-virtual {p0, p1, p2}, Lv3/b;->d(J)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Lv3/b;->e()Z

    :goto_9
    return-void
.end method

.method public final c(Lv3/a;II)V
    .locals 9

    const-string v0, "worker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv3/b;->j:Lt3/e;

    :cond_0
    iget-wide v1, v0, Lt3/e;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    long-to-int v3, v3

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v1

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v3, p2, :cond_5

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lv3/a;->c()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    sget-object v6, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    if-ne v3, v6, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    check-cast v3, Lv3/a;

    invoke-virtual {v3}, Lv3/a;->b()I

    move-result v6

    if-eqz v6, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lv3/a;->c()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_4
    move v3, p3

    :cond_5
    :goto_1
    if-ltz v3, :cond_0

    iget-object v6, p0, Lv3/b;->j:Lt3/e;

    int-to-long v7, v3

    or-long v3, v4, v7

    invoke-virtual {v6, v1, v2, v3, v4}, Lt3/e;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final close()V
    .locals 8

    iget-object v0, p0, Lv3/b;->m:Lt3/b;

    invoke-virtual {v0}, Lt3/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lv3/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lv3/a;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lv3/a;->l:Lv3/b;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v1, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lv3/b;->l:Lt3/e;

    iget-wide v3, v3, Lt3/e;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/32 v5, 0x1fffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    monitor-exit v1

    const/4 v4, 0x1

    if-gt v4, v3, :cond_7

    move v1, v4

    :goto_2
    iget-object v5, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v5, Lv3/a;

    if-eq v5, v0, :cond_6

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    goto :goto_3

    :cond_3
    iget-object v5, v5, Lv3/a;->d:Lv3/o;

    iget-object v6, p0, Lv3/b;->i:Lv3/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "globalQueue"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v5, Lv3/o;->b:Lt3/f;

    invoke-virtual {v7, v2}, Lt3/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv3/i;

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5}, Lv3/o;->b()Lv3/i;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Z

    move v7, v4

    :goto_4
    if-nez v7, :cond_4

    :cond_6
    if-eq v1, v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lv3/b;->i:Lv3/e;

    iget-object v3, v2, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    :goto_5
    iget-object v1, v3, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->b()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lv3/b;->h:Lv3/e;

    iget-object v6, v5, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    :goto_6
    iget-object v1, v6, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Lv3/a;->a(Z)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_8
    iget-object v1, p0, Lv3/b;->h:Lv3/e;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    if-nez v1, :cond_a

    iget-object v1, p0, Lv3/b;->i:Lv3/e;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0, v1}, Lv3/a;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    :cond_9
    iget-object v0, p0, Lv3/b;->j:Lt3/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lt3/e;->d(J)V

    iget-object p0, p0, Lv3/b;->l:Lt3/e;

    invoke-virtual {p0, v1, v2}, Lt3/e;->d(J)V

    :goto_8
    return-void

    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    iget-object v2, v5, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v5, v2, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final d(J)Z
    .locals 3

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_0

    move v0, p1

    :cond_0
    iget p2, p0, Lv3/b;->d:I

    if-ge v0, p2, :cond_2

    invoke-virtual {p0}, Lv3/b;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget v1, p0, Lv3/b;->d:I

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lv3/b;->a()I

    :cond_1
    if-lez p2, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public final e()Z
    .locals 12

    :cond_0
    iget-object v0, p0, Lv3/b;->j:Lt3/e;

    :cond_1
    iget-wide v1, v0, Lt3/e;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    long-to-int v3, v3

    iget-object v4, p0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/a;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const-wide/32 v6, 0x200000

    add-long/2addr v6, v1

    const-wide/32 v8, -0x200000

    and-long/2addr v6, v8

    invoke-virtual {v3}, Lv3/a;->c()Ljava/lang/Object;

    move-result-object v8

    :goto_0
    sget-object v9, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    if-ne v8, v9, :cond_3

    move v10, v5

    goto :goto_1

    :cond_3
    if-nez v8, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    check-cast v8, Lv3/a;

    invoke-virtual {v8}, Lv3/a;->b()I

    move-result v10

    if-eqz v10, :cond_6

    :goto_1
    if-ltz v10, :cond_1

    iget-object v8, p0, Lv3/b;->j:Lt3/e;

    int-to-long v10, v10

    or-long/2addr v6, v10

    invoke-virtual {v8, v1, v2, v6, v7}, Lt3/e;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v9}, Lv3/a;->g(Ljava/lang/Object;)V

    :goto_2
    if-nez v3, :cond_5

    return v4

    :cond_5
    iget-object v0, v3, Lv3/a;->g:Lt3/d;

    invoke-virtual {v0, v5, v4}, Lt3/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {v8}, Lv3/a;->c()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv3/m;->g:Lv3/k;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lv3/b;->b(Ljava/lang/Runnable;Lv3/j;Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/z;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v4

    :goto_0
    if-ge v9, v2, :cond_8

    iget-object v10, v0, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v10, v9}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv3/a;

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v11, v10, Lv3/a;->d:Lv3/o;

    iget-object v12, v11, Lv3/o;->b:Lt3/f;

    iget-object v12, v12, Lt3/f;->b:Ljava/lang/Object;

    iget-object v13, v11, Lv3/o;->c:Lt3/d;

    iget v13, v13, Lt3/d;->b:I

    iget-object v11, v11, Lv3/o;->d:Lt3/d;

    iget v11, v11, Lt3/d;->b:I

    sub-int/2addr v13, v11

    if-eqz v12, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_1
    iget-object v10, v10, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_6

    if-eq v10, v4, :cond_5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-lez v13, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "b"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v2, v0, Lv3/b;->l:Lt3/e;

    iget-wide v9, v2, Lt3/e;->b:J

    iget-object v2, v0, Lv3/b;->g:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v11, v0, Lv3/b;->d:I

    iget v12, v0, Lv3/b;->e:I

    iget-object v13, v0, Lv3/b;->h:Lv3/e;

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/q;->b()I

    move-result v13

    iget-object v14, v0, Lv3/b;->i:Lv3/e;

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/q;->b()I

    move-result v14

    const-wide/32 v15, 0x1fffff

    move/from16 v17, v14

    and-long v14, v9, v15

    long-to-int v14, v14

    const-wide v15, 0x3ffffe00000L

    and-long/2addr v15, v9

    const/16 v18, 0x15

    move/from16 v19, v14

    shr-long v14, v15, v18

    long-to-int v14, v14

    iget v0, v0, Lv3/b;->d:I

    const-wide v15, 0x7ffffc0000000000L

    and-long/2addr v9, v15

    const/16 v15, 0x2a

    shr-long/2addr v9, v15

    long-to-int v9, v9

    sub-int/2addr v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[Pool Size {core = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, Worker States {CPU = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", global CPU queue size = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", global blocking queue size = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Control State {created workers= "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blocking tasks = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CPUs acquired = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
