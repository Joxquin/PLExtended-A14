.class public final Lkotlinx/coroutines/h;
.super Lkotlinx/coroutines/H;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/g;
.implements Lg3/b;
.implements Lkotlinx/coroutines/w0;


# instance fields
.field public final g:Lkotlin/coroutines/c;

.field public final h:Lkotlin/coroutines/i;

.field public final i:Lt3/d;

.field public final j:Lt3/f;

.field public final k:Lt3/f;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/H;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    const p1, 0x1fffffff

    invoke-static {p1}, Lt3/c;->b(I)Lt3/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    sget-object p1, Lkotlinx/coroutines/b;->d:Lkotlinx/coroutines/b;

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    return-void
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x(Lkotlinx/coroutines/n0;Ljava/lang/Object;ILm3/l;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    instance-of p2, p0, Lkotlinx/coroutines/e;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Lkotlinx/coroutines/p;

    instance-of v0, p0, Lkotlinx/coroutines/e;

    if-eqz v0, :cond_5

    check-cast p0, Lkotlinx/coroutines/e;

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    move-object v2, p0

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/e;Lm3/l;Ljava/lang/Throwable;I)V

    move-object p1, p2

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    const-string p1, "cause"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    :cond_0
    iget-object v6, p1, Lt3/f;->b:Ljava/lang/Object;

    instance-of v0, v6, Lkotlinx/coroutines/n0;

    if-nez v0, :cond_7

    instance-of v0, v6, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, v6, Lkotlinx/coroutines/p;

    if-eqz v0, :cond_6

    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/p;

    iget-object v1, v0, Lkotlinx/coroutines/p;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, p2, v2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/e;Ljava/lang/Throwable;I)Lkotlinx/coroutines/p;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v2, v6, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lkotlinx/coroutines/p;->b:Lkotlinx/coroutines/e;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h;->i(Lkotlinx/coroutines/e;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/p;->c:Lm3/l;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h;->j(Lm3/l;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v7, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    new-instance v8, Lkotlinx/coroutines/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v8

    move-object v1, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/e;Lm3/l;Ljava/lang/Throwable;I)V

    invoke-virtual {v7, v6, v8}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lkotlinx/coroutines/internal/B;I)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    :cond_0
    iget v1, v0, Lt3/d;->b:I

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lt3/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->r(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invokeOnCancellation should be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Lkotlin/coroutines/c;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lkotlinx/coroutines/H;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/p;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/p;

    iget-object p1, p1, Lkotlinx/coroutines/p;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final f(Ljava/lang/Object;Lm3/l;)Lkotlinx/coroutines/internal/E;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    :cond_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/n0;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/n0;

    iget v3, p0, Lkotlinx/coroutines/H;->f:I

    invoke-static {v2, p1, v3, p2}, Lkotlinx/coroutines/h;->x(Lkotlinx/coroutines/n0;Ljava/lang/Object;ILm3/l;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v3, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->s()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->m()V

    :cond_1
    sget-object p0, Lkotlinx/coroutines/i;->a:Lkotlinx/coroutines/internal/E;

    goto :goto_0

    :cond_2
    instance-of p0, v1, Lkotlinx/coroutines/p;

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCallerFrame()Lg3/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

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

    iget-object p0, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final i(Lkotlinx/coroutines/e;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/f;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final j(Lm3/l;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "onCancellation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p2}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Lkotlinx/coroutines/internal/B;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p2, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    iget p2, p2, Lt3/d;->b:I

    const v0, 0x1fffffff

    and-int/2addr p2, v0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/B;->g(ILkotlin/coroutines/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/A;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    :cond_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/n0;

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lkotlinx/coroutines/k;

    instance-of v3, v1, Lkotlinx/coroutines/e;

    if-nez v3, :cond_3

    instance-of v3, v1, Lkotlinx/coroutines/internal/B;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, p0, p1, v3}, Lkotlinx/coroutines/k;-><init>(Lkotlin/coroutines/c;Ljava/lang/Throwable;Z)V

    iget-object v3, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v3, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/n0;

    instance-of v2, v0, Lkotlinx/coroutines/e;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlinx/coroutines/e;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/h;->i(Lkotlinx/coroutines/e;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    instance-of v0, v0, Lkotlinx/coroutines/internal/B;

    if-eqz v0, :cond_5

    check-cast v1, Lkotlinx/coroutines/internal/B;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/h;->k(Lkotlinx/coroutines/internal/B;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/h;->s()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->m()V

    :cond_6
    iget p1, p0, Lkotlinx/coroutines/H;->f:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->n(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/K;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/K;->c()V

    iget-object p0, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    sget-object v0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    invoke-virtual {p0, v0}, Lt3/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(I)V
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    :cond_0
    iget v1, v0, Lt3/d;->b:I

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    const v5, 0x1fffffff

    and-int/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    add-int/2addr v5, v6

    invoke-virtual {v2, v1, v5}, Lt3/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    if-nez v1, :cond_d

    instance-of v2, v0, Lkotlinx/coroutines/internal/g;

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move p1, v4

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v3

    :goto_3
    iget v5, p0, Lkotlinx/coroutines/H;->f:I

    if-eq v5, v3, :cond_8

    if-ne v5, v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v3

    :goto_5
    if-ne p1, v2, :cond_d

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/g;

    iget-object p1, p1, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/x;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/x;->C(Lkotlin/coroutines/i;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/s0;->a()Lkotlinx/coroutines/N;

    move-result-object p1

    iget-wide v0, p1, Lkotlinx/coroutines/N;->f:J

    const-wide v5, 0x100000000L

    cmp-long v0, v0, v5

    if-ltz v0, :cond_a

    move v4, v3

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/N;->E(Lkotlinx/coroutines/H;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/N;->F(Z)V

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    invoke-static {p0, v0, v3}, Lkotlinx/coroutines/I;->a(Lkotlinx/coroutines/H;Lkotlin/coroutines/c;Z)V

    :cond_c
    invoke-virtual {p1}, Lkotlinx/coroutines/N;->G()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_c

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/H;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    invoke-virtual {p1}, Lkotlinx/coroutines/N;->D()V

    goto :goto_7

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lkotlinx/coroutines/N;->D()V

    throw p0

    :cond_d
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/I;->a(Lkotlinx/coroutines/H;Lkotlin/coroutines/c;Z)V

    :goto_7
    return-void
.end method

.method public final o()Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->s()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    :cond_0
    iget v2, v1, Lt3/d;->b:I

    shr-int/lit8 v3, v2, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v3, p0, Lkotlinx/coroutines/h;->i:Lt3/d;

    const v7, 0x1fffffff

    and-int/2addr v7, v2

    const/high16 v8, 0x20000000

    add-int/2addr v7, v8

    invoke-virtual {v3, v2, v7}, Lt3/d;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/K;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Lkotlinx/coroutines/K;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->u()V

    :cond_4
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->u()V

    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-nez v1, :cond_b

    iget v1, p0, Lkotlinx/coroutines/H;->f:I

    if-eq v1, v5, :cond_7

    if-ne v1, v6, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    if-eqz v4, :cond_a

    iget-object v1, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    sget-object v2, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {v1, v2}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/a0;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lkotlinx/coroutines/a0;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v1}, Lkotlinx/coroutines/a0;->r()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/h;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    check-cast v0, Lkotlinx/coroutines/q;

    iget-object p0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Lkotlinx/coroutines/K;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    instance-of v1, v1, Lkotlinx/coroutines/n0;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/K;->c()V

    iget-object p0, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    sget-object v0, Lkotlinx/coroutines/m0;->d:Lkotlinx/coroutines/m0;

    invoke-virtual {p0, v0}, Lt3/f;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final q()Lkotlinx/coroutines/K;
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    sget-object v1, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lkotlinx/coroutines/l;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/l;-><init>(Lkotlinx/coroutines/h;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lkotlinx/coroutines/Z;->a(Lkotlinx/coroutines/a0;ZLkotlinx/coroutines/d0;I)Lkotlinx/coroutines/K;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/h;->k:Lt3/f;

    invoke-virtual {p0, v1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    :cond_0
    iget-object v7, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v1, v7, Lkotlinx/coroutines/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v1, v7, p1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    instance-of v1, v7, Lkotlinx/coroutines/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v1, v7, Lkotlinx/coroutines/internal/B;

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_f

    instance-of v1, v7, Lkotlinx/coroutines/q;

    if-eqz v1, :cond_8

    move-object v0, v7

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v2, v0, Lkotlinx/coroutines/q;->b:Lt3/b;

    invoke-virtual {v2}, Lt3/b;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v7, Lkotlinx/coroutines/k;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/e;

    if-eqz v0, :cond_5

    check-cast p1, Lkotlinx/coroutines/e;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/h;->i(Lkotlinx/coroutines/e;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    check-cast p1, Lkotlinx/coroutines/internal/B;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/h;->k(Lkotlinx/coroutines/internal/B;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-static {p1, v7}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_8
    instance-of v1, v7, Lkotlinx/coroutines/p;

    if-eqz v1, :cond_d

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/p;

    iget-object v4, v1, Lkotlinx/coroutines/p;->b:Lkotlinx/coroutines/e;

    if-nez v4, :cond_c

    instance-of v4, p1, Lkotlinx/coroutines/internal/B;

    if-eqz v4, :cond_9

    return-void

    :cond_9
    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/e;

    iget-object v5, v1, Lkotlinx/coroutines/p;->e:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual {p0, v4, v5}, Lkotlinx/coroutines/h;->i(Lkotlinx/coroutines/e;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    const/16 v2, 0x1d

    invoke-static {v1, v4, v3, v2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/e;Ljava/lang/Throwable;I)Lkotlinx/coroutines/p;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v2, v7, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_c
    invoke-static {p1, v7}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_d
    instance-of v1, p1, Lkotlinx/coroutines/internal/B;

    if-eqz v1, :cond_e

    return-void

    :cond_e
    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/e;

    new-instance v8, Lkotlinx/coroutines/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/e;Lm3/l;Ljava/lang/Throwable;I)V

    iget-object v1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v1, v7, v8}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_f
    invoke-static {p1, v7}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
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
    iget v0, p0, Lkotlinx/coroutines/H;->f:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/h;->v(Ljava/lang/Object;ILm3/l;)V

    return-void
.end method

.method public final s()Z
    .locals 4

    iget v0, p0, Lkotlinx/coroutines/H;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/internal/g;

    iget-object p0, p0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    invoke-static {v0}, Lkotlinx/coroutines/D;->c(Lkotlin/coroutines/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/n0;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lkotlinx/coroutines/k;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CancellableContinuation("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "){"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlinx/coroutines/internal/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    :cond_1
    iget-object v3, v1, Lt3/f;->b:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    invoke-virtual {v3, v4, p0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    instance-of v1, v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    invoke-virtual {v0, v3, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/h;->m()V

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/h;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public final v(Ljava/lang/Object;ILm3/l;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    :cond_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/n0;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/n0;

    invoke-static {v2, p1, p2, p3}, Lkotlinx/coroutines/h;->x(Lkotlinx/coroutines/n0;Ljava/lang/Object;ILm3/l;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/h;->j:Lt3/f;

    invoke-virtual {v3, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->s()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->m()V

    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/h;->n(I)V

    return-void

    :cond_2
    instance-of p2, v1, Lkotlinx/coroutines/k;

    if-eqz p2, :cond_4

    check-cast v1, Lkotlinx/coroutines/k;

    iget-object p2, v1, Lkotlinx/coroutines/k;->c:Lt3/b;

    invoke-virtual {p2}, Lt3/b;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    iget-object p1, v1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/h;->j(Lm3/l;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Already resumed, but proposed with update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lkotlinx/coroutines/H;->f:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->n(I)V

    return-void
.end method
