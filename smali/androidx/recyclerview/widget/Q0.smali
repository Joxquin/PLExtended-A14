.class public final Landroidx/recyclerview/widget/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/Q0;->b:I

    iput p1, p0, Landroidx/recyclerview/widget/Q0;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/Q0;->d:I

    iput p2, p0, Landroidx/recyclerview/widget/Q0;->e:I

    return-void
.end method

.method public static h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/L0;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/Q0;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/Q0;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/Q0;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/Q0;->d:I

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/Q0;->e(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/Q0;->e(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/Q0;->e(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/Q0;->e(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final e(II)I
    .locals 11

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->h()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/T;->f()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le p2, p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eq p1, p2, :cond_5

    iget-object v6, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    if-gt v7, v2, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    if-lt v8, v1, :cond_2

    move v9, v4

    :cond_2
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    if-lt v7, v1, :cond_3

    if-le v8, v2, :cond_4

    :cond_3
    invoke-static {v6}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_4
    add-int/2addr p1, v5

    goto :goto_0

    :cond_5
    :goto_2
    return v3
.end method

.method public final f(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/Q0;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/Q0;->a()V

    iget p0, p0, Landroidx/recyclerview/widget/Q0;->c:I

    return p0
.end method

.method public final g(II)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iget-object p0, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_5

    :cond_0
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v4, :cond_1

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_5

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v3, :cond_3

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_5

    :cond_3
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v3, :cond_4

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 p2, p2, -0x1

    move-object v2, v1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v2
.end method

.method public final i(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/Q0;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/Q0;->b:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Landroidx/recyclerview/widget/Q0;->b:I

    return p0
.end method
