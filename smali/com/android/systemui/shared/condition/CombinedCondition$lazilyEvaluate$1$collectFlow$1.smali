.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# annotations
.annotation runtime Lg3/c;
    c = "com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1$collectFlow$1"
    f = "CombinedCondition.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/p;

.field final synthetic $conditions:Ljava/util/Collection;

.field final synthetic $filterUnknown:Z

.field final synthetic $flows:Ljava/util/List;

.field final synthetic $index:I

.field final synthetic $jobs:Ljava/util/List;

.field final synthetic $values:Ljava/util/List;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/List;Lcom/android/systemui/shared/condition/CombinedCondition;Lkotlinx/coroutines/channels/p;Ljava/util/List;Ljava/util/Collection;ZLkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iput p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iput-object p5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    iput-object p6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iput-object p7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iput-boolean p8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 10

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    iget-object v6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iget-object v7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iget-boolean v8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;-><init>(Ljava/util/List;ILjava/util/List;Lcom/android/systemui/shared/condition/CombinedCondition;Lkotlinx/coroutines/channels/p;Ljava/util/List;Ljava/util/Collection;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/B;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->invoke(Lkotlinx/coroutines/B;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/B;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Le3/d;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/d;

    new-instance v1, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$values:Ljava/util/List;

    iget v5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$index:I

    iget-object v6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    iget-object v8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$jobs:Ljava/util/List;

    iget-object v9, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$conditions:Ljava/util/Collection;

    iget-object v10, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$flows:Ljava/util/List;

    iget-boolean v11, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->$filterUnknown:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;-><init>(Ljava/util/List;ILcom/android/systemui/shared/condition/CombinedCondition;Lkotlinx/coroutines/channels/p;Ljava/util/List;Ljava/util/Collection;Ljava/util/List;Z)V

    iput v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/d;->a(Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
