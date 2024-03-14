.class public final Lkotlinx/coroutines/l;
.super Lkotlinx/coroutines/b0;
.source "SourceFile"


# instance fields
.field public final h:Lkotlinx/coroutines/h;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/coroutines/b0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/l;->h:Lkotlinx/coroutines/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/l;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 5

    iget-object p1, p0, Lkotlinx/coroutines/l;->h:Lkotlinx/coroutines/h;

    invoke-virtual {p0}, Lkotlinx/coroutines/d0;->l()Lkotlinx/coroutines/h0;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlinx/coroutines/h0;->r()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/h;->g:Lkotlin/coroutines/c;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/internal/g;

    iget-object v1, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    :cond_1
    iget-object v2, v1, Lt3/f;->b:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    invoke-virtual {v2, v3, p0}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->l(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->s()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lkotlinx/coroutines/h;->m()V

    :cond_5
    :goto_3
    return-void
.end method
