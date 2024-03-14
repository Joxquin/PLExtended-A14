.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/shared/condition/Condition$Callback;

.field final synthetic $this_toFlow:Lcom/android/systemui/shared/condition/Condition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$callback:Lcom/android/systemui/shared/condition/Condition$Callback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->invoke()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;->$callback:Lcom/android/systemui/shared/condition/Condition$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/condition/Condition;->removeCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    return-void
.end method
