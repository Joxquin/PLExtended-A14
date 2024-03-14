.class public abstract Lkotlinx/coroutines/internal/B;
.super Lkotlinx/coroutines/internal/c;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/n0;


# instance fields
.field public final f:J

.field public final g:Lt3/d;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/internal/B;I)V
    .locals 0

    invoke-direct {p0, p3}, Lkotlinx/coroutines/internal/c;-><init>(Lkotlinx/coroutines/internal/c;)V

    iput-wide p1, p0, Lkotlinx/coroutines/internal/B;->f:J

    shl-int/lit8 p1, p4, 0x10

    invoke-static {p1}, Lt3/c;->b(I)Lt3/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/B;->g:Lt3/d;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/B;->g:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/B;->f()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/B;->g:Lt3/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lt3/d;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v1

    sget-object v2, Lt3/g;->a:Lt3/g;

    iget-object v0, v0, Lt3/d;->a:Lt3/h;

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addAndGet(-65536):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lt3/h;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/B;->f()I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-nez p0, :cond_2

    move v2, v0

    :cond_2
    return v2
.end method

.method public abstract f()I
.end method

.method public abstract g(ILkotlin/coroutines/i;)V
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/B;->g:Lt3/d;

    invoke-virtual {v0}, Lt3/d;->c()I

    move-result v0

    sget v1, Lkotlinx/coroutines/channels/d;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/internal/B;->g:Lt3/d;

    :cond_0
    iget v1, v0, Lt3/d;->b:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/B;->f()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lt3/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    return v3
.end method
