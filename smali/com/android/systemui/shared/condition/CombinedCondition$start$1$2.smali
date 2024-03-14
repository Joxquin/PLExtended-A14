.class final Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Boolean;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->clearCondition()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 4
    :goto_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1$2;->emit(Ljava/lang/Boolean;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
