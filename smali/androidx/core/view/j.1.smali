.class public final Landroidx/core/view/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/j;->c:Ljava/util/Map;

    iput-object p1, p0, Landroidx/core/view/j;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/k;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/view/j;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/i;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/core/view/i;->a:Landroidx/lifecycle/m;

    iget-object v1, p1, Landroidx/core/view/i;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->c(Landroidx/lifecycle/p;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/core/view/i;->b:Landroidx/lifecycle/o;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/j;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
