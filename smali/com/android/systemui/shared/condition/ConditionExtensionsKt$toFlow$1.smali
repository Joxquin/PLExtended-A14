.class final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# annotations
.annotation runtime Lg3/c;
    c = "com.android.systemui.shared.condition.ConditionExtensionsKt$toFlow$1"
    f = "ConditionExtensions.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_toFlow:Lcom/android/systemui/shared/condition/Condition;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Condition;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;-><init>(Lcom/android/systemui/shared/condition/Condition;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/p;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invoke(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    new-instance v1, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$callback$1;-><init>(Lkotlinx/coroutines/channels/p;)V

    iget-object v3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/condition/Condition;->addCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    iget-object v3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-interface {v1, v3}, Lcom/android/systemui/shared/condition/Condition$Callback;->onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V

    new-instance v3, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;

    iget-object v4, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->$this_toFlow:Lcom/android/systemui/shared/condition/Condition;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1$1;-><init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V

    iput v2, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/n;->a(Lkotlinx/coroutines/channels/p;Lm3/a;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
