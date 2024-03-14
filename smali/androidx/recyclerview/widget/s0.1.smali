.class public Landroidx/recyclerview/widget/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAttachCountForClearing:I

.field mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

.field mScrap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/s0;->mAttachCountForClearing:I

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/s0;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    return-void
.end method

.method private getScrapDataForType(I)Landroidx/recyclerview/widget/r0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/r0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/r0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/r0;-><init>()V

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/r0;

    iget-object v2, v1, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/E0;

    iget-object v3, v3, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-static {v3}, LO/a;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final factorInBindTime(IJ)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iget-wide v0, p0, Landroidx/recyclerview/widget/r0;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    div-long/2addr p2, v2

    add-long/2addr p2, v0

    :goto_0
    iput-wide p2, p0, Landroidx/recyclerview/widget/r0;->d:J

    return-void
.end method

.method public final factorInCreateTime(IJ)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iget-wide v0, p0, Landroidx/recyclerview/widget/r0;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    div-long/2addr p2, v2

    add-long/2addr p2, v0

    :goto_0
    iput-wide p2, p0, Landroidx/recyclerview/widget/r0;->c:J

    return-void
.end method

.method public final getRecycledViewCount()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final putRecycledView(Landroidx/recyclerview/widget/E0;)V
    .locals 2

    iget v0, p1, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/r0;

    iget p0, p0, Landroidx/recyclerview/widget/r0;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p0, v0, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-static {p0}, LO/a;->a(Landroid/view/View;)V

    return-void

    :cond_0
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this scrap item already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->resetInternal()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setMaxRecycledViews(II)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iput p2, p0, Landroidx/recyclerview/widget/r0;->b:I

    iget-object p0, p0, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final willBindInTime(IJJ)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iget-wide p0, p0, Landroidx/recyclerview/widget/r0;->d:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final willCreateInTime(IJJ)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s0;->getScrapDataForType(I)Landroidx/recyclerview/widget/r0;

    move-result-object p0

    iget-wide p0, p0, Landroidx/recyclerview/widget/r0;->c:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
