.class public final Landroidx/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lkotlin/collections/j;

.field public final c:Lm3/a;

.field public final d:Landroidx/activity/q;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/s;->a:Ljava/lang/Runnable;

    new-instance p1, Lkotlin/collections/j;

    invoke-direct {p1}, Lkotlin/collections/j;-><init>()V

    iput-object p1, p0, Landroidx/activity/s;->b:Lkotlin/collections/j;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$1;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/s;)V

    iput-object p1, p0, Landroidx/activity/s;->c:Lm3/a;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$2;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$2;-><init>(Landroidx/activity/s;)V

    new-instance v0, Landroidx/activity/q;

    invoke-direct {v0, p1}, Landroidx/activity/q;-><init>(Lm3/a;)V

    iput-object v0, p0, Landroidx/activity/s;->d:Landroidx/activity/q;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/fragment/app/f0;)V
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/s;Landroidx/lifecycle/m;Landroidx/fragment/app/f0;)V

    iget-object p1, p2, Landroidx/activity/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/s;->c()V

    iget-object p0, p0, Landroidx/activity/s;->c:Lm3/a;

    iput-object p0, p2, Landroidx/activity/p;->c:Lm3/a;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/s;->b:Lkotlin/collections/j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/activity/p;

    iget-boolean v2, v2, Landroidx/activity/p;->a:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/activity/p;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/activity/p;->a()V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/activity/s;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Landroidx/activity/s;->b:Lkotlin/collections/j;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/j;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/p;

    iget-boolean v1, v1, Landroidx/activity/p;->a:Z

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroidx/activity/s;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_4

    iget-object v4, p0, Landroidx/activity/s;->d:Landroidx/activity/q;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Landroidx/activity/s;->f:Z

    if-nez v5, :cond_3

    invoke-interface {v1, v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    iput-boolean v2, p0, Landroidx/activity/s;->f:Z

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/activity/s;->f:Z

    if-eqz v0, :cond_4

    invoke-interface {v1, v4}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-boolean v3, p0, Landroidx/activity/s;->f:Z

    :cond_4
    :goto_2
    return-void
.end method
