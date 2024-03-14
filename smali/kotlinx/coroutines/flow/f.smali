.class public final Lkotlinx/coroutines/flow/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/d;)Lkotlinx/coroutines/flow/d;
    .locals 4

    sget-object v0, Lkotlinx/coroutines/flow/i;->a:Lm3/l;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/coroutines/flow/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/i;->a:Lm3/l;

    sget-object v1, Lkotlinx/coroutines/flow/i;->b:Lm3/p;

    instance-of v2, p0, Lkotlinx/coroutines/flow/c;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/flow/c;

    iget-object v3, v2, Lkotlinx/coroutines/flow/c;->b:Lm3/l;

    if-ne v3, v0, :cond_1

    iget-object v0, v2, Lkotlinx/coroutines/flow/c;->c:Lm3/p;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/c;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/c;-><init>(Lkotlinx/coroutines/flow/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
