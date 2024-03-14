.class public Lkotlinx/coroutines/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt3/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/coroutines/internal/s;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/s;-><init>(IZ)V

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    :goto_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final b()I
    .locals 4

    iget-object p0, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/s;

    iget-object p0, p0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    iget-wide v0, p0, Lt3/e;->b:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    :goto_0
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->d()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/internal/s;->g:Lkotlinx/coroutines/internal/E;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/q;->a:Lt3/f;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
