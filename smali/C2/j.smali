.class public final LC2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)LC2/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, LC2/l;

    invoke-direct {p0}, LC2/l;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, LC2/e;

    invoke-direct {p0}, LC2/e;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, LC2/l;

    invoke-direct {p0}, LC2/l;-><init>()V

    return-object p0
.end method

.method public static b(Landroid/view/View;LC2/i;)V
    .locals 3

    iget-object v0, p1, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->b:Lu2/a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lu2/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/D;->d(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p1, LC2/i;->d:LC2/h;

    iget v1, p0, LC2/h;->m:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iput v0, p0, LC2/h;->m:F

    invoke-virtual {p1}, LC2/i;->o()V

    :cond_2
    return-void
.end method
