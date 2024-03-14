.class public final Lkotlinx/coroutines/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;
    .locals 3

    invoke-static {p0}, Lkotlinx/coroutines/v;->b(Lkotlin/coroutines/i;)Z

    move-result v0

    invoke-static {p1}, Lkotlinx/coroutines/v;->b(Lkotlin/coroutines/i;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;

    invoke-direct {v2, v0, p2}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-interface {p0, p1, v2}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/i;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/i;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->d:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-interface {p2, p1, v1}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/i;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/i;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->d:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/i;->x(Ljava/lang/Object;Lm3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final c(Lkotlinx/coroutines/B;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/coroutines/B;->h()Lkotlin/coroutines/i;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/v;->a(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/J;->a:Lv3/d;

    if-eq p0, p1, :cond_0

    sget-object v0, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final d(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;
    .locals 2

    instance-of v0, p0, Lg3/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/v0;->d:Lkotlinx/coroutines/v0;

    invoke-interface {p1, v0}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lg3/b;

    :cond_3
    invoke-interface {p0}, Lg3/b;->getCallerFrame()Lg3/b;

    move-result-object p0

    if-nez p0, :cond_4

    move-object p0, v1

    goto :goto_1

    :cond_4
    instance-of v0, p0, Lkotlinx/coroutines/u0;

    if-eqz v0, :cond_3

    check-cast p0, Lkotlinx/coroutines/u0;

    :goto_1
    if-nez p0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/u0;->g0(Lkotlin/coroutines/i;)V

    throw v1
.end method
