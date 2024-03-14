.class public abstract Lkotlinx/coroutines/N;
.super Lkotlinx/coroutines/x;
.source "SourceFile"


# instance fields
.field public f:J

.field public g:Z

.field public h:Lkotlin/collections/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/N;->f:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/N;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lkotlinx/coroutines/N;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/N;->shutdown()V

    :cond_1
    return-void
.end method

.method public final E(Lkotlinx/coroutines/H;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/N;->h:Lkotlin/collections/j;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/collections/j;

    invoke-direct {v0}, Lkotlin/collections/j;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/N;->h:Lkotlin/collections/j;

    :cond_0
    invoke-virtual {v0, p1}, Lkotlin/collections/j;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Z)V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/N;->f:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lkotlinx/coroutines/N;->f:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/N;->g:Z

    :cond_1
    return-void
.end method

.method public final G()Z
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/N;->h:Lkotlin/collections/j;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/j;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/j;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lkotlinx/coroutines/H;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/H;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
