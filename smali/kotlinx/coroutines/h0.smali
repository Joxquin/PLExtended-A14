.class public Lkotlinx/coroutines/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/a0;
.implements Lkotlinx/coroutines/o;
.implements Lkotlinx/coroutines/o0;


# instance fields
.field public final d:Lt3/f;

.field public final e:Lt3/f;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/i0;->g:Lkotlinx/coroutines/M;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/i0;->f:Lkotlinx/coroutines/M;

    :goto_0
    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    return-void
.end method

.method public static T(Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/n;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->i()Lkotlinx/coroutines/internal/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->h()Lkotlinx/coroutines/internal/p;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->j()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/n;

    return-object p0

    :cond_1
    instance-of v0, p0, Lkotlinx/coroutines/l0;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Z(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/f0;

    if-eqz v0, :cond_2

    check-cast p0, Lkotlinx/coroutines/f0;

    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/f0;->e:Lt3/b;

    iget p0, p0, Lt3/b;->b:I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string p0, "Completing"

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/V;

    if-eqz v0, :cond_5

    check-cast p0, Lkotlinx/coroutines/V;

    invoke-interface {p0}, Lkotlinx/coroutines/V;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const-string p0, "Active"

    goto :goto_1

    :cond_4
    const-string p0, "New"

    goto :goto_1

    :cond_5
    instance-of p0, p0, Lkotlinx/coroutines/q;

    if-eqz p0, :cond_6

    const-string p0, "Cancelled"

    goto :goto_1

    :cond_6
    const-string p0, "Completed"

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Lkotlinx/coroutines/l0;Lkotlinx/coroutines/d0;)Z
    .locals 4

    new-instance v0, Lkotlinx/coroutines/g0;

    invoke-direct {v0, p3, p0, p1}, Lkotlinx/coroutines/g0;-><init>(Lkotlinx/coroutines/internal/p;Lkotlinx/coroutines/h0;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/p;->i()Lkotlinx/coroutines/internal/p;

    move-result-object p0

    iget-object p1, p3, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    invoke-virtual {p1, p0}, Lt3/f;->c(Ljava/lang/Object;)V

    iget-object p1, p3, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {p1, p2}, Lt3/f;->c(Ljava/lang/Object;)V

    iput-object p2, v0, Lkotlinx/coroutines/internal/o;->c:Lkotlinx/coroutines/internal/p;

    iget-object p1, p0, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {p1, p2, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public C(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->C(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/lang/Object;)Z
    .locals 8

    sget-object v0, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/f0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/f0;

    iget-object v3, v3, Lkotlinx/coroutines/f0;->g:Lt3/f;

    iget-object v3, v3, Lt3/f;->b:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/i0;->e:Lkotlinx/coroutines/internal/E;

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    sget-object p1, Lkotlinx/coroutines/i0;->d:Lkotlinx/coroutines/internal/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto/16 :goto_3

    :cond_2
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/f0;

    invoke-virtual {v3}, Lkotlinx/coroutines/f0;->e()Z

    move-result v3

    if-nez p1, :cond_3

    if-nez v3, :cond_5

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->J(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/f0;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/f0;->c(Ljava/lang/Throwable;)V

    :cond_5
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/f0;

    invoke-virtual {p1}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_6

    move-object v0, p1

    :cond_6
    monitor-exit v2

    if-eqz v0, :cond_7

    check-cast v2, Lkotlinx/coroutines/f0;

    iget-object p1, v2, Lkotlinx/coroutines/f0;->d:Lkotlinx/coroutines/l0;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/h0;->U(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V

    :cond_7
    sget-object p1, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_8
    instance-of v3, v2, Lkotlinx/coroutines/V;

    if-eqz v3, :cond_e

    if-nez v1, :cond_9

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->J(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_9
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/V;

    invoke-interface {v3}, Lkotlinx/coroutines/V;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/h0;->M(Lkotlinx/coroutines/V;)Lkotlinx/coroutines/l0;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    new-instance v6, Lkotlinx/coroutines/f0;

    invoke-direct {v6, v2, v1}, Lkotlinx/coroutines/f0;-><init>(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V

    iget-object v7, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    invoke-virtual {v7, v3, v6}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v2, v1}, Lkotlinx/coroutines/h0;->U(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V

    move v2, v4

    :goto_2
    if-eqz v2, :cond_0

    sget-object p1, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    goto :goto_3

    :cond_c
    new-instance v3, Lkotlinx/coroutines/q;

    invoke-direct {v3, v1, v5}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/h0;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    if-eq v3, v6, :cond_d

    sget-object v2, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;

    if-eq v3, v2, :cond_0

    move-object p1, v3

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    sget-object p1, Lkotlinx/coroutines/i0;->d:Lkotlinx/coroutines/internal/E;

    :goto_3
    sget-object v0, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    if-ne p1, v0, :cond_f

    goto :goto_4

    :cond_f
    sget-object v0, Lkotlinx/coroutines/i0;->b:Lkotlinx/coroutines/internal/E;

    if-ne p1, v0, :cond_10

    goto :goto_4

    :cond_10
    sget-object v0, Lkotlinx/coroutines/i0;->d:Lkotlinx/coroutines/internal/E;

    if-ne p1, v0, :cond_11

    move v4, v5

    goto :goto_4

    :cond_11
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->C(Ljava/lang/Object;)V

    :goto_4
    return v4
.end method

.method public F(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->Q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object p0, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/m;

    if-eqz p0, :cond_4

    sget-object v2, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/m;->d(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final I(Lkotlinx/coroutines/V;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/K;->c()V

    sget-object v0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    iget-object v1, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    invoke-virtual {v1, v0}, Lt3/f;->d(Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lkotlinx/coroutines/d0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/d0;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/s;->k(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h0;->P(Lkotlinx/coroutines/CompletionHandlerException;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/V;->b()Lkotlinx/coroutines/l0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/p;

    :goto_2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lkotlinx/coroutines/d0;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/d0;

    :try_start_1
    invoke-virtual {v4, p2}, Lkotlinx/coroutines/s;->k(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Le3/f;->a:Le3/f;

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->h()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/h0;->P(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final J(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->H()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    goto :goto_1

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/o0;

    invoke-interface {p1}, Lkotlinx/coroutines/o0;->o()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final K(Lkotlinx/coroutines/f0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/f0;->e()Z

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/f0;->f(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/h0;->L(Lkotlinx/coroutines/f0;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "newSetFromMap(IdentityHashMap(expectedSize))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_3

    if-eq v5, v2, :cond_3

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v5}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Lkotlinx/coroutines/q;

    invoke-direct {p2, v2, v0}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/h0;->G(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/h0;->O(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v3, v0

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v0, v0, Lkotlinx/coroutines/q;->b:Lt3/b;

    invoke-virtual {v0}, Lt3/b;->a()Z

    :cond_9
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/h0;->V(Ljava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    instance-of v1, p2, Lkotlinx/coroutines/V;

    if-eqz v1, :cond_a

    new-instance v1, Lkotlinx/coroutines/W;

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/V;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/W;-><init>(Lkotlinx/coroutines/V;)V

    goto :goto_5

    :cond_a
    move-object v1, p2

    :goto_5
    invoke-virtual {v0, p1, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h0;->I(Lkotlinx/coroutines/V;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final L(Lkotlinx/coroutines/f0;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/f0;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->H()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eq v3, p1, :cond_6

    instance-of v3, v3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_1

    :cond_6
    move v3, p0

    :goto_1
    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    return-object p1
.end method

.method public final M(Lkotlinx/coroutines/V;)Lkotlinx/coroutines/l0;
    .locals 2

    invoke-interface {p1}, Lkotlinx/coroutines/V;->b()Lkotlinx/coroutines/l0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlinx/coroutines/M;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/l0;

    invoke-direct {v0}, Lkotlinx/coroutines/l0;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/d0;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/d0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->X(Lkotlinx/coroutines/d0;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final N()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    :goto_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/internal/x;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/x;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public O(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public P(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public Q()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/h0;->a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lkotlinx/coroutines/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final U(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/p;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lkotlinx/coroutines/b0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/d0;

    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/s;->k(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Le3/f;->a:Le3/f;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->h()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/h0;->P(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/h0;->G(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public V(Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public W()V
    .locals 0

    return-void
.end method

.method public final X(Lkotlinx/coroutines/d0;)V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/l0;

    invoke-direct {v0}, Lkotlinx/coroutines/l0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    invoke-virtual {v1, p1}, Lt3/f;->c(Ljava/lang/Object;)V

    iget-object v1, v0, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {v1, p1}, Lt3/f;->c(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {v1, p1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/p;->f(Lkotlinx/coroutines/internal/p;)V

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->h()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    invoke-virtual {p0, p1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final Y(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, Lkotlinx/coroutines/M;

    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/M;

    iget-boolean v0, v0, Lkotlinx/coroutines/M;->d:Z

    if-eqz v0, :cond_0

    return v4

    :cond_0
    sget-object v0, Lkotlinx/coroutines/i0;->g:Lkotlinx/coroutines/M;

    invoke-virtual {v3, p1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->W()V

    return v2

    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/U;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/U;

    iget-object v0, v0, Lkotlinx/coroutines/U;->d:Lkotlinx/coroutines/l0;

    invoke-virtual {v3, p1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->W()V

    return v2

    :cond_4
    return v4
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/V;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/V;

    invoke-interface {p0}, Lkotlinx/coroutines/V;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lkotlinx/coroutines/V;

    if-nez v0, :cond_0

    sget-object p0, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    return-object p0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/M;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/d0;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-nez v0, :cond_5

    instance-of v0, p2, Lkotlinx/coroutines/q;

    if-nez v0, :cond_5

    check-cast p1, Lkotlinx/coroutines/V;

    iget-object v0, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    sget-object v3, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;

    instance-of v3, p2, Lkotlinx/coroutines/V;

    if-eqz v3, :cond_2

    new-instance v3, Lkotlinx/coroutines/W;

    move-object v4, p2

    check-cast v4, Lkotlinx/coroutines/V;

    invoke-direct {v3, v4}, Lkotlinx/coroutines/W;-><init>(Lkotlinx/coroutines/V;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, p1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/h0;->V(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h0;->I(Lkotlinx/coroutines/V;Ljava/lang/Object;)V

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    return-object p2

    :cond_4
    sget-object p0, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;

    return-object p0

    :cond_5
    check-cast p1, Lkotlinx/coroutines/V;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->M(Lkotlinx/coroutines/V;)Lkotlinx/coroutines/l0;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p0, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;

    goto/16 :goto_7

    :cond_6
    instance-of v3, p1, Lkotlinx/coroutines/f0;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/f0;

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    if-nez v3, :cond_8

    new-instance v3, Lkotlinx/coroutines/f0;

    invoke-direct {v3, v0, v4}, Lkotlinx/coroutines/f0;-><init>(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V

    :cond_8
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter v3

    :try_start_0
    iget-object v6, v3, Lkotlinx/coroutines/f0;->e:Lt3/b;

    iget v6, v6, Lt3/b;->b:I

    if-eqz v6, :cond_9

    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    sget-object p0, Lkotlinx/coroutines/i0;->a:Lkotlinx/coroutines/internal/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_7

    :cond_a
    :try_start_1
    iget-object v1, v3, Lkotlinx/coroutines/f0;->e:Lt3/b;

    invoke-virtual {v1}, Lt3/b;->b()V

    if-eq v3, p1, :cond_b

    iget-object v1, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    invoke-virtual {v1, p1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object p0, Lkotlinx/coroutines/i0;->c:Lkotlinx/coroutines/internal/E;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_7

    :cond_b
    :try_start_2
    invoke-virtual {v3}, Lkotlinx/coroutines/f0;->e()Z

    move-result v1

    instance-of v6, p2, Lkotlinx/coroutines/q;

    if-eqz v6, :cond_c

    move-object v6, p2

    check-cast v6, Lkotlinx/coroutines/q;

    goto :goto_3

    :cond_c
    move-object v6, v4

    :goto_3
    if-eqz v6, :cond_d

    iget-object v6, v6, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Lkotlinx/coroutines/f0;->c(Ljava/lang/Throwable;)V

    :cond_d
    invoke-virtual {v3}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v6

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move-object v6, v4

    :goto_4
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Le3/f;->a:Le3/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    if-eqz v6, :cond_f

    invoke-virtual {p0, v0, v6}, Lkotlinx/coroutines/h0;->U(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V

    :cond_f
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/n;

    goto :goto_5

    :cond_10
    move-object v0, v4

    :goto_5
    if-nez v0, :cond_11

    invoke-interface {p1}, Lkotlinx/coroutines/V;->b()Lkotlinx/coroutines/l0;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {p1}, Lkotlinx/coroutines/h0;->T(Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/n;

    move-result-object v4

    goto :goto_6

    :cond_11
    move-object v4, v0

    :cond_12
    :goto_6
    if-eqz v4, :cond_13

    invoke-virtual {p0, v3, v4, p2}, Lkotlinx/coroutines/h0;->b0(Lkotlinx/coroutines/f0;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lkotlinx/coroutines/i0;->b:Lkotlinx/coroutines/internal/E;

    goto :goto_7

    :cond_13
    invoke-virtual {p0, v3, p2}, Lkotlinx/coroutines/h0;->K(Lkotlinx/coroutines/f0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->H()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->F(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b0(Lkotlinx/coroutines/f0;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z
    .locals 4

    :cond_0
    new-instance v0, Lkotlinx/coroutines/e0;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/e0;-><init>(Lkotlinx/coroutines/h0;Lkotlinx/coroutines/f0;Lkotlinx/coroutines/n;Ljava/lang/Object;)V

    iget-object v1, p2, Lkotlinx/coroutines/n;->h:Lkotlinx/coroutines/o;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lkotlinx/coroutines/Z;->a(Lkotlinx/coroutines/a0;ZLkotlinx/coroutines/d0;I)Lkotlinx/coroutines/K;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Lkotlinx/coroutines/h0;->T(Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/n;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public final e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->b(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/h;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    return-object p0
.end method

.method public final i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->d(Lkotlin/coroutines/g;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/V;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h0;->Y(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/a0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlinx/coroutines/a0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lkotlinx/coroutines/a0;->r()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :cond_4
    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/c;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->p()V

    new-instance p1, Lkotlinx/coroutines/p0;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/p0;-><init>(Lkotlinx/coroutines/h;)V

    invoke-virtual {p0, v2, v3, p1}, Lkotlinx/coroutines/h0;->n(ZZLm3/l;)Lkotlinx/coroutines/K;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/L;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/L;-><init>(Lkotlinx/coroutines/K;)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/h;->r(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->o()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_2
    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final n(ZZLm3/l;)Lkotlinx/coroutines/K;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, Lkotlinx/coroutines/b0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lkotlinx/coroutines/b0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Lkotlinx/coroutines/X;

    invoke-direct {v1, p3}, Lkotlinx/coroutines/X;-><init>(Lm3/l;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, Lkotlinx/coroutines/d0;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lkotlinx/coroutines/d0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lkotlinx/coroutines/Y;

    invoke-direct {v1, p3}, Lkotlinx/coroutines/Y;-><init>(Lm3/l;)V

    :cond_4
    :goto_2
    iput-object p0, v1, Lkotlinx/coroutines/d0;->g:Lkotlinx/coroutines/h0;

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/M;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/M;

    iget-boolean v4, v3, Lkotlinx/coroutines/M;->d:Z

    if-eqz v4, :cond_6

    iget-object v3, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    invoke-virtual {v3, v2, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_6
    new-instance v2, Lkotlinx/coroutines/l0;

    invoke-direct {v2}, Lkotlinx/coroutines/l0;-><init>()V

    iget-boolean v4, v3, Lkotlinx/coroutines/M;->d:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v4, Lkotlinx/coroutines/U;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/U;-><init>(Lkotlinx/coroutines/l0;)V

    move-object v2, v4

    :goto_4
    iget-object v4, p0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    invoke-virtual {v4, v3, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    instance-of v3, v2, Lkotlinx/coroutines/V;

    if-eqz v3, :cond_12

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/V;

    invoke-interface {v3}, Lkotlinx/coroutines/V;->b()Lkotlinx/coroutines/l0;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/coroutines/d0;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/h0;->X(Lkotlinx/coroutines/d0;)V

    goto :goto_3

    :cond_9
    sget-object v4, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    if-eqz p1, :cond_f

    instance-of v5, v2, Lkotlinx/coroutines/f0;

    if-eqz v5, :cond_f

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/f0;

    invoke-virtual {v5}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_b

    instance-of v6, p3, Lkotlinx/coroutines/n;

    if-eqz v6, :cond_e

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/f0;

    iget-object v6, v6, Lkotlinx/coroutines/f0;->e:Lt3/b;

    iget v6, v6, Lt3/b;->b:I

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_e

    :cond_b
    invoke-virtual {p0, v2, v3, v1}, Lkotlinx/coroutines/h0;->B(Ljava/lang/Object;Lkotlinx/coroutines/l0;Lkotlinx/coroutines/d0;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_c

    monitor-exit v2

    goto :goto_3

    :cond_c
    if-nez v5, :cond_d

    monitor-exit v2

    return-object v1

    :cond_d
    move-object v4, v1

    :cond_e
    :try_start_1
    sget-object v6, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_f
    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_11

    if-eqz p2, :cond_10

    invoke-interface {p3, v5}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v4

    :cond_11
    invoke-virtual {p0, v2, v3, v1}, Lkotlinx/coroutines/h0;->B(Ljava/lang/Object;Lkotlinx/coroutines/l0;Lkotlinx/coroutines/d0;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_12
    if-eqz p2, :cond_15

    instance-of p0, v2, Lkotlinx/coroutines/q;

    if-eqz p0, :cond_13

    check-cast v2, Lkotlinx/coroutines/q;

    goto :goto_7

    :cond_13
    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_14

    iget-object v0, v2, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_14
    invoke-interface {p3, v0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object p0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    return-object p0
.end method

.method public final o()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/f0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/f0;

    invoke-virtual {v1}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/q;

    iget-object v1, v1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/V;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {v0}, Lkotlinx/coroutines/h0;->Z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/f0;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/f0;

    invoke-virtual {v0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v2, :cond_6

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->H()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/V;

    if-nez v1, :cond_7

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v2, :cond_6

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    move-object v2, v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h0;->Y(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final t(Lkotlinx/coroutines/h0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/h0;->Z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/coroutines/a;)Lkotlinx/coroutines/m;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/n;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/n;-><init>(Lkotlinx/coroutines/a;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1}, Lkotlinx/coroutines/Z;->a(Lkotlinx/coroutines/a0;ZLkotlinx/coroutines/d0;I)Lkotlinx/coroutines/K;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/m;

    return-object p0
.end method

.method public final x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/f;->a(Lkotlin/coroutines/g;Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->c(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method
