.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/p;

.field final synthetic $conditions:Ljava/util/Collection;

.field final synthetic $filterUnknown:Z

.field final synthetic $flows:Ljava/util/List;

.field final synthetic $index:I

.field final synthetic $jobs:Ljava/util/List;

.field final synthetic $values:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/android/systemui/shared/condition/CombinedCondition;Lkotlinx/coroutines/channels/p;Ljava/util/List;Ljava/util/Collection;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$values:Ljava/util/List;

    iput p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$index:I

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    iput-object p5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$jobs:Ljava/util/List;

    iput-object p6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$conditions:Ljava/util/Collection;

    iput-object p7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$flows:Ljava/util/List;

    iput-boolean p8, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$filterUnknown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Boolean;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9

    .line 2
    iget-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$values:Ljava/util/List;

    iget v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$index:I

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$shouldEarlyReturn(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/s;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$jobs:Ljava/util/List;

    iget-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$conditions:Ljava/util/Collection;

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$values:Ljava/util/List;

    iget p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$index:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->access$invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V

    goto :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$flows:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$filterUnknown:Z

    iget-object v3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$values:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    iget-object v5, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object v6, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$jobs:Ljava/util/List;

    iget-object v7, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->$conditions:Ljava/util/Collection;

    .line 7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lkotlinx/coroutines/a0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    if-eqz v0, :cond_2

    move v8, p2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    move v8, p0

    .line 9
    :goto_2
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->access$invokeSuspend$collectFlow(Ljava/util/List;ZLjava/util/List;Lkotlinx/coroutines/channels/p;Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/List;Ljava/util/Collection;I)V

    .line 10
    :goto_3
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$collectFlow$1$1;->emit(Ljava/lang/Boolean;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
