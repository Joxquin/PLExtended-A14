.class public final Lcom/android/systemui/shared/condition/CombinedCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "SourceFile"


# instance fields
.field private final _startStrategy$delegate:Le3/c;

.field private final conditions:Ljava/util/Collection;

.field private job:Lkotlinx/coroutines/a0;

.field private final operand:I

.field private final scope:Lkotlinx/coroutines/B;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/B;Ljava/util/Collection;I)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/B;Ljava/lang/Boolean;Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Lkotlinx/coroutines/B;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    iput p3, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/condition/CombinedCondition$_startStrategy$2;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;)V

    invoke-static {p1}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->_startStrategy$delegate:Le3/c;

    return-void
.end method

.method public static final synthetic access$calculateStartStrategy(Lcom/android/systemui/shared/condition/CombinedCondition;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/CombinedCondition;->calculateStartStrategy()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getConditions$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic access$getOperand$p(Lcom/android/systemui/shared/condition/CombinedCondition;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    return p0
.end method

.method public static final synthetic access$getScope$p(Lcom/android/systemui/shared/condition/CombinedCondition;)Lkotlinx/coroutines/B;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Lkotlinx/coroutines/B;

    return-object p0
.end method

.method public static final synthetic access$lazilyEvaluate(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/condition/CombinedCondition;->lazilyEvaluate(Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldEarlyReturn(Lcom/android/systemui/shared/condition/CombinedCondition;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/CombinedCondition;->shouldEarlyReturn(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private final calculateStartStrategy()I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->conditions:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v1}, Lcom/android/systemui/shared/condition/Condition;->getStartStrategy()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private final get_startStrategy()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->_startStrategy$delegate:Le3/c;

    invoke-interface {p0}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final lazilyEvaluate(Ljava/util/Collection;Z)Lkotlinx/coroutines/flow/d;
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/systemui/shared/condition/CombinedCondition$lazilyEvaluate$1;-><init>(Ljava/util/Collection;ZLcom/android/systemui/shared/condition/CombinedCondition;Lkotlin/coroutines/c;)V

    new-instance p0, Lkotlinx/coroutines/flow/a;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/a;-><init>(Lm3/p;)V

    return-object p0
.end method

.method private final shouldEarlyReturn(Ljava/lang/Boolean;)Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->operand:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getStartStrategy()I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/CombinedCondition;->get_startStrategy()I

    move-result p0

    return p0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->scope:Lkotlinx/coroutines/B;

    new-instance v1, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shared/condition/CombinedCondition$start$1;-><init>(Lcom/android/systemui/shared/condition/CombinedCondition;Lkotlin/coroutines/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/d;->a(Lkotlinx/coroutines/B;Lkotlinx/coroutines/CoroutineStart;Lm3/p;I)Lkotlinx/coroutines/q0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Lkotlinx/coroutines/a0;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Lkotlinx/coroutines/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/a0;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/shared/condition/CombinedCondition;->job:Lkotlinx/coroutines/a0;

    return-void
.end method
