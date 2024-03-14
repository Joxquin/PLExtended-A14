.class public final Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# instance fields
.field public final synthetic d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)V
    .locals 0

    iput-object p1, p0, Lv1/b;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    iget-object p0, p0, Lv1/b;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getListeners$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    invoke-interface {v0}, Lt1/d;->onTransitionFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    iget-object p0, p0, Lv1/b;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getListeners$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/d;

    invoke-interface {v0, p1}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    iget-object p0, p0, Lv1/b;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getListeners$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Ljava/util/Set;

    move-result-object p0

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
