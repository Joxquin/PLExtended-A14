.class public final Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;
.super Lcom/android/systemui/shared/condition/Condition;
.source "SourceFile"


# instance fields
.field final synthetic $scope:Lkotlinx/coroutines/B;

.field final synthetic $strategy:I

.field final synthetic $this_toCondition:Lkotlinx/coroutines/flow/d;

.field private job:Lkotlinx/coroutines/a0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/B;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$scope:Lkotlinx/coroutines/B;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$this_toCondition:Lkotlinx/coroutines/flow/d;

    iput p4, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$strategy:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/B;Ljava/lang/Boolean;Z)V

    return-void
.end method


# virtual methods
.method public final getJob()Lkotlinx/coroutines/a0;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Lkotlinx/coroutines/a0;

    return-object p0
.end method

.method public getStartStrategy()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$strategy:I

    return p0
.end method

.method public final setJob(Lkotlinx/coroutines/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Lkotlinx/coroutines/a0;

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$scope:Lkotlinx/coroutines/B;

    new-instance v1, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->$this_toCondition:Lkotlinx/coroutines/flow/d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1$start$1;-><init>(Lkotlinx/coroutines/flow/d;Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;Lkotlin/coroutines/c;)V

    const/4 v2, 0x3

    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/d;->a(Lkotlinx/coroutines/B;Lkotlinx/coroutines/CoroutineStart;Lm3/p;I)Lkotlinx/coroutines/q0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Lkotlinx/coroutines/a0;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Lkotlinx/coroutines/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/a0;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toCondition$1;->job:Lkotlinx/coroutines/a0;

    return-void
.end method
