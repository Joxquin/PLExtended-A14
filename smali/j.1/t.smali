.class public final Lj/t;
.super Lj/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public d:Lj/q;


# virtual methods
.method public final b()Z
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result p0

    return p0
.end method

.method public final h(Lj/q;)V
    .locals 0

    iput-object p1, p0, Lj/t;->d:Lj/q;

    iget-object p1, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lj/t;->d:Lj/q;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lj/q;->a:Lj/r;

    iget-object p0, p0, Lj/r;->n:Lj/o;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/o;->h:Z

    invoke-virtual {p0, p1}, Lj/o;->p(Z)V

    :cond_0
    return-void
.end method
