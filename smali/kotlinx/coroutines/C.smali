.class public final Lkotlinx/coroutines/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lm3/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/A;

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/internal/A;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V

    const/4 p1, 0x2

    :try_start_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->a(ILjava/lang/Object;)V

    invoke-interface {p0, v0, v0}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    move-object p0, p1

    :goto_0
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h0;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/i0;->b:Lkotlinx/coroutines/internal/E;

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of p1, p0, Lkotlinx/coroutines/q;

    if-nez p1, :cond_5

    instance-of p1, p0, Lkotlinx/coroutines/W;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/W;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p1, Lkotlinx/coroutines/W;->a:Lkotlinx/coroutines/V;

    if-nez p1, :cond_4

    :cond_3
    move-object p1, p0

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    check-cast p0, Lkotlinx/coroutines/q;

    iget-object p0, p0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    throw p0
.end method
