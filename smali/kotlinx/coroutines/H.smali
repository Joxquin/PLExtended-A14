.class public abstract Lkotlinx/coroutines/H;
.super Lv3/i;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lv3/i;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/H;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()Lkotlin/coroutines/c;
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lkotlinx/coroutines/q;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/H;->c()Lkotlin/coroutines/c;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 12

    iget-object v0, p0, Lv3/i;->e:Lv3/j;

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/H;->c()Lkotlin/coroutines/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/internal/g;

    iget-object v2, v1, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    iget-object v1, v1, Lkotlinx/coroutines/internal/g;->j:Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/H;->a:Lkotlinx/coroutines/internal/E;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3}, Lkotlinx/coroutines/v;->d(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-interface {v2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v6

    invoke-virtual {p0}, Lkotlinx/coroutines/H;->h()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lkotlinx/coroutines/H;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_3

    iget v9, p0, Lkotlinx/coroutines/H;->f:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    sget-object v9, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {v6, v9}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/a0;

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lkotlinx/coroutines/a0;->a()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v6}, Lkotlinx/coroutines/a0;->r()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lkotlinx/coroutines/H;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v6}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v8}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/H;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    sget-object v2, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_6

    :try_start_2
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0}, Lv3/j;->a()V

    sget-object v0, Le3/f;->a:Le3/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/H;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    :try_start_4
    invoke-virtual {v4}, Lkotlinx/coroutines/u0;->f0()V

    throw v5

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v2

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lkotlinx/coroutines/u0;->f0()V

    throw v5

    :cond_7
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    invoke-interface {v0}, Lv3/j;->a()V

    sget-object v0, Le3/f;->a:Le3/f;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-static {v0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/H;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
