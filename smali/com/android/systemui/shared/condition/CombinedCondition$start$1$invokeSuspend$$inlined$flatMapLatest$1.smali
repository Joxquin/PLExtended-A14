.class public final Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lm3/q;


# annotations
.annotation runtime Lg3/c;
    c = "com.android.systemui.shared.condition.CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1"
    f = "CombinedCondition.kt"
    l = {
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $groupedConditions$inlined:Ljava/util/Map;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/e;

    check-cast p3, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/e;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/e;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/c;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V

    iput-object p1, v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Le3/f;->a:Le3/f;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/e;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->$groupedConditions$inlined:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lkotlin/collections/EmptyList;->d:Lkotlin/collections/EmptyList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/d;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v3, Lkotlinx/coroutines/flow/g;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/g;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    const-string v2, "<this>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p1, Lkotlinx/coroutines/flow/l;

    if-nez v2, :cond_5

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/d;->a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Le3/f;->a:Le3/f;

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :cond_5
    check-cast p1, Lkotlinx/coroutines/flow/l;

    const/4 p0, 0x0

    throw p0
.end method
