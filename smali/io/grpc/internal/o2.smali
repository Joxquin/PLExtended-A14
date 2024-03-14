.class public final Lio/grpc/internal/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v;


# instance fields
.field public final a:Lio/grpc/internal/p2;

.field public final synthetic b:Lio/grpc/internal/r2;


# direct methods
.method public constructor <init>(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-virtual {v0}, Lio/grpc/internal/r2;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lio/grpc/internal/m2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/m2;-><init>(Lio/grpc/internal/o2;I)V

    iget-object p0, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(LX2/r0;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    invoke-static {v0, v1}, Lio/grpc/internal/r2;->p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, v0, Lio/grpc/internal/q2;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Lio/grpc/internal/q2;->a:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v0, Lio/grpc/internal/q2;->c:I

    add-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v1, Lio/grpc/internal/e2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final c(Lio/grpc/binder/internal/e;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v2, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v1, Lio/grpc/internal/e2;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V
    .locals 12

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v2, v1, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v3, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    invoke-virtual {v2, v3}, Lio/grpc/internal/l2;->d(Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v2

    iput-object v2, v1, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, v1, Lio/grpc/internal/r2;->n:Lio/grpc/internal/u0;

    iget-object v2, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    iget-object v1, v1, Lio/grpc/internal/u0;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    iget-boolean v1, v0, Lio/grpc/internal/p2;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-static {v1, v0}, Lio/grpc/internal/r2;->p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v7, Lio/grpc/internal/n2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/n2;-><init>(Lio/grpc/internal/o2;LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;I)V

    invoke-virtual {v0, v7}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    if-nez v0, :cond_1c

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object p2, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    iget p2, p2, Lio/grpc/internal/p2;->d:I

    invoke-virtual {p1, p2, v1}, Lio/grpc/internal/r2;->s(IZ)Lio/grpc/internal/p2;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-boolean p3, p2, Lio/grpc/internal/r2;->h:Z

    if-eqz p3, :cond_3

    iget-object p3, p2, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, p2, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v3, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    invoke-virtual {v0, v3, p1}, Lio/grpc/internal/l2;->c(Lio/grpc/internal/p2;Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v0

    iput-object v0, p2, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, p2, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {p2, v0}, Lio/grpc/internal/r2;->w(Lio/grpc/internal/l2;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object p2, p2, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object p2, p2, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-static {p2, p1}, Lio/grpc/internal/r2;->p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    iget-object p3, p2, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    if-eqz p3, :cond_4

    iget p3, p3, Lio/grpc/internal/s2;->a:I

    if-ne p3, v1, :cond_5

    :cond_4
    invoke-static {p2, p1}, Lio/grpc/internal/r2;->p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object p2, p2, Lio/grpc/internal/r2;->b:Ljava/util/concurrent/Executor;

    new-instance p3, Lio/grpc/internal/e2;

    const/4 v0, 0x3

    invoke-direct {p3, v0, p0, p1}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-boolean v1, v0, Lio/grpc/internal/r2;->h:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lio/grpc/internal/r2;->v()V

    goto/16 :goto_e

    :cond_7
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-boolean v3, v0, Lio/grpc/internal/r2;->h:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_12

    sget-object v0, Lio/grpc/internal/r2;->y:LX2/i0;

    invoke-virtual {p3, v0}, LX2/r0;->c(LX2/n0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_8
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v3, v0, Lio/grpc/internal/r2;->g:Lio/grpc/internal/s0;

    iget-object v3, v3, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    iget-object v4, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v4, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    if-eqz v4, :cond_d

    if-eqz v3, :cond_9

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_d

    :cond_9
    iget-object v0, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    :cond_a
    iget-object v4, v0, Lio/grpc/internal/q2;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit16 v7, v6, -0x3e8

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v0, v0, Lio/grpc/internal/q2;->b:I

    if-le v7, v0, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    :goto_3
    move v0, v2

    :goto_4
    xor-int/2addr v0, v1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_5
    if-nez v3, :cond_e

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    move v1, v2

    :goto_6
    if-eqz v1, :cond_f

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-static {v0, v5}, Lio/grpc/internal/r2;->q(Lio/grpc/internal/r2;Ljava/lang/Integer;)V

    :cond_f
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v3, v0, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v2, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v4, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    invoke-virtual {v2, v4}, Lio/grpc/internal/l2;->b(Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {v0, v1}, Lio/grpc/internal/r2;->w(Lio/grpc/internal/l2;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    monitor-exit v3

    return-void

    :cond_11
    monitor-exit v3

    goto/16 :goto_e

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_12
    iget-object v3, v0, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_13

    new-instance v0, Lio/grpc/internal/j2;

    invoke-direct {v0, v6, v7, v2}, Lio/grpc/internal/j2;-><init>(JZ)V

    goto/16 :goto_d

    :cond_13
    iget-object v3, v3, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    iget-object v8, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v8, Lio/grpc/internal/r2;->y:LX2/i0;

    invoke-virtual {p3, v8}, LX2/r0;->c(LX2/n0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_14

    :try_start_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_14
    :goto_7
    iget-object v4, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    if-eqz v4, :cond_19

    if-nez v3, :cond_15

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_19

    :cond_15
    iget-object v4, v0, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    :cond_16
    iget-object v8, v4, Lio/grpc/internal/q2;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-nez v9, :cond_17

    goto :goto_8

    :cond_17
    add-int/lit16 v10, v9, -0x3e8

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v8, v9, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_16

    iget v4, v4, Lio/grpc/internal/q2;->b:I

    if-le v10, v4, :cond_18

    move v4, v1

    goto :goto_9

    :cond_18
    :goto_8
    move v4, v2

    :goto_9
    xor-int/2addr v4, v1

    goto :goto_a

    :cond_19
    move v4, v2

    :goto_a
    iget-object v8, v0, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    iget v8, v8, Lio/grpc/internal/s2;->a:I

    iget-object v9, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    iget v9, v9, Lio/grpc/internal/p2;->d:I

    add-int/2addr v9, v1

    if-le v8, v9, :cond_1b

    if-nez v4, :cond_1b

    if-nez v5, :cond_1a

    if-eqz v3, :cond_1b

    iget-wide v3, v0, Lio/grpc/internal/r2;->u:J

    long-to-double v3, v3

    sget-object v5, Lio/grpc/internal/r2;->A:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-long v3, v5

    iget-wide v5, v0, Lio/grpc/internal/r2;->u:J

    long-to-double v5, v5

    iget-object v7, v0, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    iget-wide v8, v7, Lio/grpc/internal/s2;->d:D

    mul-double/2addr v5, v8

    double-to-long v5, v5

    iget-wide v7, v7, Lio/grpc/internal/s2;->c:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lio/grpc/internal/r2;->u:J

    goto :goto_b

    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1b

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iget-object v5, v0, Lio/grpc/internal/r2;->f:Lio/grpc/internal/s2;

    iget-wide v5, v5, Lio/grpc/internal/s2;->b:J

    iput-wide v5, v0, Lio/grpc/internal/r2;->u:J

    :goto_b
    move-wide v6, v3

    goto :goto_c

    :cond_1b
    move v1, v2

    :goto_c
    new-instance v0, Lio/grpc/internal/j2;

    invoke-direct {v0, v6, v7, v1}, Lio/grpc/internal/j2;-><init>(JZ)V

    :goto_d
    iget-boolean v1, v0, Lio/grpc/internal/j2;->a:Z

    if-eqz v1, :cond_1c

    iget-object p1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, p1, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object p1, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    new-instance p2, Lio/grpc/internal/i2;

    iget-object p3, p1, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    invoke-direct {p2, p3}, Lio/grpc/internal/i2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lio/grpc/internal/r2;->s:Lio/grpc/internal/i2;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object p1, p1, Lio/grpc/internal/r2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lio/grpc/internal/m2;

    invoke-direct {p3, p0, v2}, Lio/grpc/internal/m2;-><init>(Lio/grpc/internal/o2;I)V

    iget-wide v0, v0, Lio/grpc/internal/j2;->b:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p3, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/grpc/internal/i2;->a(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_1c
    :goto_e
    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    invoke-static {v0, v1}, Lio/grpc/internal/r2;->p(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v0, v0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-object v1, p0, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->c:LX2/P0;

    new-instance v7, Lio/grpc/internal/n2;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/n2;-><init>(Lio/grpc/internal/o2;LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;I)V

    invoke-virtual {v0, v7}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    return-void

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method
