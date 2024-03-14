.class public final Lkotlinx/coroutines/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/V;


# instance fields
.field public final d:Lkotlinx/coroutines/l0;

.field public final e:Lt3/b;

.field public final f:Lt3/f;

.field public final g:Lt3/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/l0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/f0;->d:Lkotlinx/coroutines/l0;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->a(Z)Lt3/b;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/f0;->e:Lt3/b;

    invoke-static {p2}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/f0;->f:Lt3/f;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()Lkotlinx/coroutines/l0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/f0;->d:Lkotlinx/coroutines/l0;

    return-object p0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/f0;->f:Lt3/f;

    invoke-virtual {p0, p1}, Lt3/f;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    invoke-virtual {p0, p1}, Lt3/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    invoke-virtual {p0, v1}, Lt3/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of p0, v0, Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "State is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/f0;->f:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lkotlinx/coroutines/i0;->e:Lkotlinx/coroutines/internal/E;

    iget-object p0, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    invoke-virtual {p0, p1}, Lt3/f;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "State is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->e()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/f0;->e:Lt3/b;

    iget v1, v1, Lt3/b;->b:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/f0;->d()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/f0;->g:Lt3/f;

    iget-object v3, v3, Lt3/f;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/f0;->d:Lkotlinx/coroutines/l0;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finishing[cancelling="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", completing="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rootCause="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exceptions="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", list="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
