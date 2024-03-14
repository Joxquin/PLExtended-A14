.class public final Lkotlinx/coroutines/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/H;Lkotlin/coroutines/c;Z)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/H;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/H;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/H;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_4

    check-cast p1, Lkotlinx/coroutines/internal/g;

    iget-object p2, p1, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    iget-object v0, p1, Lkotlinx/coroutines/internal/g;->j:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1}, Lkotlinx/coroutines/v;->d(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lkotlinx/coroutines/u0;->f0()V

    throw v3

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lkotlinx/coroutines/u0;->f0()V

    throw v3

    :cond_3
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p0

    :cond_4
    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
