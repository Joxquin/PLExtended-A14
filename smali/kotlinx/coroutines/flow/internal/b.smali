.class public abstract Lkotlinx/coroutines/flow/internal/b;
.super Lkotlinx/coroutines/flow/internal/a;
.source "SourceFile"


# instance fields
.field public final d:Lkotlinx/coroutines/flow/d;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/a;-><init>(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/b;->d:Lkotlinx/coroutines/flow/d;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/flow/internal/a;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "addedContext"

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/a;->a:Lkotlin/coroutines/i;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlinx/coroutines/v;->b(Lkotlin/coroutines/i;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v3}, Lkotlin/coroutines/i;->i(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lkotlinx/coroutines/v;->a(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object v2

    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/b;->d(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object p0, Le3/f;->a:Le3/f;

    goto :goto_3

    :cond_2
    sget-object v3, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-interface {v2, v3}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v4

    invoke-interface {v1, v3}, Lkotlin/coroutines/i;->e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    instance-of v3, p1, Lkotlinx/coroutines/flow/internal/f;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lkotlinx/coroutines/flow/internal/h;

    invoke-direct {v3, p1, v1}, Lkotlinx/coroutines/flow/internal/h;-><init>(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/i;)V

    move-object p1, v3

    :goto_1
    new-instance v1, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2;-><init>(Lkotlinx/coroutines/flow/internal/b;Lkotlin/coroutines/c;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/H;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlinx/coroutines/internal/H;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    new-instance v3, Lkotlinx/coroutines/flow/internal/g;

    invoke-direct {v3, p2, v2}, Lkotlinx/coroutines/flow/internal/g;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/i;)V

    const/4 p2, 0x2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/l;->a(ILjava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, p0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    if-ne p1, v0, :cond_4

    move-object p0, p1

    goto :goto_2

    :cond_4
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_2
    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object p0, Le3/f;->a:Le3/f;

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-static {v2, p0}, Lkotlinx/coroutines/internal/H;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1

    :cond_6
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/a;->a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_3

    :cond_7
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_3
    return-object p0
.end method

.method public final c(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/f;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/internal/f;-><init>(Lkotlinx/coroutines/channels/s;)V

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/internal/b;->d(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_0
    return-object p0
.end method

.method public abstract d(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lkotlinx/coroutines/flow/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/b;->d:Lkotlinx/coroutines/flow/d;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
