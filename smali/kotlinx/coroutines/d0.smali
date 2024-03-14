.class public abstract Lkotlinx/coroutines/d0;
.super Lkotlinx/coroutines/s;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/K;
.implements Lkotlinx/coroutines/V;


# instance fields
.field public g:Lkotlinx/coroutines/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b()Lkotlinx/coroutines/l0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/d0;->l()Lkotlinx/coroutines/h0;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/d0;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/h0;->d:Lt3/f;

    sget-object v3, Lkotlinx/coroutines/i0;->g:Lkotlinx/coroutines/M;

    invoke-virtual {v2, v1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/V;

    if-eqz v0, :cond_7

    check-cast v1, Lkotlinx/coroutines/V;

    invoke-interface {v1}, Lkotlinx/coroutines/V;->b()Lkotlinx/coroutines/l0;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/y;

    if-eqz v1, :cond_4

    check-cast v0, Lkotlinx/coroutines/internal/y;

    iget-object p0, v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/p;

    goto :goto_0

    :cond_4
    if-ne v0, p0, :cond_5

    check-cast v0, Lkotlinx/coroutines/internal/p;

    goto :goto_0

    :cond_5
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/p;

    iget-object v2, v1, Lkotlinx/coroutines/internal/p;->f:Lt3/f;

    iget-object v2, v2, Lt3/f;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/y;

    if-nez v2, :cond_6

    new-instance v2, Lkotlinx/coroutines/internal/y;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/internal/y;-><init>(Lkotlinx/coroutines/internal/p;)V

    iget-object v3, v1, Lkotlinx/coroutines/internal/p;->f:Lt3/f;

    invoke-virtual {v3, v2}, Lt3/f;->c(Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {v3, v0, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/p;->e()Lkotlinx/coroutines/internal/p;

    :cond_7
    :goto_0
    return-void
.end method

.method public final l()Lkotlinx/coroutines/h0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/d0;->g:Lkotlinx/coroutines/h0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "job"

    invoke-static {p0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/d0;->l()Lkotlinx/coroutines/h0;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[job@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
