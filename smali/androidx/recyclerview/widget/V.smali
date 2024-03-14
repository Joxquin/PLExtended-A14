.class public final Landroidx/recyclerview/widget/V;
.super Landroidx/recyclerview/widget/o0;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/recyclerview/widget/I0;

.field public c:Landroidx/recyclerview/widget/S;

.field public d:Landroidx/recyclerview/widget/S;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/o0;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/I0;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/I0;-><init>(Landroidx/recyclerview/widget/V;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/V;->b:Landroidx/recyclerview/widget/I0;

    return-void
.end method

.method public static b(Landroid/view/View;Landroidx/recyclerview/widget/T;)I
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->i()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static c(Landroidx/recyclerview/widget/l0;Landroidx/recyclerview/widget/T;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->h()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/l0;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/V;->d(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/recyclerview/widget/V;->b(Landroid/view/View;Landroidx/recyclerview/widget/T;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/V;->e(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;

    move-result-object p0

    invoke-static {p2, p0}, Landroidx/recyclerview/widget/V;->b(Landroid/view/View;Landroidx/recyclerview/widget/T;)I

    move-result p0

    aput p0, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public final d(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/V;->d:Landroidx/recyclerview/widget/S;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/S;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/S;-><init>(Landroidx/recyclerview/widget/l0;I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/V;->d:Landroidx/recyclerview/widget/S;

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/V;->d:Landroidx/recyclerview/widget/S;

    return-object p0
.end method

.method public final e(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/V;->c:Landroidx/recyclerview/widget/S;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/S;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/S;-><init>(Landroidx/recyclerview/widget/l0;I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/V;->c:Landroidx/recyclerview/widget/S;

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/V;->c:Landroidx/recyclerview/widget/S;

    return-object p0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/V;->e(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/V;->c(Landroidx/recyclerview/widget/l0;Landroidx/recyclerview/widget/T;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/V;->d(Landroidx/recyclerview/widget/l0;)Landroidx/recyclerview/widget/T;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/V;->c(Landroidx/recyclerview/widget/l0;Landroidx/recyclerview/widget/T;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/V;->a(Landroidx/recyclerview/widget/l0;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    aget v3, v0, v2

    if-eqz v3, :cond_6

    :cond_5
    iget-object p0, p0, Landroidx/recyclerview/widget/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_6
    :goto_1
    return-void
.end method
