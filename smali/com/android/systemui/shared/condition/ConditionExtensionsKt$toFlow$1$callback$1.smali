.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/condition/Condition$Callback;


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->isConditionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->isConditionMet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->p(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/p;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/s;->p(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
