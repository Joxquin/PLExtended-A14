.class public abstract Lcom/android/systemui/shared/condition/Condition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final START_EAGERLY:I = 0x0

.field public static final START_LAZILY:I = 0x1

.field public static final START_WHEN_NEEDED:I = 0x2


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;

.field private mIsConditionMet:Ljava/lang/Boolean;

.field private final mOverriding:Z

.field private final mScope:Lkotlinx/coroutines/B;

.field private mStarted:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/B;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/B;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/B;Ljava/lang/Boolean;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    .line 6
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    .line 8
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mScope:Lkotlinx/coroutines/B;

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/Condition;->lambda$observe$0(Lcom/android/systemui/shared/condition/Condition$Callback;Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method private synthetic lambda$observe$0(Lcom/android/systemui/shared/condition/Condition$Callback;Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p3, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->addCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p3, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->removeCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Condition$Callback;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Lcom/android/systemui/shared/condition/Condition$Callback;->onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const-string v1, "adding callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/android/systemui/shared/condition/Condition$Callback;->onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    return-void
.end method

.method public and(Ljava/util/Collection;)Lcom/android/systemui/shared/condition/Condition;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mScope:Lkotlinx/coroutines/B;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/shared/condition/CombinedCondition;-><init>(Lkotlinx/coroutines/B;Ljava/util/Collection;I)V

    return-object p1
.end method

.method public varargs and([Lcom/android/systemui/shared/condition/Condition;)Lcom/android/systemui/shared/condition/Condition;
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->and(Ljava/util/Collection;)Lcom/android/systemui/shared/condition/Condition;

    move-result-object p0

    return-object p0
.end method

.method public clearCondition()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const-string v1, "clearing condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/Condition;->sendUpdate()V

    return-void
.end method

.method public abstract getStartStrategy()I
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->isConditionSet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Invalid"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->isConditionMet()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "True"

    goto :goto_0

    :cond_1
    const-string p0, "False"

    :goto_0
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->isOverridingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[OVRD]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public isConditionMet()Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConditionSet()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverridingCondition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    return p0
.end method

.method public observe(Landroidx/lifecycle/m;Lcom/android/systemui/shared/condition/Condition$Callback;)Lcom/android/systemui/shared/condition/Condition$Callback;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/shared/condition/a;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/condition/a;-><init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/p;)V

    return-object p2
.end method

.method public observe(Landroidx/lifecycle/q;Lcom/android/systemui/shared/condition/Condition$Callback;)Lcom/android/systemui/shared/condition/Condition$Callback;
    .locals 0

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/condition/Condition;->observe(Landroidx/lifecycle/m;Lcom/android/systemui/shared/condition/Condition$Callback;)Lcom/android/systemui/shared/condition/Condition$Callback;

    move-result-object p0

    return-object p0
.end method

.method public or(Ljava/util/Collection;)Lcom/android/systemui/shared/condition/Condition;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Lcom/android/systemui/shared/condition/CombinedCondition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mScope:Lkotlinx/coroutines/B;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/shared/condition/CombinedCondition;-><init>(Lkotlinx/coroutines/B;Ljava/util/Collection;I)V

    return-object p1
.end method

.method public varargs or([Lcom/android/systemui/shared/condition/Condition;)Lcom/android/systemui/shared/condition/Condition;
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->or(Ljava/util/Collection;)Lcom/android/systemui/shared/condition/Condition;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback(Lcom/android/systemui/shared/condition/Condition$Callback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const-string v1, "removing callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Condition$Callback;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->stop()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final shouldLog()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public updateCondition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Condition;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating condition to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/systemui/shared/condition/Condition;->sendUpdate()V

    return-void
.end method
