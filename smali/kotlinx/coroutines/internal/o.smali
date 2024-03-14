.class public abstract Lkotlinx/coroutines/internal/o;
.super Lkotlinx/coroutines/internal/x;
.source "SourceFile"


# instance fields
.field public final a:Lt3/f;

.field public final b:Lkotlinx/coroutines/internal/p;

.field public c:Lkotlinx/coroutines/internal/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/p;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/x;-><init>()V

    sget-object v0, Lkotlinx/coroutines/internal/a;->a:Lkotlinx/coroutines/internal/E;

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/o;->a:Lt3/f;

    iput-object p1, p0, Lkotlinx/coroutines/internal/o;->b:Lkotlinx/coroutines/internal/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/o;->a:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/a;->a:Lkotlinx/coroutines/internal/E;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/o;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/E;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/coroutines/internal/o;->a:Lt3/f;

    iget-object v2, v2, Lt3/f;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/o;->a:Lt3/f;

    invoke-virtual {v2, v1, v0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/o;->a:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    :cond_2
    :goto_0
    check-cast p1, Lkotlinx/coroutines/internal/p;

    const-string v1, "affected"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/internal/o;->b:Lkotlinx/coroutines/internal/p;

    if-eqz v1, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lkotlinx/coroutines/internal/o;->c:Lkotlinx/coroutines/internal/p;

    :goto_2
    if-eqz v3, :cond_5

    iget-object p1, p1, Lkotlinx/coroutines/internal/p;->d:Lt3/f;

    invoke-virtual {p1, p0, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    iget-object p0, p0, Lkotlinx/coroutines/internal/o;->c:Lkotlinx/coroutines/internal/p;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/p;->f(Lkotlinx/coroutines/internal/p;)V

    :cond_5
    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/E;
.end method
