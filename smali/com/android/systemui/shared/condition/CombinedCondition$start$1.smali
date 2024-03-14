.class final Lcom/android/systemui/shared/condition/CombinedCondition$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# annotations
.annotation runtime Lg3/c;
    c = "com.android.systemui.shared.condition.CombinedCondition$start$1"
    f = "CombinedCondition.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 0

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/B;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->invoke(Lkotlinx/coroutines/B;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/B;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-static {p1}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$getConditions$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v4}, Lcom/android/systemui/shared/condition/Condition;->isOverridingCondition()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lkotlin/collections/EmptyList;->d:Lkotlin/collections/EmptyList;

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p1, v3, v2}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/d;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/d;)Lkotlinx/coroutines/flow/d;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    new-instance v4, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/c;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Map;)V

    sget v1, Lkotlinx/coroutines/flow/j;->a:I

    new-instance v1, Lkotlinx/coroutines/flow/internal/d;

    invoke-direct {v1, v4, p1}, Lkotlinx/coroutines/flow/internal/d;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1;Lkotlinx/coroutines/flow/d;)V

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {p1, v3}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V

    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;->label:I

    invoke-virtual {v1, p1, p0}, Lkotlinx/coroutines/flow/internal/b;->a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
