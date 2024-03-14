.class public final Lkotlinx/coroutines/flow/internal/d;
.super Lkotlinx/coroutines/flow/internal/b;
.source "SourceFile"


# instance fields
.field public final e:Lm3/q;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;Lkotlinx/coroutines/flow/d;)V
    .locals 3

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-direct {p0, p2, v0, v2, v1}, Lkotlinx/coroutines/flow/internal/b;-><init>(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/d;->e:Lm3/q;

    return-void
.end method


# virtual methods
.method public final d(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;-><init>(Lkotlinx/coroutines/flow/internal/d;Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/C;->a(Lm3/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
