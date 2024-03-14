.class public final Lx2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Window;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    new-instance v0, Landroidx/core/view/d0;

    invoke-direct {v0, p0}, Landroidx/core/view/d0;-><init>(Landroid/view/Window;)V

    iget-object p0, v0, Landroidx/core/view/d0;->a:Landroid/view/WindowInsetsController;

    iget-object v0, v0, Landroidx/core/view/d0;->b:Landroid/view/Window;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v2, 0x2000

    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-interface {p0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v2, -0x2001

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method
