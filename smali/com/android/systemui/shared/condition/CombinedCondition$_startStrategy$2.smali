.class final Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/condition/CombinedCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;->this$0:Lcom/android/systemui/shared/condition/CombinedCondition;

    invoke-static {p0}, Lcom/android/systemui/shared/condition/CombinedCondition;->access$calculateStartStrategy(Lcom/android/systemui/shared/condition/CombinedCondition;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
