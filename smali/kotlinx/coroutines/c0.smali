.class public final Lkotlinx/coroutines/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lkotlinx/coroutines/a0;->b:I

    sget-object v0, Lkotlinx/coroutines/Z;->d:Lkotlinx/coroutines/Z;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/a0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/a0;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
