.class public final Lkotlinx/coroutines/e0;
.super Lkotlinx/coroutines/d0;
.source "SourceFile"


# instance fields
.field public final h:Lkotlinx/coroutines/h0;

.field public final i:Lkotlinx/coroutines/f0;

.field public final j:Lkotlinx/coroutines/n;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h0;Lkotlinx/coroutines/f0;Lkotlinx/coroutines/n;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/coroutines/d0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/e0;->h:Lkotlinx/coroutines/h0;

    iput-object p2, p0, Lkotlinx/coroutines/e0;->i:Lkotlinx/coroutines/f0;

    iput-object p3, p0, Lkotlinx/coroutines/e0;->j:Lkotlinx/coroutines/n;

    iput-object p4, p0, Lkotlinx/coroutines/e0;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/e0;->k(Ljava/lang/Throwable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/e0;->h:Lkotlinx/coroutines/h0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlinx/coroutines/e0;->j:Lkotlinx/coroutines/n;

    invoke-static {v0}, Lkotlinx/coroutines/h0;->T(Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/n;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/e0;->i:Lkotlinx/coroutines/f0;

    iget-object p0, p0, Lkotlinx/coroutines/e0;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0, p0}, Lkotlinx/coroutines/h0;->b0(Lkotlinx/coroutines/f0;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/h0;->K(Lkotlinx/coroutines/f0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h0;->C(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
