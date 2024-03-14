.class public final Lkotlinx/coroutines/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lkotlinx/coroutines/B;Lkotlinx/coroutines/CoroutineStart;Lm3/p;I)Lkotlinx/coroutines/q0;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->d:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "start"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/v;->c(Lkotlinx/coroutines/B;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p3, Lkotlinx/coroutines/CoroutineStart;->e:Lkotlinx/coroutines/CoroutineStart;

    const/4 v0, 0x1

    if-ne p1, p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    new-instance p3, Lkotlinx/coroutines/j0;

    invoke-direct {p3, p0, p2}, Lkotlinx/coroutines/j0;-><init>(Lkotlin/coroutines/i;Lm3/p;)V

    goto :goto_2

    :cond_3
    new-instance p3, Lkotlinx/coroutines/q0;

    invoke-direct {p3, p0, v0}, Lkotlinx/coroutines/q0;-><init>(Lkotlin/coroutines/i;Z)V

    :goto_2
    invoke-virtual {p3, p1, p3, p2}, Lkotlinx/coroutines/a;->e0(Lkotlinx/coroutines/CoroutineStart;Lkotlinx/coroutines/a;Lm3/p;)V

    return-object p3
.end method
