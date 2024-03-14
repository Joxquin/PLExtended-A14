.class public Lx1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/e;
.implements Lt1/d;


# instance fields
.field private isReadyToHandleTransition:Z

.field private isTransitionRunning:Z

.field private lastTransitionProgress:F

.field private final listeners:Ljava/util/List;

.field private source:Lt1/e;


# direct methods
.method public constructor <init>(Lt1/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx1/f;->listeners:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lx1/f;->lastTransitionProgress:F

    invoke-virtual {p0, p1}, Lx1/f;->setSourceProvider(Lt1/e;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt1/d;

    invoke-virtual {p0, p1}, Lx1/f;->addCallback(Lt1/d;)V

    return-void
.end method

.method public final addCallback(Lt1/d;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lx1/f;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lx1/f;->source:Lt1/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lx1/c;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lx1/f;->source:Lt1/e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lt1/e;->destroy()V

    :cond_1
    return-void
.end method

.method public final onTransitionFinished()V
    .locals 2

    iget-boolean v0, p0, Lx1/f;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx1/f;->listeners:Ljava/util/List;

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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/f;->isTransitionRunning:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lx1/f;->lastTransitionProgress:F

    return-void
.end method

.method public final onTransitionFinishing()V
    .locals 1

    iget-boolean v0, p0, Lx1/f;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx1/f;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    invoke-interface {v0}, Lt1/d;->onTransitionFinishing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 2

    iget-boolean v0, p0, Lx1/f;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx1/f;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    invoke-interface {v1, p1}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lx1/f;->lastTransitionProgress:F

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/f;->isTransitionRunning:Z

    iget-boolean v0, p0, Lx1/f;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx1/f;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    invoke-interface {v0}, Lt1/d;->onTransitionStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt1/d;

    invoke-virtual {p0, p1}, Lx1/f;->removeCallback(Lt1/d;)V

    return-void
.end method

.method public final removeCallback(Lt1/d;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lx1/f;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setReadyToHandleTransition(Z)V
    .locals 4

    iget-boolean v0, p0, Lx1/f;->isTransitionRunning:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lx1/f;->listeners:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/d;

    invoke-interface {v3}, Lt1/d;->onTransitionStarted()V

    goto :goto_0

    :cond_0
    iget v2, p0, Lx1/f;->lastTransitionProgress:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    iget v2, p0, Lx1/f;->lastTransitionProgress:F

    invoke-interface {v1, v2}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lx1/f;->isTransitionRunning:Z

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/d;

    invoke-interface {v1}, Lt1/d;->onTransitionFinished()V

    goto :goto_2

    :cond_3
    iput-boolean p1, p0, Lx1/f;->isReadyToHandleTransition:Z

    return-void
.end method

.method public final setSourceProvider(Lt1/e;)V
    .locals 1

    iget-object v0, p0, Lx1/f;->source:Lt1/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lx1/c;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lx1/f;->source:Lt1/e;

    invoke-interface {p1, p0}, Lx1/c;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lx1/f;->source:Lt1/e;

    :goto_0
    return-void
.end method
