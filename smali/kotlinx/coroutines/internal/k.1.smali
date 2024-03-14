.class public final Lkotlinx/coroutines/internal/k;
.super Lkotlinx/coroutines/x;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/G;


# instance fields
.field public final f:Lkotlinx/coroutines/x;

.field public final g:I

.field public final synthetic h:Lkotlinx/coroutines/G;

.field public final i:Lt3/d;

.field public final j:Lkotlinx/coroutines/internal/q;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv3/n;I)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/x;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/x;

    iput p2, p0, Lkotlinx/coroutines/internal/k;->g:I

    instance-of p2, p1, Lkotlinx/coroutines/G;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/G;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/F;->a:Lkotlinx/coroutines/G;

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->h:Lkotlinx/coroutines/G;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->b(I)Lt3/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    new-instance p1, Lkotlinx/coroutines/internal/q;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/q;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/q;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/q;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    iget p1, p1, Lt3/d;->b:I

    iget p2, p0, Lkotlinx/coroutines/internal/k;->g:I

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    iget p2, p2, Lt3/d;->b:I

    iget v0, p0, Lkotlinx/coroutines/internal/k;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v0, :cond_0

    monitor-exit p1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p2, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    invoke-virtual {p2}, Lt3/d;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/k;->D()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lkotlinx/coroutines/internal/j;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/j;-><init>(Lkotlinx/coroutines/internal/k;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/x;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/x;->B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final D()Ljava/lang/Runnable;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    invoke-virtual {v1}, Lt3/d;->b()V

    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/q;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/q;->b()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->i:Lt3/d;

    invoke-virtual {v1}, Lt3/d;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method
