.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/h0;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/c;
.implements Lkotlinx/coroutines/B;


# instance fields
.field public final f:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Z)V
    .locals 2

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lkotlinx/coroutines/h0;-><init>(Z)V

    sget-object p2, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {p1, p2}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/a0;

    sget-object v0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    if-nez p2, :cond_0

    iget-object p2, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    invoke-virtual {p2, v0}, Lt3/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlinx/coroutines/a0;->start()Z

    invoke-interface {p2, p0}, Lkotlinx/coroutines/a0;->u(Lkotlinx/coroutines/a;)Lkotlinx/coroutines/m;

    move-result-object p2

    iget-object v1, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    invoke-virtual {v1, p2}, Lt3/f;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/V;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lkotlinx/coroutines/K;->c()V

    iget-object p2, p0, Lkotlinx/coroutines/h0;->e:Lt3/f;

    invoke-virtual {p2, v0}, Lt3/f;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final S()Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    iget-object v1, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/q;

    iget-object v0, p1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    iget-object p1, p1, Lkotlinx/coroutines/q;->b:Lt3/b;

    iget p1, p1, Lt3/b;->b:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->c0(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->d0(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/h0;->a()Z

    move-result p0

    return p0
.end method

.method public c0(Ljava/lang/Throwable;Z)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final e0(Lkotlinx/coroutines/CoroutineStart;Lkotlinx/coroutines/a;Lm3/p;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    :try_start_0
    iget-object p1, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p3}, Lkotlin/jvm/internal/l;->a(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq p2, p1, :cond_3

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2, p0, p3}, Lkotlin/coroutines/intrinsics/a;->a(Ljava/lang/Object;Lkotlin/coroutines/c;Lm3/p;)Lkotlin/coroutines/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-static {p2, p0, p3}, Lkotlin/coroutines/intrinsics/a;->a(Ljava/lang/Object;Lkotlin/coroutines/c;Lm3/p;)Lkotlin/coroutines/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    sget-object p2, Le3/f;->a:Le3/f;

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/internal/h;->a(Lkotlin/coroutines/c;Ljava/lang/Object;Lm3/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_0
    return-void

    :catchall_2
    move-exception p1

    invoke-static {p1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p2

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/a;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final h()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/i0;->b:Lkotlinx/coroutines/internal/E;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->D(Ljava/lang/Object;)V

    return-void
.end method
