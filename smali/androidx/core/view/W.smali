.class public Landroidx/core/view/W;
.super Landroidx/core/view/V;
.source "SourceFile"


# instance fields
.field public h:LE/b;


# direct methods
.method public constructor <init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/V;-><init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/W;->h:LE/b;

    return-void
.end method


# virtual methods
.method public b()Landroidx/core/view/c0;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/core/view/c0;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method

.method public final h()LE/b;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/W;->h:LE/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LE/b;->a(IIII)LE/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/W;->h:LE/b;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/W;->h:LE/b;

    return-object p0
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
