.class public final Lkotlinx/coroutines/g0;
.super Lkotlinx/coroutines/internal/o;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lkotlinx/coroutines/h0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/p;Lkotlinx/coroutines/h0;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/g0;->d:Lkotlinx/coroutines/h0;

    iput-object p3, p0, Lkotlinx/coroutines/g0;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/o;-><init>(Lkotlinx/coroutines/internal/p;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/E;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/internal/p;

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/g0;->d:Lkotlinx/coroutines/h0;

    invoke-virtual {p1}, Lkotlinx/coroutines/h0;->N()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/g0;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlinx/coroutines/internal/n;->a:Lkotlinx/coroutines/internal/E;

    :goto_1
    return-object p0
.end method
