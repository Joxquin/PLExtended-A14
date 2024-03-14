.class public abstract Lkotlinx/coroutines/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final d:Lt3/f;

.field public final e:Lt3/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt3/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/internal/c;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    sget-object v0, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/E;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/internal/c;

    return-object p0
.end method

.method public abstract c()Z
.end method

.method public final d()V
    .locals 7

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/c;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/c;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v4, v3, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    :cond_5
    iget-object v5, v4, Lt3/f;->b:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/c;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move-object v6, v0

    :goto_4
    invoke-virtual {v4, v5, v6}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_7

    iget-object v4, v0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    invoke-virtual {v4, v3}, Lt3/f;->d(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    if-eqz v3, :cond_1

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_a
    return-void
.end method
