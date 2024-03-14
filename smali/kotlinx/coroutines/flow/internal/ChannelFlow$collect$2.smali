.class final Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# annotations
.annotation runtime Lg3/c;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collector:Lkotlinx/coroutines/flow/e;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/a;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/internal/a;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/e;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/a;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/e;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/a;

    invoke-direct {v0, p2, v1, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;-><init>(Lkotlin/coroutines/c;Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/internal/a;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/B;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/B;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/e;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "scope"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x2

    const/4 v5, -0x3

    iget v6, v3, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-ne v6, v5, :cond_2

    move v6, v4

    :cond_2
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->f:Lkotlinx/coroutines/CoroutineStart;

    new-instance v7, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;-><init>(Lkotlinx/coroutines/flow/internal/a;Lkotlin/coroutines/c;)V

    sget-object v9, Lkotlinx/coroutines/channels/BufferOverflow;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    const-string v10, "context"

    iget-object v11, v3, Lkotlinx/coroutines/flow/internal/a;->a:Lkotlin/coroutines/i;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "onBufferOverflow"

    iget-object v3, v3, Lkotlinx/coroutines/flow/internal/a;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v6, v4, :cond_a

    const/4 v4, -0x1

    const/4 v10, 0x0

    if-eq v6, v4, :cond_7

    if-eqz v6, :cond_5

    const v4, 0x7fffffff

    if-eq v6, v4, :cond_4

    if-ne v3, v9, :cond_3

    new-instance v3, Lkotlinx/coroutines/channels/c;

    invoke-direct {v3, v6, v8}, Lkotlinx/coroutines/channels/c;-><init>(ILm3/l;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lkotlinx/coroutines/channels/m;

    invoke-direct {v4, v6, v3, v8}, Lkotlinx/coroutines/channels/m;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lm3/l;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lkotlinx/coroutines/channels/c;

    invoke-direct {v3, v4, v8}, Lkotlinx/coroutines/channels/c;-><init>(ILm3/l;)V

    goto :goto_1

    :cond_5
    if-ne v3, v9, :cond_6

    new-instance v3, Lkotlinx/coroutines/channels/c;

    invoke-direct {v3, v10, v8}, Lkotlinx/coroutines/channels/c;-><init>(ILm3/l;)V

    goto :goto_1

    :cond_6
    new-instance v4, Lkotlinx/coroutines/channels/m;

    invoke-direct {v4, v2, v3, v8}, Lkotlinx/coroutines/channels/m;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lm3/l;)V

    goto :goto_0

    :cond_7
    if-ne v3, v9, :cond_8

    move v10, v2

    :cond_8
    if-eqz v10, :cond_9

    new-instance v3, Lkotlinx/coroutines/channels/m;

    sget-object v4, Lkotlinx/coroutines/channels/BufferOverflow;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-direct {v3, v2, v4, v8}, Lkotlinx/coroutines/channels/m;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lm3/l;)V

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-ne v3, v9, :cond_b

    new-instance v3, Lkotlinx/coroutines/channels/c;

    sget-object v4, Lkotlinx/coroutines/channels/f;->c:Lkotlinx/coroutines/channels/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lkotlinx/coroutines/channels/e;->b:I

    invoke-direct {v3, v4, v8}, Lkotlinx/coroutines/channels/c;-><init>(ILm3/l;)V

    goto :goto_1

    :cond_b
    new-instance v4, Lkotlinx/coroutines/channels/m;

    invoke-direct {v4, v2, v3, v8}, Lkotlinx/coroutines/channels/m;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lm3/l;)V

    :goto_0
    move-object v3, v4

    :goto_1
    invoke-static {p1, v11}, Lkotlinx/coroutines/v;->c(Lkotlinx/coroutines/B;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p1

    new-instance v4, Lkotlinx/coroutines/channels/o;

    invoke-direct {v4, p1, v3}, Lkotlinx/coroutines/channels/o;-><init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/c;)V

    invoke-virtual {v4, v5, v4, v7}, Lkotlinx/coroutines/a;->e0(Lkotlinx/coroutines/CoroutineStart;Lkotlinx/coroutines/a;Lm3/p;)V

    iput v2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->label:I

    invoke-static {v1, v4, v2, p0}, Lkotlinx/coroutines/flow/h;->a(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/channels/o;ZLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    goto :goto_2

    :cond_c
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_2
    if-ne p0, v0, :cond_d

    return-object v0

    :cond_d
    :goto_3
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
