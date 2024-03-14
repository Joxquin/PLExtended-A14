.class public final Lcom/android/systemui/shared/condition/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/condition/Evaluator;

.field public static final OP_AND:I = 0x0

.field public static final OP_OR:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/condition/Evaluator;

    invoke-direct {v0}, Lcom/android/systemui/shared/condition/Evaluator;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/condition/Evaluator;->INSTANCE:Lcom/android/systemui/shared/condition/Evaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final threeValuedAndOrOr(Ljava/util/Collection;Z)Ljava/lang/Boolean;
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    xor-int/lit8 p0, p2, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final evaluate(Ljava/util/Collection;I)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "conditions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v4}, Lcom/android/systemui/shared/condition/Condition;->isConditionSet()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/shared/condition/Condition;->isOverridingCondition()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/o;->d(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/condition/Condition;

    invoke-virtual {v2}, Lcom/android/systemui/shared/condition/Condition;->isConditionSet()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/shared/condition/Condition;->isConditionMet()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/shared/condition/Evaluator;->evaluate$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(Ljava/util/Collection;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final evaluate$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(Ljava/util/Collection;I)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/condition/Evaluator;->threeValuedAndOrOr(Ljava/util/Collection;Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/condition/Evaluator;->threeValuedAndOrOr(Ljava/util/Collection;Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1
.end method
