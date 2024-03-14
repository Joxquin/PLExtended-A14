.class public final Lkotlinx/coroutines/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/h;
    .locals 7

    instance-of v0, p0, Lkotlinx/coroutines/internal/g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/h;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/c;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    iget-object v2, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    :cond_1
    :goto_0
    iget-object v3, v2, Lt3/f;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    sget-object v2, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v0, v2}, Lt3/f;->d(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lkotlinx/coroutines/h;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    sget-object v6, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v5, v3, v6}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v3, Lkotlinx/coroutines/h;

    :goto_1
    if-eqz v3, :cond_6

    iget-object v0, v3, Lkotlinx/coroutines/h;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v0, Lkotlinx/coroutines/p;

    if-eqz v2, :cond_3

    check-cast v0, Lkotlinx/coroutines/p;

    iget-object v0, v0, Lkotlinx/coroutines/p;->d:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lkotlinx/coroutines/h;->m()V

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lkotlinx/coroutines/h;->i:Lt3/d;

    const v2, 0x1fffffff

    invoke-virtual {v0, v2}, Lt3/d;->d(I)V

    iget-object v0, v3, Lkotlinx/coroutines/h;->j:Lt3/f;

    sget-object v2, Lkotlinx/coroutines/b;->d:Lkotlinx/coroutines/b;

    invoke-virtual {v0, v2}, Lt3/f;->d(Ljava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_4

    move-object v4, v3

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lkotlinx/coroutines/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/c;)V

    return-object v0

    :cond_7
    sget-object v4, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    if-eq v3, v4, :cond_1

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
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
.end method
