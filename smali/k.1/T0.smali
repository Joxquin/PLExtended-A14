.class public final Lk/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/m;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lk/T0;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;)V
    .locals 1

    iget-object p0, p0, Lk/T0;->d:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/core/view/j;

    iget-object p0, p0, Landroidx/core/view/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/k;

    invoke-interface {v0, p1}, Landroidx/core/view/k;->d(Landroid/view/Menu;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lj/o;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lk/T0;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
