.class public final Lf0/E;
.super Landroidx/recyclerview/widget/Z;
.source "SourceFile"


# instance fields
.field public final a:Lf0/B;

.field public final b:Landroid/content/Context;

.field public c:Ljava/util/List;

.field public d:Lf0/M;

.field public e:Lf0/J;

.field public f:Ljava/util/List;

.field public g:Z

.field public h:J

.field public i:Landroidx/slice/widget/SliceView;

.field public j:Lf0/Q;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/util/Set;

.field public p:Z

.field public q:Lf0/O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/Z;-><init>()V

    new-instance v0, Lf0/B;

    invoke-direct {v0}, Lf0/B;-><init>()V

    iput-object v0, p0, Lf0/E;->a:Lf0/B;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/E;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf0/E;->o:Ljava/util/Set;

    iput-object p1, p0, Lf0/E;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/Z;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lf0/E;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/Z;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final c(Landroidx/slice/SliceItem;I)V
    .locals 1

    iget-object v0, p0, Lf0/E;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf0/E;->getItemCount()I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/Z;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public final d(Ljava/util/List;I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lf0/E;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lf0/E;->c:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lf0/E;->a:Lf0/B;

    iget-object v0, p2, Lf0/B;->c:Lq/f;

    invoke-virtual {v0}, Lq/m;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf0/E;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/G;

    iget-object v1, p0, Lf0/E;->c:Ljava/util/List;

    new-instance v2, Lf0/D;

    invoke-direct {v2, v0, p2}, Lf0/D;-><init>(Lf0/G;Lf0/B;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lf0/E;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lf0/E;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/D;

    iget-wide p0, p0, Lf0/D;->c:J

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lf0/E;->c:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/D;

    iget p0, p0, Lf0/D;->b:I

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/E0;I)V
    .locals 7

    check-cast p1, Lf0/C;

    iget-object p0, p0, Lf0/E;->c:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/D;

    iget-object p0, p0, Lf0/D;->a:Lf0/G;

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    if-eqz v0, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Lf0/C;->e:Lf0/E;

    iget-object v0, v0, Lf0/E;->e:Lf0/J;

    iget-object v1, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v1}, Lf0/J;->b(Landroidx/slice/SliceItem;)Lf0/q;

    move-result-object v0

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    iget-object v2, p1, Lf0/C;->e:Lf0/E;

    iput-object v2, v1, Lf0/F;->l:Lf0/E;

    instance-of v3, p0, Lf0/p;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Lf0/p;

    iget-boolean v3, v3, Lf0/p;->o:Z

    move v6, v3

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    iget-object v2, v2, Lf0/E;->o:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lf0/F;->h(Ljava/util/Set;)V

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    iget-object v2, p1, Lf0/C;->e:Lf0/E;

    iget-object v2, v2, Lf0/E;->q:Lf0/O;

    invoke-virtual {v1, v2}, Lf0/F;->i(Lf0/O;)V

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    iget-object v2, v0, Lf0/q;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lf0/q;->a:Lf0/J;

    iget v2, v2, Lf0/J;->a:I

    :goto_1
    invoke-virtual {v1, v2}, Lf0/F;->p(I)V

    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    iget-object v2, p1, Lf0/C;->e:Lf0/E;

    iget-object v2, v2, Lf0/E;->e:Lf0/J;

    invoke-virtual {v1, v2, v0}, Lf0/F;->o(Lf0/J;Lf0/q;)V

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    if-eqz v6, :cond_4

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget-boolean v1, v1, Lf0/E;->g:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Lf0/F;->j(Z)V

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    if-eqz v6, :cond_5

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget-wide v1, v1, Lf0/E;->h:J

    goto :goto_3

    :cond_5
    const-wide/16 v1, -0x1

    :goto_3
    invoke-virtual {v0, v1, v2}, Lf0/F;->g(J)V

    if-nez p2, :cond_6

    iget-object v0, p1, Lf0/C;->e:Lf0/E;

    iget v0, v0, Lf0/E;->l:I

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    invoke-virtual {v1}, Lf0/E;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_7

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget v5, v1, Lf0/E;->n:I

    :cond_7
    iget-object v1, p1, Lf0/C;->d:Lf0/F;

    iget-object v2, p1, Lf0/C;->e:Lf0/E;

    iget v3, v2, Lf0/E;->k:I

    iget v2, v2, Lf0/E;->m:I

    invoke-virtual {v1, v3, v0, v2, v5}, Lf0/F;->f(IIII)V

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget-boolean v1, v1, Lf0/E;->p:Z

    invoke-virtual {v0, v1}, Lf0/F;->e(Z)V

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    if-eqz v6, :cond_8

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget-object v1, v1, Lf0/E;->f:Ljava/util/List;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lf0/F;->l(Ljava/util/List;)V

    iget-object v0, p1, Lf0/C;->d:Lf0/F;

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    invoke-virtual {v1}, Lf0/E;->getItemCount()I

    move-result v4

    iget-object v1, p1, Lf0/C;->e:Lf0/E;

    iget-object v5, v1, Lf0/E;->d:Lf0/M;

    move-object v1, p0

    move v2, v6

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lf0/F;->n(Lf0/G;ZIILf0/M;)V

    iget-object v0, p1, Lf0/C;->e:Lf0/E;

    iget-object v0, v0, Lf0/E;->f:Ljava/util/List;

    invoke-static {p0, v6, v0}, Lf0/j;->d(Lf0/G;ZLjava/util/List;)I

    move-result p0

    filled-new-array {p0, p2}, [I

    move-result-object p0

    iget-object p1, p1, Lf0/C;->d:Lf0/F;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;
    .locals 2

    const/4 p1, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lf0/E;->b:Landroid/content/Context;

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    new-instance p1, Lf0/x;

    invoke-direct {p1, v1}, Lf0/x;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0020

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d001f

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d001b

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroidx/slice/widget/GridRowView;

    if-eqz p2, :cond_3

    check-cast p1, Landroidx/slice/widget/GridRowView;

    goto :goto_0

    :cond_3
    new-instance p1, Landroidx/slice/widget/GridRowView;

    invoke-direct {p1, v1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lf0/C;

    invoke-direct {p2, p0, p1}, Lf0/C;-><init>(Lf0/E;Landroid/view/View;)V

    return-object p2
.end method
