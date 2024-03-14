.class public Lkotlinx/coroutines/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final d:Lt3/f;

.field public final e:Lt3/f;

.field public final f:Lt3/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-static {p0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/p;->f:Lt3/f;

    return-void
.end method


# virtual methods
.method public final e()Lkotlinx/coroutines/internal/p;
    .locals 7

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/p;

    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    iget-object v4, v1, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    iget-object v4, v4, Lt3/f;->b:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    invoke-virtual {v2, v0, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->j()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v2

    :cond_3
    if-nez v4, :cond_4

    return-object v1

    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/x;

    if-eqz v5, :cond_5

    check-cast v4, Lkotlinx/coroutines/internal/x;

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/internal/y;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    iget-object v2, v3, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    check-cast v4, Lkotlinx/coroutines/internal/y;

    iget-object v4, v4, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2, v1, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v3

    goto :goto_1

    :cond_7
    iget-object v1, v1, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/p;

    goto :goto_2

    :cond_8
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/p;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public final f(Lkotlinx/coroutines/internal/p;)V
    .locals 3

    iget-object v0, p1, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    :cond_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/p;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    invoke-virtual {v2, v1, p0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->j()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->e()Lkotlinx/coroutines/internal/p;

    :cond_2
    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    :goto_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/internal/x;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/x;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final h()Lkotlinx/coroutines/internal/p;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Lkotlinx/coroutines/internal/E;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/y;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/p;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/p;

    :cond_2
    return-object v0
.end method

.method public final i()Lkotlinx/coroutines/internal/p;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->e()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/p;

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->j()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lkotlinx/coroutines/internal/p;->e:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/p;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public j()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/p;->g()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/y;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
