.class public final Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/e;
.implements Lt1/d;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isPreemptivelyRunning:Z

.field private isSourceRunning:Z

.field private final listeners:Ljava/util/ArrayList;

.field private final source:Lt1/e;

.field private final sourceListener:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lt1/e;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->source:Lt1/e;

    iput-object p2, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$timeoutRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$timeoutRunnable$1;-><init>(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)V

    iput-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;-><init>(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)V

    iput-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->sourceListener:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutRunnable$p(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isRunning(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isRunning()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onPreemptiveStartFinished(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->onPreemptiveStartFinished()V

    return-void
.end method

.method public static final synthetic access$setSourceRunning$p(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isSourceRunning:Z

    return-void
.end method

.method private final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isPreemptivelyRunning:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isSourceRunning:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final onPreemptiveStartFinished()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isPreemptivelyRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "PreemptiveUnfoldTransitionProgressProvider#startedPreemptively"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iput-boolean v1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isPreemptivelyRunning:Z

    :cond_0
    return-void
.end method

.method public static synthetic preemptivelyStartTransition$default(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->preemptivelyStartTransition(Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt1/d;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->addCallback(Lt1/d;)V

    return-void
.end method

.method public addCallback(Lt1/d;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cancelPreemptiveStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    invoke-interface {v1}, Lt1/d;->onTransitionFinished()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->onPreemptiveStartFinished()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->source:Lt1/e;

    iget-object v1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->sourceListener:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;

    invoke-interface {v0, v1}, Lx1/c;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->source:Lt1/e;

    invoke-interface {p0}, Lt1/e;->destroy()V

    return-void
.end method

.method public final init()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->source:Lt1/e;

    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->sourceListener:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider$sourceListener$1;

    invoke-interface {v0, p0}, Lx1/c;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onTransitionFinished()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransitionProgress(F)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransitionStarted()V
    .locals 0

    return-void
.end method

.method public final preemptivelyStartTransition()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->preemptivelyStartTransition$default(Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;Ljava/lang/Float;ILjava/lang/Object;)V

    return-void
.end method

.method public final preemptivelyStartTransition(Ljava/lang/Float;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PreemptiveUnfoldTransitionProgressProvider#startedPreemptively"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    .line 6
    invoke-interface {v1}, Lt1/d;->onTransitionStarted()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    .line 10
    invoke-interface {v1, p1}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x6a4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->isPreemptivelyRunning:Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt1/d;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->removeCallback(Lt1/d;)V

    return-void
.end method

.method public removeCallback(Lt1/d;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->listeners:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
