.class public final Lkotlinx/coroutines/u0;
.super Lkotlinx/coroutines/internal/A;
.source "SourceFile"


# instance fields
.field private volatile threadLocalIsSet:Z


# virtual methods
.method public final D(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lkotlinx/coroutines/u0;->threadLocalIsSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    invoke-static {p1, v0}, Lkotlinx/coroutines/t;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    if-eq v3, v4, :cond_0

    invoke-static {v0, v2}, Lkotlinx/coroutines/v;->d(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/u0;->f0()V

    throw v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/u0;->f0()V

    throw v1

    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p0

    :cond_3
    throw v1
.end method

.method public final f0()V
    .locals 1

    iget-boolean p0, p0, Lkotlinx/coroutines/u0;->threadLocalIsSet:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    throw v0

    :cond_0
    throw v0
.end method

.method public final g0(Lkotlin/coroutines/i;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/u0;->threadLocalIsSet:Z

    new-instance p0, Lkotlin/Pair;

    const/4 p0, 0x0

    throw p0
.end method
