.class public final Lj/b;
.super Lk/u0;
.source "SourceFile"


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lj/b;->m:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lk/u0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/G;
    .locals 1

    iget-object p0, p0, Lj/b;->m:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Lk/j;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/j;->d:Lk/n;

    iget-object p0, p0, Lk/n;->u:Lk/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/A;->a()Lj/y;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lj/b;->m:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lj/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Lj/r;

    invoke-interface {v1, v0}, Lj/n;->d(Lj/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/b;->b()Lj/G;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj/G;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
