.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lk2/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk2/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lk2/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Li2/a;->x:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 6
    iput p2, p0, Lk2/s;->f:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p2, Lcom/google/android/material/appbar/AppBarLayout;

    return p0
.end method

.method public final d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz/f;

    iget-object p1, p1, Lz/f;->a:Lz/c;

    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    add-int/2addr v0, p1

    iget p1, p0, Lk2/s;->e:I

    add-int/2addr v0, p1

    iget p1, p0, Lk2/s;->f:I

    if-nez p1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->w(Landroid/view/View;)F

    move-result p1

    iget p0, p0, Lk2/s;->f:I

    int-to-float v2, p0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {p1, v1, p0}, LH/a;->b(III)I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    instance-of p0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_2

    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p0, p3, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    if-eqz p0, :cond_2

    invoke-virtual {p3, p2}, Lcom/google/android/material/appbar/AppBarLayout;->k(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/google/android/material/appbar/AppBarLayout;->j(Z)Z

    :cond_2
    return v1
.end method

.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    instance-of p0, p2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_0

    sget-object p0, LM/c;->f:LM/c;

    invoke-virtual {p0}, LM/c;->a()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/J;->f(Landroid/view/View;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/core/view/J;->d(Landroid/view/View;I)V

    sget-object p2, LM/c;->g:LM/c;

    invoke-virtual {p2}, LM/c;->a()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/view/J;->f(Landroid/view/View;I)V

    invoke-static {p1, p0}, Landroidx/core/view/J;->d(Landroid/view/View;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    :cond_0
    return-void
.end method

.method public final m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    instance-of v5, v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget-object p0, p0, Lk2/s;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {v4, v2, p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZZ)V

    return p0

    :cond_2
    return v2
.end method

.method public final v(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final w(Landroid/view/View;)F
    .locals 3

    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz/f;

    iget-object p1, p1, Lz/f;->a:Lz/c;

    instance-of v2, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int v2, p0, p1

    if-gt v2, v1, :cond_1

    return v0

    :cond_1
    sub-int/2addr p0, v1

    if-eqz p0, :cond_2

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    return p1

    :cond_2
    return v0
.end method

.method public final x(Landroid/view/View;)I
    .locals 0

    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method
