.class public Landroidx/core/view/V;
.super Landroidx/core/view/a0;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[LE/b;

.field public e:LE/b;

.field public f:Landroidx/core/view/c0;

.field public g:LE/b;


# direct methods
.method public constructor <init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/a0;-><init>(Landroidx/core/view/c0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/V;->e:LE/b;

    iput-object p2, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private r(IZ)LE/b;
    .locals 7

    sget-object v0, LE/b;->e:LE/b;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/V;->s(IZ)LE/b;

    move-result-object v2

    iget v3, v2, LE/b;->a:I

    iget v4, v0, LE/b;->a:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, LE/b;->b:I

    iget v5, v2, LE/b;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, LE/b;->c:I

    iget v6, v2, LE/b;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v0, v0, LE/b;->d:I

    iget v2, v2, LE/b;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, LE/b;->a(IIII)LE/b;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private t()LE/b;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->f:Landroidx/core/view/c0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LE/b;->e:LE/b;

    return-object p0
.end method

.method private u(Landroid/view/View;)LE/b;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/V;->u(Landroid/view/View;)LE/b;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, LE/b;->e:LE/b;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/V;->w(LE/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/core/view/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroidx/core/view/V;

    iget-object p0, p0, Landroidx/core/view/V;->g:LE/b;

    iget-object p1, p1, Landroidx/core/view/V;->g:LE/b;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(I)LE/b;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/view/V;->r(IZ)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public final j()LE/b;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/V;->e:LE/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LE/b;->a(IIII)LE/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/V;->e:LE/b;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/V;->e:LE/b;

    return-object p0
.end method

.method public l(IIII)Landroidx/core/view/c0;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v0}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object v0

    new-instance v1, Landroidx/core/view/T;

    invoke-direct {v1, v0}, Landroidx/core/view/T;-><init>(Landroidx/core/view/c0;)V

    invoke-virtual {p0}, Landroidx/core/view/V;->j()LE/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/view/c0;->e(LE/b;IIII)LE/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/view/U;->d(LE/b;)V

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/c0;->e(LE/b;IIII)LE/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/view/U;->c(LE/b;)V

    invoke-virtual {v1}, Landroidx/core/view/U;->b()Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method public o(I)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/core/view/V;->v(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public p([LE/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/V;->d:[LE/b;

    return-void
.end method

.method public q(Landroidx/core/view/c0;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/V;->f:Landroidx/core/view/c0;

    return-void
.end method

.method public s(IZ)LE/b;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    sget-object p2, LE/b;->e:LE/b;

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p0, Landroidx/core/view/V;->f:Landroidx/core/view/c0;

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->e()Landroidx/core/view/d;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/a0;->e()Landroidx/core/view/d;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/core/view/d;->a:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    invoke-static {p1, p2, v0, p0}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/a0;->k()LE/b;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroidx/core/view/a0;->g()LE/b;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroidx/core/view/a0;->i()LE/b;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Landroidx/core/view/V;->d:[LE/b;

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    aget-object v2, p1, v0

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/V;->j()LE/b;

    move-result-object p1

    invoke-direct {p0}, Landroidx/core/view/V;->t()LE/b;

    move-result-object v0

    iget p1, p1, LE/b;->d:I

    iget v2, v0, LE/b;->d:I

    if-le p1, v2, :cond_9

    invoke-static {v1, v1, v1, p1}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p1, p0, Landroidx/core/view/V;->g:LE/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, LE/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Landroidx/core/view/V;->g:LE/b;

    iget p0, p0, LE/b;->d:I

    iget p1, v0, LE/b;->d:I

    if-le p0, p1, :cond_a

    invoke-static {v1, v1, v1, p0}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_a
    return-object p2

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Landroidx/core/view/V;->t()LE/b;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object p0

    iget p2, p1, LE/b;->a:I

    iget v0, p0, LE/b;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, LE/b;->c:I

    iget v2, p0, LE/b;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, LE/b;->d:I

    iget p0, p0, LE/b;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, v1, v0, p0}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroidx/core/view/V;->j()LE/b;

    move-result-object p1

    iget-object p0, p0, Landroidx/core/view/V;->f:Landroidx/core/view/c0;

    if-eqz p0, :cond_d

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object v2

    :cond_d
    iget p0, p1, LE/b;->d:I

    if-eqz v2, :cond_e

    iget p2, v2, LE/b;->d:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_e
    iget p2, p1, LE/b;->a:I

    iget p1, p1, LE/b;->c:I

    invoke-static {p2, v1, p1, p0}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz p2, :cond_10

    invoke-direct {p0}, Landroidx/core/view/V;->t()LE/b;

    move-result-object p1

    iget p1, p1, LE/b;->b:I

    invoke-virtual {p0}, Landroidx/core/view/V;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0, v1, v1}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Landroidx/core/view/V;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->b:I

    invoke-static {v1, p0, v1, v1}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public v(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/V;->s(IZ)LE/b;

    move-result-object p0

    sget-object p1, LE/b;->e:LE/b;

    invoke-virtual {p0, p1}, LE/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public w(LE/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/V;->g:LE/b;

    return-void
.end method
