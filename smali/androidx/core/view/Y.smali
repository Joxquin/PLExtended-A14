.class public Landroidx/core/view/Y;
.super Landroidx/core/view/X;
.source "SourceFile"


# instance fields
.field public i:LE/b;

.field public j:LE/b;

.field public k:LE/b;


# direct methods
.method public constructor <init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/X;-><init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/Y;->i:LE/b;

    iput-object p1, p0, Landroidx/core/view/Y;->j:LE/b;

    iput-object p1, p0, Landroidx/core/view/Y;->k:LE/b;

    return-void
.end method


# virtual methods
.method public g()LE/b;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/Y;->j:LE/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/b;->b(Landroid/graphics/Insets;)LE/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/Y;->j:LE/b;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/Y;->j:LE/b;

    return-object p0
.end method

.method public i()LE/b;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/Y;->i:LE/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/b;->b(Landroid/graphics/Insets;)LE/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/Y;->i:LE/b;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/Y;->i:LE/b;

    return-object p0
.end method

.method public k()LE/b;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/Y;->k:LE/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/b;->b(Landroid/graphics/Insets;)LE/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/Y;->k:LE/b;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/Y;->k:LE/b;

    return-object p0
.end method

.method public l(IIII)Landroidx/core/view/c0;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method
