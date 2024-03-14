.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->emit(ZLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1$1;->this$0:Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
