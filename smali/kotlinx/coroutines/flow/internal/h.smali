.class public final Lkotlinx/coroutines/flow/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# instance fields
.field public final a:Lkotlin/coroutines/i;

.field public final b:Ljava/lang/Object;

.field public final c:Lm3/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/i;)V
    .locals 1

    const-string v0, "emitContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/h;->a:Lkotlin/coroutines/i;

    invoke-static {p2}, Lkotlinx/coroutines/internal/H;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/h;->b:Ljava/lang/Object;

    new-instance p2, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;-><init>(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/h;->c:Lm3/p;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/h;->c:Lm3/p;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/h;->a:Lkotlin/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/h;->b:Ljava/lang/Object;

    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    new-instance v2, Lkotlinx/coroutines/flow/internal/g;

    invoke-direct {v2, p2, v1}, Lkotlinx/coroutines/flow/internal/g;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V

    const/4 p2, 0x2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->a(ILjava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    invoke-virtual {v0, p1, v2}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1
.end method
