.class public Lcom/android/launcher3/util/ScrollableLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field protected final mCachedSizes:Landroid/util/SparseIntArray;

.field private mLastValidHeightIndex:I

.field private mRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mTotalHeightCache:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method private getItemsHeight(Landroidx/recyclerview/widget/Z;I)I
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    iput v3, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    move p2, v3

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    if-gt p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget p0, p0, p2

    return p0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget v1, v1, v0

    :goto_1
    if-ge v0, p2, :cond_4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->incrementTotalHeight(Landroidx/recyclerview/widget/Z;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    add-int/lit8 v0, v0, 0x1

    aput v1, v2, v0

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return v1
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/A0;[I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/A0;[I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x1

    aget v0, p2, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p2, p1

    return-void
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 3

    iget-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v2

    if-gez v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/Z;I)I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    :cond_5
    :goto_1
    return v0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/Z;I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public incrementTotalHeight(Landroidx/recyclerview/widget/Z;II)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/Z;->getItemViewType(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    add-int/2addr p0, p3

    return p0
.end method

.method public final layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/l0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    iget-object p2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    const/4 p4, -0x1

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p4

    if-eq p4, p1, :cond_0

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    :cond_0
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method
