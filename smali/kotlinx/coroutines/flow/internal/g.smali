.class public final Lkotlinx/coroutines/flow/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/c;
.implements Lg3/b;


# instance fields
.field public final d:Lkotlin/coroutines/c;

.field public final e:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V
    .locals 1

    const-string v0, "uCont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/g;->d:Lkotlin/coroutines/c;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/g;->e:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lg3/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->d:Lkotlin/coroutines/c;

    instance-of v0, p0, Lg3/b;

    if-eqz v0, :cond_0

    check-cast p0, Lg3/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->e:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->d:Lkotlin/coroutines/c;

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
