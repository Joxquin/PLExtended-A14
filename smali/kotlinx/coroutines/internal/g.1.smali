.class public final Lkotlinx/coroutines/internal/g;
.super Lkotlinx/coroutines/H;
.source "SourceFile"

# interfaces
.implements Lg3/b;
.implements Lkotlin/coroutines/c;


# instance fields
.field public final g:Lkotlinx/coroutines/x;

.field public final h:Lkotlin/coroutines/c;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Lt3/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/H;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    iput-object p2, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    sget-object p1, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/E;

    iput-object p1, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/H;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/g;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lkotlinx/coroutines/r;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/r;

    iget-object p0, p1, Lkotlinx/coroutines/r;->b:Lm3/l;

    invoke-interface {p0, p2}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()Lkotlin/coroutines/c;
    .locals 0

    return-object p0
.end method

.method public final getCallerFrame()Lg3/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    instance-of v0, p0, Lg3/b;

    if-eqz v0, :cond_0

    check-cast p0, Lg3/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {p0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/E;

    iput-object v1, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlinx/coroutines/q;

    invoke-direct {v3, v1, v2}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/x;->C(Lkotlin/coroutines/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v3, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/H;->f:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/s0;->a()Lkotlinx/coroutines/N;

    move-result-object v0

    iget-wide v4, v0, Lkotlinx/coroutines/N;->f:J

    const-wide v6, 0x100000000L

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iput-object v3, p0, Lkotlinx/coroutines/internal/g;->i:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/H;->f:I

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/N;->E(Lkotlinx/coroutines/H;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/N;->F(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/internal/g;->j:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {v3, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/N;->G()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/H;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/N;->D()V

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/coroutines/N;->D()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    iget-object p0, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-static {p0}, Lkotlinx/coroutines/D;->c(Lkotlin/coroutines/c;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DispatchedContinuation["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
