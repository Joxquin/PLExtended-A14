.class public final synthetic Landroidx/core/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final synthetic d:Landroidx/core/view/j;

.field public final synthetic e:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic f:Landroidx/core/view/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/j;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/h;->d:Landroidx/core/view/j;

    iput-object p2, p0, Landroidx/core/view/h;->e:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/core/view/h;->f:Landroidx/core/view/k;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    iget-object p1, p0, Landroidx/core/view/h;->d:Landroidx/core/view/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/view/h;->e:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0}, Landroidx/lifecycle/k;->c(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v1

    iget-object v2, p1, Landroidx/core/view/j;->a:Ljava/lang/Runnable;

    iget-object v3, p1, Landroidx/core/view/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Landroidx/core/view/h;->f:Landroidx/core/view/k;

    if-ne p2, v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/core/view/j;->a(Landroidx/core/view/k;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
