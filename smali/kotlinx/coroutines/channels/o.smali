.class public final Lkotlinx/coroutines/channels/o;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/p;
.implements Lkotlinx/coroutines/channels/f;


# instance fields
.field public final g:Lkotlinx/coroutines/channels/f;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/c;)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/Throwable;)V
    .locals 1

    check-cast p1, Ljava/util/concurrent/CancellationException;

    iget-object v0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/r;->b(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/f0;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/f0;

    invoke-virtual {v0}, Lkotlinx/coroutines/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->H()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/a0;)V

    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/o;->F(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final c0(Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/s;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final d0(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Le3/f;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->g(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->g(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/r;->iterator()Lkotlinx/coroutines/channels/g;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lm3/l;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->m(Lm3/l;)V

    return-void
.end method

.method public final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/s;->q(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/o;->g:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/s;->s()Z

    move-result p0

    return p0
.end method
