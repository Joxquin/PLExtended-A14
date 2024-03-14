.class final Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $conditions:Ljava/util/Collection;

.field final synthetic $jobs:Ljava/util/List;

.field final synthetic $values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$jobs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$conditions:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$values:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->invoke()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$jobs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$conditions:Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1$1;->$values:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;->access$invokeSuspend$cancelAllExcept(Ljava/util/List;Ljava/util/Collection;Ljava/util/List;I)V

    return-void
.end method
