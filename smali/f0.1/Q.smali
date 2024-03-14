.class public final Lf0/Q;
.super Lf0/F;
.source "SourceFile"

# interfaces
.implements Lf0/N;


# instance fields
.field public p:Landroidx/slice/widget/SliceView;

.field public final q:Landroid/view/View;

.field public r:Lf0/E;

.field public final s:Landroidx/recyclerview/widget/RecyclerView;

.field public t:Lf0/j;

.field public u:Ljava/util/List;

.field public v:I

.field public final w:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lf0/F;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/Q;->u:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lf0/Q;->v:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lf0/Q;->w:[I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf0/Q;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/l0;)V

    new-instance v1, Lf0/E;

    invoke-direct {v1, p1}, Lf0/E;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf0/Q;->r:Lf0/E;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/Z;)V

    new-instance v1, Lf0/E;

    invoke-direct {v1, p1}, Lf0/E;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf0/Q;->r:Lf0/E;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/Z;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf0/Q;->q:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v1, v0}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iget-object p0, p0, Lf0/E;->o:Ljava/util/Set;

    return-object p0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lf0/Q;->v:I

    iget-object v0, p0, Lf0/Q;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lf0/Q;->r:Lf0/E;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lf0/E;->d(Ljava/util/List;I)V

    iput-object v2, p0, Lf0/Q;->t:Lf0/j;

    return-void
.end method

.method public final d(Landroidx/slice/SliceItem;)V
    .locals 1

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf0/E;->c(Landroidx/slice/SliceItem;I)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iput-boolean p1, p0, Lf0/E;->p:Z

    invoke-virtual {p0}, Lf0/E;->b()V

    return-void
.end method

.method public final f(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lf0/F;->f(IIII)V

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iput p1, p0, Lf0/E;->k:I

    iput p2, p0, Lf0/E;->l:I

    iput p3, p0, Lf0/E;->m:I

    iput p4, p0, Lf0/E;->n:I

    return-void
.end method

.method public final g(J)V
    .locals 2

    iput-wide p1, p0, Lf0/F;->g:J

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iget-wide v0, p0, Lf0/E;->h:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lf0/E;->h:J

    invoke-virtual {p0}, Lf0/E;->b()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/util/Set;)V
    .locals 0

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    if-nez p1, :cond_0

    iget-object p1, p0, Lf0/E;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lf0/E;->o:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    return-void
.end method

.method public final i(Lf0/O;)V
    .locals 1

    iput-object p1, p0, Lf0/F;->o:Lf0/O;

    iget-object v0, p0, Lf0/Q;->r:Lf0/E;

    iput-object p1, v0, Lf0/E;->q:Lf0/O;

    iput-object p0, p1, Lf0/O;->d:Lf0/N;

    return-void
.end method

.method public final j(Z)V
    .locals 1

    iput-boolean p1, p0, Lf0/F;->f:Z

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iget-boolean v0, p0, Lf0/E;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lf0/E;->g:Z

    invoke-virtual {p0}, Lf0/E;->b()V

    :cond_0
    return-void
.end method

.method public final k(Lf0/M;)V
    .locals 0

    iput-object p1, p0, Lf0/F;->d:Lf0/M;

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lf0/E;->d:Lf0/M;

    :cond_0
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lf0/Q;->r:Lf0/E;

    iput-object p1, p0, Lf0/E;->f:Ljava/util/List;

    invoke-virtual {p0}, Lf0/E;->b()V

    return-void
.end method

.method public final m(Lf0/j;)V
    .locals 2

    iput-object p1, p0, Lf0/Q;->t:Lf0/j;

    iget-object v0, p0, Lf0/F;->m:Lf0/J;

    iget-object v1, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {p1, v0, v1}, Lf0/j;->a(Lf0/J;Lf0/O;)I

    invoke-virtual {p0}, Lf0/Q;->q()V

    return-void
.end method

.method public final o(Lf0/J;Lf0/q;)V
    .locals 1

    iput-object p1, p0, Lf0/F;->m:Lf0/J;

    iput-object p2, p0, Lf0/F;->n:Lf0/q;

    iget-object v0, p0, Lf0/Q;->r:Lf0/E;

    iput-object p1, v0, Lf0/E;->e:Lf0/J;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    iget-boolean p1, p2, Lf0/q;->u:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lf0/Q;->s:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/h0;)V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lf0/Q;->p:Landroidx/slice/widget/SliceView;

    iget-object v1, p0, Lf0/Q;->r:Lf0/E;

    iput-object v0, v1, Lf0/E;->i:Landroidx/slice/widget/SliceView;

    iput-object p0, v1, Lf0/E;->j:Lf0/Q;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-object v0, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lf0/F;->e:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    invoke-virtual {p0}, Lf0/Q;->q()V

    return-void
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lf0/Q;->t:Lf0/j;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lf0/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lf0/Q;->t:Lf0/j;

    iget-object v1, p0, Lf0/F;->m:Lf0/J;

    iget-object v2, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lf0/O;->c:I

    iget-object v3, v0, Lf0/j;->h:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    new-instance v1, Lf0/b;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lf0/j;->g:Lf0/p;

    filled-new-array {v0}, [Lf0/p;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-direct {v1, v0, v2}, Lf0/b;-><init>(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lf0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v3}, Lf0/J;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-direct {v0, v4, v3}, Lf0/b;-><init>(ILjava/util/List;)V

    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lf0/b;->a:Ljava/util/List;

    iput-object v0, p0, Lf0/Q;->u:Ljava/util/List;

    iget-object v1, p0, Lf0/F;->m:Lf0/J;

    iget-object v2, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {v1, v0, v2}, Lf0/J;->a(Ljava/util/List;Lf0/O;)I

    move-result v0

    iput v0, p0, Lf0/Q;->v:I

    iget-object v0, p0, Lf0/Q;->r:Lf0/E;

    iget-object v1, p0, Lf0/Q;->u:Ljava/util/List;

    iget-object v2, p0, Lf0/F;->o:Lf0/O;

    iget v2, v2, Lf0/O;->c:I

    invoke-virtual {v0, v1, v2}, Lf0/E;->d(Ljava/util/List;I)V

    iget v0, p0, Lf0/Q;->v:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    move v4, v5

    :cond_3
    iget-object v0, p0, Lf0/Q;->s:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lf0/Q;->c()V

    return-void
.end method
