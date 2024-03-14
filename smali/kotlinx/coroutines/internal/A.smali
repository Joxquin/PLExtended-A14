.class public Lkotlinx/coroutines/internal/A;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lg3/b;


# instance fields
.field public final g:Lkotlin/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {p1, p0}, Lkotlinx/coroutines/t;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/internal/h;->a(Lkotlin/coroutines/c;Ljava/lang/Object;Lm3/l;)V

    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    invoke-static {p1, p0}, Lkotlinx/coroutines/t;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lg3/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/A;->g:Lkotlin/coroutines/c;

    instance-of v0, p0, Lg3/b;

    if-eqz v0, :cond_0

    check-cast p0, Lg3/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
