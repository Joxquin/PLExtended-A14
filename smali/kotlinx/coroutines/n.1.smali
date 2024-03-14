.class public final Lkotlinx/coroutines/n;
.super Lkotlinx/coroutines/b0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/m;


# instance fields
.field public final h:Lkotlinx/coroutines/o;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/a;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/b0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/n;->h:Lkotlinx/coroutines/o;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/d0;->l()Lkotlinx/coroutines/h0;

    move-result-object p0

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h0;->E(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/d0;->l()Lkotlinx/coroutines/h0;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/n;->h:Lkotlinx/coroutines/o;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/o;->t(Lkotlinx/coroutines/h0;)V

    return-void
.end method
