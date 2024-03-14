.class public final Lk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/m;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 0

    iput-object p1, p0, Lk/r;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;)V
    .locals 0

    iget-object p0, p0, Lk/r;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lj/m;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lj/m;->a(Lj/o;)V

    :cond_0
    return-void
.end method

.method public final b(Lj/o;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p0, p0, Lk/r;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->D:Lk/T0;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lk/T0;->d:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/core/view/j;

    iget-object p0, p0, Landroidx/core/view/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/k;

    invoke-interface {v0, p2}, Landroidx/core/view/k;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    if-eqz p0, :cond_2

    move p1, v1

    :cond_2
    return p1
.end method
