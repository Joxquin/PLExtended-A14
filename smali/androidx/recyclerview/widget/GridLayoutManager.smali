.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field private static final sSupportedDirectionsForActionScrollInDirection:Ljava/util/Set;


# instance fields
.field mCachedBorders:[I

.field mColumnWithAccessibilityFocus:I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field private mPositionTargetedByScrollInDirection:I

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mRowWithAccessibilityFocus:I

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/H;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->sSupportedDirectionsForActionScrollInDirection:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 16
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 17
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 18
    new-instance v1, Landroidx/recyclerview/widget/F;

    invoke-direct {v1}, Landroidx/recyclerview/widget/F;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPositionTargetedByScrollInDirection:I

    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    .line 23
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 4
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/F;

    invoke-direct {v1}, Landroidx/recyclerview/widget/F;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPositionTargetedByScrollInDirection:I

    .line 9
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    .line 11
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/l0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/k0;

    move-result-object p1

    .line 12
    iget p1, p1, Landroidx/recyclerview/widget/k0;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method private getColumnIndex(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getRowIndex(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getRowIndices(I)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowOrColumnIndices(II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getRowOrColumnIndices(II)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, p2, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    move p2, p1

    :goto_0
    add-int v1, p1, p0

    if-ge p2, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    iget-boolean p3, p3, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez p3, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/H;->getSpanGroupIndex(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/t0;->b(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/H;->getSpanGroupIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 1

    iget-boolean p3, p3, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez p3, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/H;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/t0;->b(I)I

    move-result p2

    if-ne p2, v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/H;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 1

    iget-boolean p3, p3, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/H;->getSpanSize(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/t0;->b(I)I

    move-result p2

    if-ne p2, v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/H;->getSpanSize(I)I

    move-result p0

    return p0
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/G;

    iget-object v1, v0, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/G;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/G;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v5, v1, p2, v3, v4}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->i()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v6, v1, v3, v2, v0}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v1, p2, v2, v4}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->i()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v1, v2, v3, v0}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/m0;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/l0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/l0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroidx/recyclerview/widget/m0;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/G;

    return p0
.end method

.method public final collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/C;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1

    iget v3, p2, Landroidx/recyclerview/widget/L;->d:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    iget v3, p2, Landroidx/recyclerview/widget/L;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/L;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroidx/recyclerview/widget/C;->a(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/H;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p2, Landroidx/recyclerview/widget/L;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/L;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/L;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final findReferenceChild(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;ZZ)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 p4, -0x1

    move v0, p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v8, p4

    move p4, p3

    move p3, v8

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/S;->h()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->f()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-direct {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    return-object v4
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/m0;
    .locals 2

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/G;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/G;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/G;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/G;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 1
    new-instance p0, Landroidx/recyclerview/widget/G;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 2
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Landroidx/recyclerview/widget/G;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/G;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/G;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final getSpaceForSpanRange(II)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int v1, p0, p1

    aget v1, v0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, p0, p2

    aget p0, p0, p1

    sub-int/2addr p2, p0

    return p2
.end method

.method public final getSpanCount()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0
.end method

.method public final getSpanSizeLookup()Landroidx/recyclerview/widget/H;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    return-object p0
.end method

.method public final layoutChunk(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/K;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget v4, v3, Landroidx/recyclerview/widget/S;->d:I

    iget-object v3, v3, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->getHeightMode()I

    move-result v3

    goto :goto_1

    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->getWidthMode()I

    move-result v3

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-eq v3, v5, :cond_0

    move v5, v8

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    aget v9, v9, v10

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_3
    if-eqz v5, :cond_2

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    :cond_2
    iget v10, v2, Landroidx/recyclerview/widget/L;->e:I

    if-ne v10, v8, :cond_3

    move v10, v8

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-nez v10, :cond_4

    iget v11, v2, Landroidx/recyclerview/widget/L;->d:I

    invoke-direct {v6, v11, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v11

    iget v12, v2, Landroidx/recyclerview/widget/L;->d:I

    invoke-direct {v6, v12, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v12

    add-int/2addr v11, v12

    :cond_4
    const/4 v12, 0x0

    :goto_5
    iget v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v12, v13, :cond_9

    iget v13, v2, Landroidx/recyclerview/widget/L;->d:I

    if-ltz v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v14

    if-ge v13, v14, :cond_5

    move v13, v8

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_9

    if-lez v11, :cond_9

    iget v13, v2, Landroidx/recyclerview/widget/L;->d:I

    invoke-direct {v6, v13, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v14

    iget v15, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v14, v15, :cond_8

    sub-int/2addr v11, v14

    if-gez v11, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/L;->b(Landroidx/recyclerview/widget/t0;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_7

    goto :goto_7

    :cond_7
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v13, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const-string v3, " spans."

    invoke-static {v1, v2, v3}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_7
    if-nez v12, :cond_a

    iput-boolean v8, v7, Landroidx/recyclerview/widget/K;->b:Z

    return-void

    :cond_a
    if-eqz v10, :cond_b

    move v13, v8

    move v11, v12

    const/4 v8, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v8, v12, -0x1

    const/4 v11, -0x1

    const/4 v13, -0x1

    :goto_8
    const/4 v14, 0x0

    :goto_9
    if-eq v8, v11, :cond_c

    iget-object v15, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/recyclerview/widget/G;

    invoke-static {v15}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v15

    invoke-direct {v6, v15, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v15

    iput v15, v4, Landroidx/recyclerview/widget/G;->f:I

    iput v14, v4, Landroidx/recyclerview/widget/G;->e:I

    add-int/2addr v14, v15

    add-int/2addr v8, v13

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v1, v12, :cond_13

    iget-object v8, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v8, v1

    iget-object v11, v2, Landroidx/recyclerview/widget/L;->k:Ljava/util/List;

    if-nez v11, :cond_e

    if-eqz v10, :cond_d

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/l0;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_d
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/l0;->addView$1(Landroid/view/View;)V

    goto :goto_b

    :cond_e
    if-eqz v10, :cond_f

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/l0;->addDisappearingView(Landroid/view/View;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/l0;->addDisappearingView$1(Landroid/view/View;)V

    :goto_b
    iget-object v11, v6, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    if-nez v11, :cond_10

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_c
    invoke-direct {v6, v8, v3, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v11

    if-le v11, v4, :cond_11

    move v4, v11

    :cond_11
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/G;

    iget-object v13, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v13, v8}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v8, v13

    iget v11, v11, Landroidx/recyclerview/widget/G;->f:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    cmpl-float v11, v8, v0

    if-lez v11, :cond_12

    move v0, v8

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    if-eqz v5, :cond_15

    iget v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v12, :cond_15

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v0, v0, v14

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x1

    invoke-direct {v6, v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v0

    if-le v0, v4, :cond_14

    move v4, v0

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_15
    const/4 v14, 0x0

    :goto_e
    if-ge v14, v12, :cond_19

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v0, v0, v14

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v1

    if-eq v1, v4, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/G;

    iget-object v3, v1, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v8

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v3

    iget v3, v1, Landroidx/recyclerview/widget/G;->e:I

    iget v9, v1, Landroidx/recyclerview/widget/G;->f:I

    invoke-virtual {v6, v3, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    iget v9, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-static {v10, v3, v9, v8, v1}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v1

    sub-int v3, v4, v5

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    sub-int v8, v4, v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v10, v3, v9, v5, v1}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v3

    move v1, v8

    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v6, v0, v1, v3, v5}, Landroidx/recyclerview/widget/l0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_10

    :cond_17
    const/4 v10, 0x0

    :cond_18
    :goto_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    iput v4, v7, Landroidx/recyclerview/widget/K;->a:I

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget v0, v2, Landroidx/recyclerview/widget/L;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget v0, v2, Landroidx/recyclerview/widget/L;->b:I

    sub-int v1, v0, v4

    move v14, v1

    goto :goto_11

    :cond_1a
    iget v0, v2, Landroidx/recyclerview/widget/L;->b:I

    add-int/2addr v4, v0

    move v14, v0

    move v0, v4

    :goto_11
    move v1, v10

    move v2, v14

    move v14, v0

    move v0, v1

    goto :goto_13

    :cond_1b
    const/4 v0, -0x1

    iget v1, v2, Landroidx/recyclerview/widget/L;->f:I

    if-ne v1, v0, :cond_1c

    iget v0, v2, Landroidx/recyclerview/widget/L;->b:I

    sub-int v1, v0, v4

    move v14, v1

    goto :goto_12

    :cond_1c
    iget v0, v2, Landroidx/recyclerview/widget/L;->b:I

    add-int/2addr v4, v0

    move v14, v0

    move v0, v4

    :goto_12
    move v2, v10

    move v1, v14

    move v14, v2

    :goto_13
    if-ge v10, v12, :cond_21

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v3, v10

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/recyclerview/widget/G;

    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget v4, v9, Landroidx/recyclerview/widget/G;->e:I

    sub-int/2addr v3, v4

    aget v1, v1, v3

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_14

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v9, Landroidx/recyclerview/widget/G;->e:I

    aget v1, v1, v3

    add-int/2addr v1, v0

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_14
    move v11, v0

    move v13, v1

    move v15, v14

    move v14, v2

    goto :goto_15

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v2

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Landroidx/recyclerview/widget/G;->e:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v11, v0

    move v13, v1

    move v14, v2

    move v15, v3

    :goto_15
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v13

    move v3, v14

    move v4, v11

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/l0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroidx/recyclerview/widget/K;->c:Z

    :cond_20
    iget-boolean v0, v7, Landroidx/recyclerview/widget/K;->d:Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Landroidx/recyclerview/widget/K;->d:Z

    add-int/lit8 v10, v10, 0x1

    move v0, v11

    move v1, v13

    move v2, v14

    move v14, v15

    goto/16 :goto_13

    :cond_21
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnchorReady(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/J;I)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/J;->b:I

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroidx/recyclerview/widget/J;->b:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Landroidx/recyclerview/widget/J;->b:I

    invoke-direct {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroidx/recyclerview/widget/J;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/J;->b:I

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz p1, :cond_4

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq p1, p2, :cond_5

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_5
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object/from16 v5, p1

    :goto_0
    move-object v3, v4

    goto :goto_2

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/g;->j(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/G;

    iget v7, v6, Landroidx/recyclerview/widget/G;->e:I

    iget v6, v6, Landroidx/recyclerview/widget/G;->f:I

    add-int/2addr v6, v7

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v4

    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    move v5, v8

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v5, v10, :cond_6

    move v5, v8

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    const/4 v10, -0x1

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v8

    move v11, v10

    move v12, v11

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v5

    move v11, v5

    move v12, v8

    const/4 v5, 0x0

    :goto_5
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v13, v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v8

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-direct {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v14

    move v9, v10

    move v15, v9

    move/from16 v16, v12

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v10, v5

    move-object v5, v4

    :goto_7
    if-eq v10, v11, :cond_1a

    move/from16 v17, v11

    invoke-direct {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v11

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_9

    goto/16 :goto_10

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_b

    if-eq v11, v14, :cond_b

    if-eqz v4, :cond_a

    goto/16 :goto_10

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move/from16 v19, v8

    const/16 v20, 0x1

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/G;

    iget v2, v11, Landroidx/recyclerview/widget/G;->e:I

    move-object/from16 v18, v3

    iget v3, v11, Landroidx/recyclerview/widget/G;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-ne v2, v7, :cond_c

    if-ne v3, v6, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_f

    if-nez v5, :cond_f

    :cond_e
    move-object/from16 v21, v5

    goto :goto_9

    :cond_f
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v5

    sub-int v5, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_12

    if-le v5, v8, :cond_10

    goto :goto_9

    :cond_10
    if-ne v5, v8, :cond_16

    if-le v2, v15, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-ne v13, v5, :cond_16

    :goto_9
    move/from16 v19, v8

    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_d

    :cond_12
    if-nez v4, :cond_16

    move/from16 v19, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/l0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/T0;->b(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Landroidx/recyclerview/widget/l0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/T0;->b(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    const/16 v20, 0x1

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_17

    if-le v5, v12, :cond_14

    goto :goto_c

    :cond_14
    if-ne v5, v12, :cond_17

    if-le v2, v9, :cond_15

    move/from16 v5, v20

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-ne v13, v5, :cond_17

    :goto_c
    move/from16 v5, v20

    goto :goto_d

    :cond_16
    move/from16 v19, v8

    const/16 v20, 0x1

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_18

    iget v4, v11, Landroidx/recyclerview/widget/G;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v3, v2

    move v15, v4

    move-object/from16 v5, v21

    move-object v4, v1

    goto :goto_f

    :cond_18
    iget v5, v11, Landroidx/recyclerview/widget/G;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v9, v5

    move/from16 v8, v19

    move-object v5, v1

    goto :goto_f

    :cond_19
    :goto_e
    move/from16 v8, v19

    move-object/from16 v5, v21

    :goto_f
    add-int v10, v10, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v11, v17

    move-object/from16 v3, v18

    goto/16 :goto_7

    :cond_1a
    :goto_10
    move-object/from16 v21, v5

    if-eqz v4, :cond_1b

    goto :goto_11

    :cond_1b
    move-object/from16 v4, v21

    :goto_11
    return-object v4
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, LM/e;->h(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    sget-object p0, LM/c;->n:LM/c;

    invoke-virtual {p3, p0}, LM/e;->b(LM/c;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroid/view/View;LM/e;)V
    .locals 7

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/G;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;LM/e;)V

    return-void

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/G;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->a()I

    move-result p3

    invoke-direct {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_1

    iget v1, v0, Landroidx/recyclerview/widget/G;->e:I

    iget v2, v0, Landroidx/recyclerview/widget/G;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v1 .. v6}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    invoke-virtual {p4, p0}, LM/e;->i(LM/d;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iget v3, v0, Landroidx/recyclerview/widget/G;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/G;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    invoke-virtual {p4, p0}, LM/e;->i(LM/d;)V

    :goto_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget-object p0, p0, Landroidx/recyclerview/widget/H;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget-object p0, p0, Landroidx/recyclerview/widget/H;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget-object p0, p0, Landroidx/recyclerview/widget/H;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget-object p0, p0, Landroidx/recyclerview/widget/H;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    iget-object p0, p0, Landroidx/recyclerview/widget/H;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)V
    .locals 7

    iget-boolean v0, p2, Landroidx/recyclerview/widget/A0;->g:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/G;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/m0;->a()I

    move-result v5

    iget v6, v4, Landroidx/recyclerview/widget/G;->f:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, Landroidx/recyclerview/widget/G;->e:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/A0;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/A0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPositionTargetedByScrollInDirection:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPositionTargetedByScrollInDirection:I

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 11

    sget-object v0, LM/c;->n:LM/c;

    invoke-virtual {v0}, LM/c;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v0, :cond_35

    if-eq p1, v3, :cond_35

    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    const-string v0, "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->sSupportedDirectionsForActionScrollInDirection:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/E0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    move p1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/E0;)I

    move-result p1

    :goto_3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v4

    if-ltz v0, :cond_34

    if-gez v4, :cond_8

    goto/16 :goto_13

    :cond_8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v5

    invoke-direct {p0, v5, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowOrColumnIndices(II)Ljava/util/Set;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v2

    :goto_5
    if-eqz v5, :cond_b

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    :cond_b
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    if-ne v5, v3, :cond_c

    move v5, v0

    :cond_c
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    if-ne v6, v3, :cond_d

    goto :goto_6

    :cond_d
    move v4, v6

    :goto_6
    const/16 v6, 0x42

    const/16 v7, 0x11

    if-eq p2, v7, :cond_1d

    const/16 v8, 0x21

    if-eq p2, v8, :cond_19

    if-eq p2, v6, :cond_13

    const/16 v8, 0x82

    if-eq p2, v8, :cond_e

    return v1

    :cond_e
    add-int/2addr p1, v2

    :goto_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result v8

    if-ge p1, v8, :cond_23

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    if-ltz v8, :cond_23

    if-gez v9, :cond_f

    goto/16 :goto_b

    :cond_f
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v10, v2, :cond_11

    if-le v8, v5, :cond_12

    if-eq v9, v4, :cond_10

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    invoke-direct {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowOrColumnIndices(II)Ljava/util/Set;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_10
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    goto/16 :goto_c

    :cond_11
    if-le v8, v5, :cond_12

    if-ne v9, v4, :cond_12

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    goto/16 :goto_c

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_13
    add-int/2addr p1, v2

    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result v8

    if-ge p1, v8, :cond_23

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    if-ltz v8, :cond_23

    if-gez v9, :cond_14

    goto/16 :goto_b

    :cond_14
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v10, v2, :cond_17

    if-ne v8, v5, :cond_15

    if-gt v9, v4, :cond_16

    :cond_15
    if-le v8, v5, :cond_18

    :cond_16
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto/16 :goto_c

    :cond_17
    if-le v9, v4, :cond_18

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto/16 :goto_c

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_19
    sub-int/2addr p1, v2

    :goto_9
    if-ltz p1, :cond_23

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    if-ltz v8, :cond_23

    if-gez v9, :cond_1a

    goto/16 :goto_b

    :cond_1a
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v10, v2, :cond_1b

    if-ge v8, v5, :cond_1c

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    invoke-direct {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowOrColumnIndices(II)Ljava/util/Set;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    goto :goto_c

    :cond_1b
    if-ge v8, v5, :cond_1c

    if-ne v9, v4, :cond_1c

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    goto :goto_c

    :cond_1c
    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    :cond_1d
    sub-int/2addr p1, v2

    :goto_a
    if-ltz p1, :cond_23

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndex(I)I

    move-result v8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result v9

    if-ltz v8, :cond_23

    if-gez v9, :cond_1e

    goto :goto_b

    :cond_1e
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v10, v2, :cond_21

    if-ne v8, v5, :cond_1f

    if-lt v9, v4, :cond_20

    :cond_1f
    if-ge v8, v5, :cond_22

    :cond_20
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto :goto_c

    :cond_21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    if-ge v9, v4, :cond_22

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto :goto_c

    :cond_22
    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_23
    :goto_b
    move p1, v3

    :goto_c
    if-ne p1, v3, :cond_33

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_33

    if-ne p2, v7, :cond_2a

    if-gez v0, :cond_24

    goto/16 :goto_11

    :cond_24
    if-ne v4, v2, :cond_25

    goto/16 :goto_11

    :cond_25
    new-instance p1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move p2, v1

    :goto_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result v4

    if-ge p2, v4, :cond_28

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_26

    goto/16 :goto_11

    :cond_26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_27
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_28
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v0, :cond_29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnIndex(I)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto/16 :goto_12

    :cond_2a
    if-ne p2, v6, :cond_33

    if-gez v0, :cond_2b

    goto/16 :goto_11

    :cond_2b
    if-ne v4, v2, :cond_2c

    goto/16 :goto_11

    :cond_2c
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    move p2, v1

    :goto_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getItemCount()I

    move-result v4

    if-ge p2, v4, :cond_30

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowIndices(I)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_2e

    goto :goto_11

    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2f
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_30
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v0, :cond_31

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mRowWithAccessibilityFocus:I

    iput v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mColumnWithAccessibilityFocus:I

    goto :goto_12

    :cond_32
    :goto_11
    move p1, v3

    :cond_33
    :goto_12
    if-eq p1, v3, :cond_34

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPositionTargetedByScrollInDirection:I

    return v2

    :cond_34
    :goto_13
    return v1

    :cond_35
    const v0, 0x1020037

    if-ne p1, v0, :cond_3b

    if-eqz p2, :cond_3b

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, v3, :cond_3a

    if-ne p2, v3, :cond_36

    goto :goto_16

    :cond_36
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v0

    move v4, v1

    :goto_14
    if-ge v4, v0, :cond_39

    iget-object v5, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, v4, v6, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-direct {p0, v4, v7, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v7, v2, :cond_37

    if-ne v5, p2, :cond_38

    if-ne v6, p1, :cond_38

    goto :goto_15

    :cond_37
    if-ne v5, p1, :cond_38

    if-ne v6, p2, :cond_38

    goto :goto_15

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_39
    move v4, v3

    :goto_15
    if-le v4, v3, :cond_3a

    invoke-virtual {p0, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v2

    :cond_3a
    :goto_16
    return v1

    :cond_3b
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/l0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/x;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/x;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p1

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final setSpanCount(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/H;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Span count should be at least 1. Provided "

    invoke-static {v0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSpanSizeLookup(Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/H;

    return-void
.end method

.method public final setStackFromEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
