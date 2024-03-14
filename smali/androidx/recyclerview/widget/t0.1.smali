.class public final Landroidx/recyclerview/widget/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/s0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/t0;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/t0;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/t0;->f:I

    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/t0;->d(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/E0;Z)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/E0;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/G0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/G0;->a()Landroidx/core/view/b;

    move-result-object v2

    instance-of v4, v2, Landroidx/recyclerview/widget/F0;

    if-eqz v4, :cond_0

    check-cast v2, Landroidx/recyclerview/widget/F0;

    iget-object v2, v2, Landroidx/recyclerview/widget/F0;->e:Ljava/util/Map;

    check-cast v2, Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/b;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    :cond_1
    if-eqz p2, :cond_6

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/u0;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroidx/recyclerview/widget/u0;->a()V

    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/u0;

    invoke-interface {v2}, Landroidx/recyclerview/widget/u0;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/Z;->onViewRecycled(Landroidx/recyclerview/widget/E0;)V

    :cond_4
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    if-eqz p2, :cond_5

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/W0;->d(Landroidx/recyclerview/widget/E0;)V

    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchViewRecycled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecyclerView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object v3, p1, Landroidx/recyclerview/widget/E0;->mBindingAdapter:Landroidx/recyclerview/widget/Z;

    iput-object v3, p1, Landroidx/recyclerview/widget/E0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/t0;->c()Landroidx/recyclerview/widget/s0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/s0;->putRecycledView(Landroidx/recyclerview/widget/E0;)V

    return-void
.end method

.method public final b(I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid position "

    const-string v2, ". State item count is "

    invoke-static {v1, p1, v2}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroidx/recyclerview/widget/s0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/s0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/s0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/t0;->e()V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/Z;Z)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/s0;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/s0;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/r0;

    iget-object v0, v0, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    move v1, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/E0;

    iget-object v2, v2, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-static {v2}, LO/a;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/t0;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/C;

    iget-object v0, p0, Landroidx/recyclerview/widget/C;->c:[I

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/C;->d:I

    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    const-string v1, "RecyclerView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recycling cached view at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/E0;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedViewHolder to be recycled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/t0;->a(Landroidx/recyclerview/widget/E0;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/t0;->m(Landroidx/recyclerview/widget/E0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Landroidx/recyclerview/widget/E0;->mFlags:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/t0;->j(Landroidx/recyclerview/widget/E0;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/h0;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isRecyclable()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/h0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h0;->d(Landroidx/recyclerview/widget/E0;)V

    :cond_3
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/E0;)V
    .locals 12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-nez v0, :cond_16

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/x;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/Z;->onFailedToRecycleView(Landroidx/recyclerview/widget/E0;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    iget-object v7, p0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cached view received recycle internal? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "RecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move p0, v1

    goto/16 :goto_a

    :cond_7
    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/t0;->f:I

    if-lez v5, :cond_11

    iget v5, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit16 v5, v5, 0x20e

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    move v5, v1

    :goto_4
    if-nez v5, :cond_11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/t0;->f:I

    if-lt v5, v6, :cond_9

    if-lez v5, :cond_9

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/t0;->h(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_9
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v6, :cond_10

    if-lez v5, :cond_10

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/C;

    iget v8, p1, Landroidx/recyclerview/widget/E0;->mPosition:I

    iget-object v9, v6, Landroidx/recyclerview/widget/C;->c:[I

    if-eqz v9, :cond_b

    iget v9, v6, Landroidx/recyclerview/widget/C;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_5
    if-ge v10, v9, :cond_b

    iget-object v11, v6, Landroidx/recyclerview/widget/C;->c:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_a

    move v6, v2

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, 0x2

    goto :goto_5

    :cond_b
    move v6, v1

    :goto_6
    if-nez v6, :cond_10

    :cond_c
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_f

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/E0;

    iget v6, v6, Landroidx/recyclerview/widget/E0;->mPosition:I

    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/C;

    iget-object v9, v8, Landroidx/recyclerview/widget/C;->c:[I

    if-eqz v9, :cond_e

    iget v9, v8, Landroidx/recyclerview/widget/C;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_7
    if-ge v10, v9, :cond_e

    iget-object v11, v8, Landroidx/recyclerview/widget/C;->c:[I

    aget v11, v11, v10

    if-ne v11, v6, :cond_d

    move v6, v2

    goto :goto_8

    :cond_d
    add-int/lit8 v10, v10, 0x2

    goto :goto_7

    :cond_e
    move v6, v1

    :goto_8
    if-nez v6, :cond_c

    :cond_f
    add-int/2addr v5, v2

    :cond_10
    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v2

    goto :goto_9

    :cond_11
    move v5, v1

    :goto_9
    if-nez v5, :cond_12

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/t0;->a(Landroidx/recyclerview/widget/E0;Z)V

    move v1, v2

    :cond_12
    move p0, v1

    move v1, v5

    :goto_a
    iget-object v2, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/W0;->d(Landroidx/recyclerview/widget/E0;)V

    if-nez v1, :cond_13

    if-nez p0, :cond_13

    if-eqz v0, :cond_13

    invoke-static {v4}, LO/a;->a(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mBindingAdapter:Landroidx/recyclerview/widget/Z;

    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_13
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_17

    move v1, v2

    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object p1

    iget v0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v1, v0, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_4

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/E0;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    :cond_3
    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/Z;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public final l(IJ)Landroidx/recyclerview/widget/E0;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v8, v0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_47

    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v2

    if-ge v1, v2, :cond_47

    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/A0;->g:Z

    const/4 v9, 0x0

    const/16 v3, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move v4, v9

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/Z;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v4, v1, v9}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/Z;->getItemId(I)J

    move-result-wide v4

    move v6, v9

    :goto_1
    if-ge v6, v2, :cond_4

    iget-object v7, v0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v10

    if-nez v10, :cond_3

    iget-wide v10, v7, Landroidx/recyclerview/widget/E0;->mItemId:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_3

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    move-object v5, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :cond_6
    move v2, v9

    :goto_4
    iget-object v4, v0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    const/4 v7, -0x1

    const-string v10, "RecyclerView"

    if-nez v5, :cond_1f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v11, v9

    :goto_5
    if-ge v11, v5, :cond_9

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v12}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v13

    if-ne v13, v1, :cond_8

    invoke-virtual {v12}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v13, v13, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v13, :cond_7

    invoke-virtual {v12}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    move-object v5, v12

    goto/16 :goto_c

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v11, v5, Landroidx/recyclerview/widget/g;->c:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v9

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    iget-object v15, v5, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v3

    if-ne v3, v1, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x20

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_11

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v3

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v11, v5, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    iget-object v11, v11, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ltz v11, :cond_10

    iget-object v12, v5, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/f;->d(I)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/f;->a(I)V

    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/g;->k(Landroid/view/View;)V

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v11, v5, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    iget-object v11, v11, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ne v11, v7, :cond_c

    goto :goto_8

    :cond_c
    iget-object v5, v5, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/f;->d(I)Z

    move-result v12

    if-eqz v12, :cond_d

    :goto_8
    move v11, v7

    goto :goto_9

    :cond_d
    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/f;->b(I)I

    move-result v5

    sub-int/2addr v11, v5

    :goto_9
    if-eq v11, v7, :cond_e

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/g;->c(I)V

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/t0;->k(Landroid/view/View;)V

    const/16 v5, 0x2020

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v9

    :goto_a
    if-ge v5, v3, :cond_14

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v11}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v12

    if-ne v12, v1, :cond_13

    invoke-virtual {v11}, Landroidx/recyclerview/widget/E0;->isAttachedToTransitionOverlay()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getScrapOrHiddenOrCachedHolderForPosition("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") found match in cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object v5, v11

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    :goto_b
    move-object v5, v3

    :goto_c
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v3, :cond_16

    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/A0;->g:Z

    if-eqz v3, :cond_15

    goto :goto_d

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "should not receive a removed view unless it is pre layout"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_d
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/A0;->g:Z

    goto :goto_10

    :cond_17
    iget v3, v5, Landroidx/recyclerview/widget/E0;->mPosition:I

    if-ltz v3, :cond_1e

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v11

    if-ge v3, v11, :cond_1e

    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v3, :cond_18

    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    iget v11, v5, Landroidx/recyclerview/widget/E0;->mPosition:I

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/Z;->getItemViewType(I)I

    move-result v3

    iget v11, v5, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    if-eq v3, v11, :cond_18

    goto :goto_e

    :cond_18
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/Z;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-wide v11, v5, Landroidx/recyclerview/widget/E0;->mItemId:J

    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    iget v13, v5, Landroidx/recyclerview/widget/E0;->mPosition:I

    invoke-virtual {v3, v13}, Landroidx/recyclerview/widget/Z;->getItemId(I)J

    move-result-wide v13

    cmp-long v3, v11, v13

    if-nez v3, :cond_19

    goto :goto_f

    :cond_19
    :goto_e
    move v3, v9

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v3, 0x1

    :goto_10
    if-nez v3, :cond_1d

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v3, v5, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/t0;->m(Landroidx/recyclerview/widget/E0;)V

    goto :goto_11

    :cond_1b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v5, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v5, Landroidx/recyclerview/widget/E0;->mFlags:I

    :cond_1c
    :goto_11
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/t0;->j(Landroidx/recyclerview/widget/E0;)V

    const/4 v5, 0x0

    goto :goto_12

    :cond_1d
    const/4 v2, 0x1

    goto :goto_12

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_12
    if-nez v5, :cond_30

    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v1, v9}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v3

    if-ltz v3, :cond_2f

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v11

    if-ge v3, v11, :cond_2f

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/Z;->getItemViewType(I)I

    move-result v11

    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/Z;->hasStableIds()Z

    move-result v12

    if-eqz v12, :cond_27

    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/Z;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_13
    if-ltz v5, :cond_23

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/E0;

    iget-wide v14, v7, Landroidx/recyclerview/widget/E0;->mItemId:J

    cmp-long v14, v14, v12

    if-nez v14, :cond_22

    invoke-virtual {v7}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v14

    if-nez v14, :cond_22

    iget v14, v7, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    if-ne v11, v14, :cond_21

    const/16 v14, 0x20

    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/E0;->addFlags(I)V

    invoke-virtual {v7}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v4, :cond_20

    iget v4, v7, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v4, v4, -0xf

    or-int/lit8 v4, v4, 0x2

    iput v4, v7, Landroidx/recyclerview/widget/E0;->mFlags:I

    :cond_20
    move-object v5, v7

    goto :goto_15

    :cond_21
    const/16 v14, 0x20

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, v7, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v8, v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v7

    const/4 v15, 0x0

    iput-object v15, v7, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    iput-boolean v9, v7, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    iget v15, v7, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v15, v15, -0x21

    iput v15, v7, Landroidx/recyclerview/widget/E0;->mFlags:I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/t0;->j(Landroidx/recyclerview/widget/E0;)V

    goto :goto_14

    :cond_22
    const/16 v14, 0x20

    :goto_14
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_23
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_24
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_26

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/E0;

    iget-wide v14, v6, Landroidx/recyclerview/widget/E0;->mItemId:J

    cmp-long v7, v14, v12

    if-nez v7, :cond_24

    invoke-virtual {v6}, Landroidx/recyclerview/widget/E0;->isAttachedToTransitionOverlay()Z

    move-result v7

    if-nez v7, :cond_24

    iget v7, v6, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    if-ne v11, v7, :cond_25

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v5, v6

    goto :goto_15

    :cond_25
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/t0;->h(I)V

    :cond_26
    const/4 v4, 0x0

    move-object v5, v4

    :goto_15
    if-eqz v5, :cond_27

    iput v3, v5, Landroidx/recyclerview/widget/E0;->mPosition:I

    const/4 v2, 0x1

    :cond_27
    move v12, v2

    if-nez v5, :cond_2c

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryGetViewHolderForPositionByDeadline("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") fetching from shared pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/t0;->c()Landroidx/recyclerview/widget/s0;

    move-result-object v2

    iget-object v2, v2, Landroidx/recyclerview/widget/s0;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r0;

    if-eqz v2, :cond_2a

    iget-object v2, v2, Landroidx/recyclerview/widget/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_29
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/E0;->isAttachedToTransitionOverlay()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/E0;

    goto :goto_16

    :cond_2a
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->resetInternal()V

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v3, :cond_2b

    iget-object v3, v2, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2b

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v9}, Landroidx/recyclerview/widget/t0;->d(Landroid/view/ViewGroup;Z)V

    :cond_2b
    move-object v5, v2

    :cond_2c
    if-nez v5, :cond_31

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v13

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    move v3, v11

    move-wide v4, v13

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/s0;->willCreateInTime(IJJ)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v0, 0x0

    return-object v0

    :cond_2d
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v2, v8, v11}, Landroidx/recyclerview/widget/Z;->createViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;

    move-result-object v5

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_2e

    iget-object v2, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v5, Landroidx/recyclerview/widget/E0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_2e
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    iget-object v4, v0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    sub-long/2addr v2, v13

    invoke-virtual {v4, v11, v2, v3}, Landroidx/recyclerview/widget/s0;->factorInCreateTime(IJ)V

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_31

    const-string v2, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move v12, v2

    :cond_31
    :goto_17
    move-object v10, v5

    if-eqz v12, :cond_33

    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v3, :cond_33

    iget v3, v10, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_32

    const/4 v4, 0x1

    goto :goto_18

    :cond_32
    move v4, v9

    :goto_18
    if-eqz v4, :cond_33

    and-int/lit16 v3, v3, -0x2001

    or-int/2addr v3, v9

    iput v3, v10, Landroidx/recyclerview/widget/E0;->mFlags:I

    iget-boolean v2, v2, Landroidx/recyclerview/widget/A0;->j:Z

    if-eqz v2, :cond_33

    invoke-static {v10}, Landroidx/recyclerview/widget/h0;->b(Landroidx/recyclerview/widget/E0;)V

    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/h0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/recyclerview/widget/g0;

    invoke-direct {v2}, Landroidx/recyclerview/widget/g0;-><init>()V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/g0;->a(Landroidx/recyclerview/widget/E0;)V

    invoke-virtual {v8, v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/E0;Landroidx/recyclerview/widget/g0;)V

    :cond_33
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-eqz v2, :cond_34

    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->isBound()Z

    move-result v2

    if-eqz v2, :cond_34

    iput v1, v10, Landroidx/recyclerview/widget/E0;->mPreLayoutPosition:I

    goto :goto_1b

    :cond_34
    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->isBound()Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v10, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_19

    :cond_35
    move v2, v9

    :goto_19
    if-nez v2, :cond_36

    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_36
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v2, :cond_38

    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_1a

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_1a
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, v1, v9}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v11

    const/4 v13, 0x0

    iput-object v13, v10, Landroidx/recyclerview/widget/E0;->mBindingAdapter:Landroidx/recyclerview/widget/Z;

    iput-object v8, v10, Landroidx/recyclerview/widget/E0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v10, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, p2, v4

    if-eqz v2, :cond_3a

    iget-object v2, v0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    move-wide v4, v14

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/s0;->willBindInTime(IJJ)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_39
    :goto_1b
    const/4 v0, 0x1

    move v1, v0

    move v0, v9

    goto/16 :goto_20

    :cond_3a
    invoke-virtual {v10}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v2

    iget-object v3, v10, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-eqz v2, :cond_3b

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v8, v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    goto :goto_1c

    :cond_3b
    move v2, v9

    :goto_1c
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v4, v10, v11}, Landroidx/recyclerview/widget/Z;->bindViewHolder(Landroidx/recyclerview/widget/E0;I)V

    if-eqz v2, :cond_3c

    invoke-static {v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_3c
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    iget-object v0, v0, Landroidx/recyclerview/widget/t0;->g:Landroidx/recyclerview/widget/s0;

    iget v2, v10, Landroidx/recyclerview/widget/E0;->mItemViewType:I

    sub-long/2addr v4, v14

    invoke-virtual {v0, v2, v4, v5}, Landroidx/recyclerview/widget/s0;->factorInBindTime(IJ)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/x;->b(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    invoke-static {v3, v0}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    goto :goto_1d

    :cond_3d
    const/4 v0, 0x1

    :goto_1d
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/G0;

    if-nez v2, :cond_3e

    goto :goto_1f

    :cond_3e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/G0;->a()Landroidx/core/view/b;

    move-result-object v2

    instance-of v4, v2, Landroidx/recyclerview/widget/F0;

    if-eqz v4, :cond_41

    move-object v4, v2

    check-cast v4, Landroidx/recyclerview/widget/F0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/core/view/H;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    if-nez v5, :cond_3f

    goto :goto_1e

    :cond_3f
    instance-of v6, v5, Landroidx/core/view/a;

    if-eqz v6, :cond_40

    check-cast v5, Landroidx/core/view/a;

    iget-object v13, v5, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    goto :goto_1e

    :cond_40
    new-instance v13, Landroidx/core/view/b;

    invoke-direct {v13, v5}, Landroidx/core/view/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_1e
    if-eqz v13, :cond_41

    if-eq v13, v4, :cond_41

    iget-object v4, v4, Landroidx/recyclerview/widget/F0;->e:Ljava/util/Map;

    check-cast v4, Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v13}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-static {v3, v2}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    goto :goto_1f

    :cond_42
    const/4 v0, 0x1

    :goto_1f
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-eqz v2, :cond_43

    iput v1, v10, Landroidx/recyclerview/widget/E0;->mPreLayoutPosition:I

    :cond_43
    move v1, v0

    :goto_20
    iget-object v2, v10, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, v10, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-nez v2, :cond_44

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_44
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_45
    check-cast v2, Landroidx/recyclerview/widget/m0;

    :goto_21
    iput-object v10, v2, Landroidx/recyclerview/widget/m0;->a:Landroidx/recyclerview/widget/E0;

    if-eqz v12, :cond_46

    if-eqz v0, :cond_46

    move v9, v1

    :cond_46
    iput-boolean v9, v2, Landroidx/recyclerview/widget/m0;->d:Z

    return-object v10

    :cond_47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Landroidx/recyclerview/widget/E0;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    iget p0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 p0, p0, -0x21

    iput p0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/l0;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/t0;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/t0;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/t0;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/t0;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
