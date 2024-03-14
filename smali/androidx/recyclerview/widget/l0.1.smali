.class public abstract Landroidx/recyclerview/widget/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mChildHelper:Landroidx/recyclerview/widget/g;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroidx/recyclerview/widget/T0;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/j0;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroidx/recyclerview/widget/O;

.field mVerticalBoundCheck:Landroidx/recyclerview/widget/T0;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/j0;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/j0;-><init>(Landroidx/recyclerview/widget/l0;I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/l0;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/j0;

    new-instance v2, Landroidx/recyclerview/widget/j0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/j0;-><init>(Landroidx/recyclerview/widget/l0;I)V

    iput-object v2, p0, Landroidx/recyclerview/widget/l0;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/j0;

    new-instance v4, Landroidx/recyclerview/widget/T0;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/T0;-><init>(Landroidx/recyclerview/widget/j0;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/l0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/T0;

    new-instance v0, Landroidx/recyclerview/widget/T0;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/T0;-><init>(Landroidx/recyclerview/widget/j0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/l0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/T0;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/l0;->mRequestedSimpleAnimations:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/l0;->mIsAttachedToWindow:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/l0;->mMeasurementCacheEnabled:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/l0;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/E0;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    iget-object p3, p3, Landroidx/recyclerview/widget/W0;->a:Lq/m;

    invoke-virtual {p3, v0}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U0;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/recyclerview/widget/U0;->a()Landroidx/recyclerview/widget/U0;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p3, v2, Landroidx/recyclerview/widget/U0;->a:I

    or-int/2addr p3, v1

    iput p3, v2, Landroidx/recyclerview/widget/U0;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v4, v2, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    iget-object v4, v4, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v2, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/f;->d(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/f;->b(I)I

    move-result v2

    sub-int/2addr v4, v2

    :goto_3
    if-ne p2, v5, :cond_6

    iget-object p2, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/g;->e()I

    move-result p2

    :cond_6
    if-eq v4, v5, :cond_a

    if-eq v4, p2, :cond_e

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/g;->c(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/m0;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    iget-object v5, v5, Landroidx/recyclerview/widget/W0;->a:Lq/m;

    invoke-virtual {v5, v4}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/U0;

    if-nez v6, :cond_7

    invoke-static {}, Landroidx/recyclerview/widget/U0;->a()Landroidx/recyclerview/widget/U0;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v5, v6, Landroidx/recyclerview/widget/U0;->a:I

    or-int/2addr v1, v5

    iput v1, v6, Landroidx/recyclerview/widget/U0;->a:I

    goto :goto_4

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/E0;)V

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/recyclerview/widget/g;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot move a child from non-existing index:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p3}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    iget-object v2, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v2, p1, p2, v3}, Landroidx/recyclerview/widget/g;->a(Landroid/view/View;IZ)V

    iput-boolean v1, p3, Landroidx/recyclerview/widget/m0;->c:Z

    iget-object p2, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroidx/recyclerview/widget/O;->d()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/O;->f(Landroid/view/View;)V

    goto :goto_7

    :cond_c
    :goto_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/t0;->m(Landroidx/recyclerview/widget/E0;)V

    goto :goto_6

    :cond_d
    iget v1, v0, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroidx/recyclerview/widget/E0;->mFlags:I

    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/g;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_e
    :goto_7
    iget-boolean p0, p3, Landroidx/recyclerview/widget/m0;->d:Z

    if-eqz p0, :cond_10

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "consuming pending invalidate on child "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Landroidx/recyclerview/widget/m0;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p0, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v3, p3, Landroidx/recyclerview/widget/m0;->d:Z

    :cond_10
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(ZIIII)I
    .locals 4

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p0, :cond_1

    if-ltz p4, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, v1, :cond_7

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p4, :cond_2

    :goto_0
    move p2, v3

    goto :goto_3

    :cond_2
    if-ne p4, v1, :cond_4

    :cond_3
    move p4, p1

    goto :goto_3

    :cond_4
    if-ne p4, v0, :cond_7

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    move p4, p1

    move p2, p3

    goto :goto_3

    :cond_6
    :goto_1
    move p4, p1

    move p2, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p2, p3

    move p4, p2

    :goto_3
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getDecoratedTop(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/m0;

    iget-object p0, p0, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getPosition(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m0;->a()I

    move-result p0

    return p0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/k0;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/k0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/k0;-><init>()V

    sget-object v1, LZ/a;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Landroidx/recyclerview/widget/k0;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroidx/recyclerview/widget/k0;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Landroidx/recyclerview/widget/k0;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/k0;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public final addDisappearingView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/l0;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public final addDisappearingView$1(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/l0;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/l0;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public final addView$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/l0;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/m0;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/C;)V
    .locals 0

    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/C;)V
    .locals 0

    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final detachAndScrapAttachedViews(Landroidx/recyclerview/widget/t0;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoring view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/Z;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->removeViewAt(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/t0;->j(Landroidx/recyclerview/widget/E0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/g;->c(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/t0;->k(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/W0;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/E0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/E0;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/m0;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 6
    new-instance p0, Landroidx/recyclerview/widget/m0;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/recyclerview/widget/m0;

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroidx/recyclerview/widget/m0;

    check-cast p1, Landroidx/recyclerview/widget/m0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/m0;-><init>(Landroidx/recyclerview/widget/m0;)V

    return-object p0

    .line 3
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Landroidx/recyclerview/widget/m0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/m0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Landroidx/recyclerview/widget/m0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/m0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->d(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getChildCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    return p0
.end method

.method public final getHeightMode()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/l0;->mHeightMode:I

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getPaddingBottom()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPaddingLeft()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPaddingRight()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPaddingTop()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public final getTransformedBoundingBox(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/m0;

    iget-object v0, v0, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    return p0
.end method

.method public final getWidthMode()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/l0;->mWidthMode:I

    return p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/l0;->mItemPrefetchEnabled:Z

    return p0
.end method

.method public isLayoutReversed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/m0;

    iget-object v0, p0, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/m0;

    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x0

    iget v1, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    iget v4, p0, Landroidx/recyclerview/widget/l0;->mWidthMode:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v5

    add-int/2addr v6, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result v5

    invoke-static {v5, v1, v4, v6, v2}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    iget v4, p0, Landroidx/recyclerview/widget/l0;->mHeightMode:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result v5

    invoke-static {v5, v2, v4, v6, v3}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/recyclerview/widget/l0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/high16 v2, 0x4000000

    const v3, -0x4000001

    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/4 v5, 0x0

    iget-object v6, p3, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v7, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, LM/e;->a(I)V

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, LM/e;->a(I)V

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/l0;->getRowCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/l0;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    invoke-static {p3, p0, v5, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;LM/e;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v0, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/g;->j(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroid/view/View;LM/e;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroid/view/View;LM/e;)V
    .locals 6

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p2

    :cond_1
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    invoke-static/range {v0 .. v5}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    .line 7
    invoke-virtual {p4, p0}, LM/e;->i(LM/d;)V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/A0;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 12

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget v0, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2000

    const/16 v4, 0x1000

    const/4 v5, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_1

    move v0, v2

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    neg-int v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    neg-int v1, v1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    const-string v8, "androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT"

    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    cmpg-float v8, p2, v6

    if-gez v8, :cond_9

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move p2, v7

    :cond_9
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p2, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_d

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_3

    :cond_d
    invoke-static {v7, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {v6, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_e

    int-to-float p1, v1

    mul-float/2addr p1, p2

    float-to-int v1, p1

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int v0, p1

    :cond_e
    move v8, v0

    move v7, v1

    iget-object v6, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    :goto_3
    move v2, v5

    :goto_4
    return v2
.end method

.method public final removeAndRecycleAllViews(Landroidx/recyclerview/widget/t0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/E0;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->removeViewAt(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/t0;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAndRecycleScrapInt(Landroidx/recyclerview/widget/t0;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/t0;->a:Ljava/util/ArrayList;

    if-ltz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/E0;

    iget-object v2, v2, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/E0;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/E0;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/h0;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/h0;->d(Landroidx/recyclerview/widget/E0;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/E0;->setIsRecyclable(Z)V

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/E0;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/E0;->mScrapContainer:Landroidx/recyclerview/widget/t0;

    iput-boolean v4, v2, Landroidx/recyclerview/widget/E0;->mInChangeScrap:Z

    iget v3, v2, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Landroidx/recyclerview/widget/E0;->mFlags:I

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/t0;->j(Landroidx/recyclerview/widget/E0;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroidx/recyclerview/widget/t0;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method public final removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/t0;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    iget-object v1, v0, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/f;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/Y;->d(I)V

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/t0;->i(Landroid/view/View;)V

    return-void
.end method

.method public final removeViewAt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroidx/recyclerview/widget/Y;

    iget-object v1, v0, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/f;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/g;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/Y;->d(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v3, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz p5, :cond_7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result p5

    iget v3, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    if-ge p2, v3, :cond_6

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v2

    if-le p2, p3, :cond_6

    iget p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    if-ge p2, v4, :cond_6

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    if-gt p0, p5, :cond_5

    goto :goto_3

    :cond_5
    move p0, v7

    goto :goto_4

    :cond_6
    :goto_3
    move p0, v0

    :goto_4
    if-eqz p0, :cond_8

    :cond_7
    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    return v0

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_6
    return v7
.end method

.method public final requestLayout()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "You MUST implement scrollToPosition. It will soon become abstract"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/l0;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setMeasureSpecs(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    iput v0, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    iput v0, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/x;->d(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final setMeasuredDimensionFromChildren(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/l0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/g;

    iput-object v0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/l0;->mWidth:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mHeight:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mWidthMode:I

    iput p1, p0, Landroidx/recyclerview/widget/l0;->mHeightMode:I

    return-void
.end method

.method public final shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/l0;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/l0;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/l0;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public shouldMeasureTwice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z
    .locals 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/l0;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/l0;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/l0;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p0, "RecyclerView"

    const-string p1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startSmoothScroll(Landroidx/recyclerview/widget/O;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/O;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/O;->i()V

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/O;->h(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l0;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
