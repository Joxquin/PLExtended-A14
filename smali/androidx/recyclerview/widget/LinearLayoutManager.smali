.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/l0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/z0;


# instance fields
.field final mAnchorInfo:Landroidx/recyclerview/widget/J;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/K;

.field private mLayoutState:Landroidx/recyclerview/widget/L;

.field mOrientation:I

.field mOrientationHelper:Landroidx/recyclerview/widget/S;

.field mPendingSavedState:Landroidx/recyclerview/widget/N;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/l0;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 6
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    .line 11
    new-instance v2, Landroidx/recyclerview/widget/J;

    invoke-direct {v2}, Landroidx/recyclerview/widget/J;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/J;

    .line 12
    new-instance v2, Landroidx/recyclerview/widget/K;

    invoke-direct {v2}, Landroidx/recyclerview/widget/K;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/K;

    const/4 v2, 0x2

    .line 13
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v2, v2, [I

    .line 14
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 17
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/l0;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 23
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 24
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 25
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    .line 29
    new-instance v1, Landroidx/recyclerview/widget/J;

    invoke-direct {v1}, Landroidx/recyclerview/widget/J;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/J;

    .line 30
    new-instance v1, Landroidx/recyclerview/widget/K;

    invoke-direct {v1}, Landroidx/recyclerview/widget/K;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/K;

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v1, v1, [I

    .line 32
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 33
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/l0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/k0;

    move-result-object p1

    .line 34
    iget p2, p1, Landroidx/recyclerview/widget/k0;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 35
    iget-boolean p2, p1, Landroidx/recyclerview/widget/k0;->c:Z

    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 37
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    .line 40
    :goto_0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/k0;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/H0;->a(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/H0;->b(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/H0;->c(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;Z)I

    move-result p0

    return p0
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/S;->f()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/S;->f()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/S;->m(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/S;->h()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/S;->h()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/S;->m(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;)V
    .locals 5

    iget-boolean v0, p2, Landroidx/recyclerview/widget/L;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Landroidx/recyclerview/widget/L;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/L;->g:I

    iget v1, p2, Landroidx/recyclerview/widget/L;->i:I

    iget p2, p2, Landroidx/recyclerview/widget/L;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/S;->e()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/S;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/t0;II)V

    goto/16 :goto_8

    :cond_4
    add-int/2addr p2, v2

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/S;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/t0;II)V

    goto :goto_8

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_b

    add-int/2addr p2, v2

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/S;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/t0;II)V

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/S;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-direct {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/t0;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/t0;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/l0;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/t0;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/l0;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/t0;->i(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/A0;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->e()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/L;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput p1, v0, Landroidx/recyclerview/widget/L;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aput v3, v0, v3

    aput v3, v0, v2

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/A0;[I)V

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget p4, p4, v3

    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_1

    move v3, v2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Landroidx/recyclerview/widget/L;->h:I

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/L;->i:I

    const/4 p4, -0x1

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget v3, v0, Landroidx/recyclerview/widget/S;->d:I

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v0

    :goto_4
    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/L;->h:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    move v2, p4

    :cond_4
    iput v2, v0, Landroidx/recyclerview/widget/L;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v2, v1, Landroidx/recyclerview/widget/L;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/L;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/L;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/S;->f()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_6

    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v1, v0, Landroidx/recyclerview/widget/L;->h:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->h()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/recyclerview/widget/L;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, p4

    :goto_5
    iput v2, v0, Landroidx/recyclerview/widget/L;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v2, v1, Landroidx/recyclerview/widget/L;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/L;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/L;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/S;->h()I

    move-result p4

    add-int/2addr p1, p4

    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput p2, p0, Landroidx/recyclerview/widget/L;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/L;->c:I

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/L;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->f()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/L;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/L;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/L;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/L;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/L;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/L;->g:I

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->h()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/L;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput p1, v0, Landroidx/recyclerview/widget/L;->d:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/L;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/L;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/L;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/L;->g:I

    return-void
.end method


# virtual methods
.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public calculateExtraLayoutSpace(Landroidx/recyclerview/widget/A0;[I)V
    .locals 3

    iget p1, p1, Landroidx/recyclerview/widget/A0;->a:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/S;->i()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget p0, p0, Landroidx/recyclerview/widget/L;->f:I

    if-ne p0, v1, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, p1

    move p1, v2

    :goto_2
    aput p1, p2, v2

    aput p0, p2, v0

    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canScrollVertically()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/C;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/A0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/C;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/C;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v4, v0, Landroidx/recyclerview/widget/N;->d:I

    if-ltz v4, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    iget-boolean v0, v0, Landroidx/recyclerview/widget/N;->f:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v4, p1, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    move v0, v3

    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v2, :cond_5

    if-ltz v4, :cond_5

    if-ge v4, p1, :cond_5

    invoke-virtual {p2, v4, v3}, Landroidx/recyclerview/widget/C;->a(II)V

    add-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/C;)V
    .locals 0

    iget p0, p2, Landroidx/recyclerview/widget/L;->d:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/A0;->b()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/L;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroidx/recyclerview/widget/C;->a(II)V

    :cond_0
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final ensureLayoutState()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/L;

    invoke-direct {v0}, Landroidx/recyclerview/widget/L;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    :cond_0
    return-void
.end method

.method public final fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I
    .locals 7

    iget v0, p2, Landroidx/recyclerview/widget/L;->c:I

    iget v1, p2, Landroidx/recyclerview/widget/L;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/L;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/L;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/L;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/L;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_a

    :cond_3
    iget v3, p2, Landroidx/recyclerview/widget/L;->d:I

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v5

    if-ge v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    if-eqz v3, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/K;

    iput v4, v3, Landroidx/recyclerview/widget/K;->a:I

    iput-boolean v4, v3, Landroidx/recyclerview/widget/K;->b:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/K;->c:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/K;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/K;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/K;->b:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/L;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/K;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/L;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Landroidx/recyclerview/widget/L;->b:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/K;->c:Z

    if-eqz v4, :cond_6

    iget-object v4, p2, Landroidx/recyclerview/widget/L;->k:Ljava/util/List;

    if-nez v4, :cond_6

    iget-boolean v4, p3, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v4, :cond_7

    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/L;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/L;->c:I

    sub-int/2addr v1, v5

    :cond_7
    iget v4, p2, Landroidx/recyclerview/widget/L;->g:I

    if-eq v4, v2, :cond_9

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/L;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/L;->c:I

    if-gez v5, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/L;->g:I

    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;)V

    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/K;->d:Z

    if-eqz v3, :cond_2

    :cond_a
    :goto_1
    iget p0, p2, Landroidx/recyclerview/widget/L;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final findFirstVisibleChildClosestToEnd(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findFirstVisibleChildClosestToStart(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findFirstVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final findLastVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->h()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/T0;->a(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/T0;->a(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final findOneVisibleChild(IIZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/T0;->a(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/T0;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/T0;->a(IIII)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public findReferenceChild(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, -0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v2

    move v5, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/S;->h()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/S;->f()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v2

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    move v14, v3

    goto :goto_3

    :cond_3
    move v14, v2

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    move-object v9, v10

    goto :goto_8

    :cond_c
    move-object v9, v11

    :goto_8
    return-object v9
.end method

.method public final findViewByPosition(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/m0;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/m0;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/m0;-><init>(II)V

    return-object p0
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isLayoutRTL()Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayoutReversed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/K;)V
    .locals 7

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/L;->b(Landroidx/recyclerview/widget/t0;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroidx/recyclerview/widget/K;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/m0;

    iget-object v0, p3, Landroidx/recyclerview/widget/L;->k:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroidx/recyclerview/widget/L;->f:I

    if-ne v3, v1, :cond_1

    move v2, p2

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->addView$1(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroidx/recyclerview/widget/L;->f:I

    if-ne v3, v1, :cond_4

    move v2, p2

    :cond_4
    if-ne v0, v2, :cond_5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->addDisappearingView$1(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l0;->measureChildWithMargins(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroidx/recyclerview/widget/K;->a:I

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    iget v3, p3, Landroidx/recyclerview/widget/L;->f:I

    if-ne v3, v1, :cond_7

    iget p3, p3, Landroidx/recyclerview/widget/L;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/K;->a:I

    sub-int v1, p3, v1

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_2

    :cond_7
    iget p3, p3, Landroidx/recyclerview/widget/L;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/K;->a:I

    add-int/2addr v1, p3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/S;->n(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Landroidx/recyclerview/widget/L;->f:I

    if-ne v3, v1, :cond_9

    iget p3, p3, Landroidx/recyclerview/widget/L;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/K;->a:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_2

    :cond_9
    iget p3, p3, Landroidx/recyclerview/widget/L;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/K;->a:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/l0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v6}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    iput-boolean p2, p4, Landroidx/recyclerview/widget/K;->c:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Landroidx/recyclerview/widget/K;->d:Z

    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/J;I)V
    .locals 0

    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->i()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/A0;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput p2, v1, Landroidx/recyclerview/widget/L;->g:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/L;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_5

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    return-object v0

    :cond_6
    return-object p0

    :cond_7
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, LM/c;->k:LM/c;

    invoke-virtual {p3, p0}, LM/e;->b(LM/c;)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/l0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/t0;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/recyclerview/widget/N;->d:I

    if-ltz v3, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    if-eqz v7, :cond_3

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput-boolean v6, v3, Landroidx/recyclerview/widget/L;->a:Z

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v3, v0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_5

    :cond_4
    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v8, v0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/g;->j(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/J;

    iget-boolean v9, v8, Landroidx/recyclerview/widget/J;->e:Z

    const/high16 v10, -0x80000000

    if-eqz v9, :cond_9

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v9, v4, :cond_9

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_2b

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->f()I

    move-result v11

    if-ge v9, v11, :cond_8

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->h()I

    move-result v11

    if-gt v9, v11, :cond_2b

    :cond_8
    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/J;->c(Landroid/view/View;I)V

    goto/16 :goto_16

    :cond_9
    :goto_3
    invoke-virtual {v8}, Landroidx/recyclerview/widget/J;->d()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v3, :cond_1a

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v4, :cond_a

    goto/16 :goto_a

    :cond_a
    if-ltz v3, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v9

    if-lt v3, v9, :cond_b

    goto/16 :goto_9

    :cond_b
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v3, v8, Landroidx/recyclerview/widget/J;->b:I

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-eqz v9, :cond_e

    iget v11, v9, Landroidx/recyclerview/widget/N;->d:I

    if-ltz v11, :cond_c

    move v11, v5

    goto :goto_4

    :cond_c
    move v11, v6

    :goto_4
    if-eqz v11, :cond_e

    iget-boolean v3, v9, Landroidx/recyclerview/widget/N;->f:Z

    iput-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->f()I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    iget v9, v9, Landroidx/recyclerview/widget/N;->e:I

    sub-int/2addr v3, v9

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    goto/16 :goto_8

    :cond_d
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->h()I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    iget v9, v9, Landroidx/recyclerview/widget/N;->e:I

    add-int/2addr v3, v9

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    goto/16 :goto_8

    :cond_e
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v9, v10, :cond_17

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->i()I

    move-result v11

    if-le v9, v11, :cond_f

    invoke-virtual {v8}, Landroidx/recyclerview/widget/J;->a()V

    goto/16 :goto_8

    :cond_f
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->h()I

    move-result v11

    sub-int/2addr v9, v11

    if-gez v9, :cond_10

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->h()I

    move-result v3

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    iput-boolean v6, v8, Landroidx/recyclerview/widget/J;->d:Z

    goto/16 :goto_8

    :cond_10
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/S;->f()I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v9, v11

    if-gez v9, :cond_11

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->f()I

    move-result v3

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    iput-boolean v5, v8, Landroidx/recyclerview/widget/J;->d:Z

    goto :goto_8

    :cond_11
    iget-boolean v9, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/T;->j()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_5

    :cond_12
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v9

    :goto_5
    iput v9, v8, Landroidx/recyclerview/widget/J;->c:I

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_16

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v9, v3, :cond_14

    move v3, v5

    goto :goto_6

    :cond_14
    move v3, v6

    :goto_6
    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v3, v9, :cond_15

    move v3, v5

    goto :goto_7

    :cond_15
    move v3, v6

    :goto_7
    iput-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    :cond_16
    invoke-virtual {v8}, Landroidx/recyclerview/widget/J;->a()V

    goto :goto_8

    :cond_17
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->f()I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v9

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    goto :goto_8

    :cond_18
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/S;->h()I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v3, v9

    iput v3, v8, Landroidx/recyclerview/widget/J;->c:I

    :goto_8
    move v3, v5

    goto :goto_b

    :cond_19
    :goto_9
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1a
    :goto_a
    move v3, v6

    :goto_b
    if-eqz v3, :cond_1b

    goto/16 :goto_15

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_12

    :cond_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1e

    :cond_1d
    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_1e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v9, v0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/g;->j(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_c

    :cond_1f
    :goto_d
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/m0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m0;->a()I

    move-result v11

    if-ltz v11, :cond_20

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m0;->a()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v11

    if-ge v9, v11, :cond_20

    move v9, v5

    goto :goto_e

    :cond_20
    move v9, v6

    :goto_e
    if-eqz v9, :cond_21

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/J;->c(Landroid/view/View;I)V

    goto :goto_11

    :cond_21
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v9, :cond_22

    goto :goto_12

    :cond_22
    iget-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    invoke-virtual {v0, v1, v2, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/J;->b(Landroid/view/View;I)V

    iget-boolean v9, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v9, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->h()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/S;->f()I

    move-result v12

    if-gt v3, v11, :cond_23

    if-ge v9, v11, :cond_23

    move v13, v5

    goto :goto_f

    :cond_23
    move v13, v6

    :goto_f
    if-lt v9, v12, :cond_24

    if-le v3, v12, :cond_24

    move v3, v5

    goto :goto_10

    :cond_24
    move v3, v6

    :goto_10
    if-nez v13, :cond_25

    if-eqz v3, :cond_27

    :cond_25
    iget-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v3, :cond_26

    move v11, v12

    :cond_26
    iput v11, v8, Landroidx/recyclerview/widget/J;->c:I

    :cond_27
    :goto_11
    move v3, v5

    goto :goto_13

    :cond_28
    :goto_12
    move v3, v6

    :goto_13
    if-eqz v3, :cond_29

    goto :goto_15

    :cond_29
    invoke-virtual {v8}, Landroidx/recyclerview/widget/J;->a()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v3, :cond_2a

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_14

    :cond_2a
    move v3, v6

    :goto_14
    iput v3, v8, Landroidx/recyclerview/widget/J;->b:I

    :goto_15
    iput-boolean v5, v8, Landroidx/recyclerview/widget/J;->e:Z

    :cond_2b
    :goto_16
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v9, v3, Landroidx/recyclerview/widget/L;->j:I

    if-ltz v9, :cond_2c

    move v9, v5

    goto :goto_17

    :cond_2c
    move v9, v4

    :goto_17
    iput v9, v3, Landroidx/recyclerview/widget/L;->f:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aput v6, v3, v6

    aput v6, v3, v5

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/A0;[I)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/S;->h()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget v12, v11, Landroidx/recyclerview/widget/S;->d:I

    iget-object v11, v11, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    packed-switch v12, :pswitch_data_0

    goto :goto_18

    :pswitch_0
    invoke-virtual {v11}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v11

    goto :goto_19

    :goto_18
    invoke-virtual {v11}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v11

    :goto_19
    add-int/2addr v11, v3

    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-eqz v3, :cond_2f

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v3, v4, :cond_2f

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v12, v10, :cond_2f

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_2d

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/S;->f()I

    move-result v10

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v10, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_1a

    :cond_2d
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v3

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/S;->h()I

    move-result v10

    sub-int/2addr v3, v10

    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :goto_1a
    sub-int/2addr v10, v3

    if-lez v10, :cond_2e

    add-int/2addr v9, v10

    goto :goto_1b

    :cond_2e
    sub-int/2addr v11, v10

    :cond_2f
    :goto_1b
    iget-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v3, :cond_30

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_31

    goto :goto_1c

    :cond_30
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_32

    :cond_31
    move v3, v4

    goto :goto_1d

    :cond_32
    :goto_1c
    move v3, v5

    :goto_1d
    invoke-virtual {v0, v1, v2, v8, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/J;I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/l0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/t0;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/S;->g()I

    move-result v10

    if-nez v10, :cond_33

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/S;->e()I

    move-result v10

    if-nez v10, :cond_33

    move v10, v5

    goto :goto_1e

    :cond_33
    move v10, v6

    :goto_1e
    iput-boolean v10, v3, Landroidx/recyclerview/widget/L;->l:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v6, v3, Landroidx/recyclerview/widget/L;->i:I

    iget-boolean v3, v8, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz v3, :cond_35

    iget v3, v8, Landroidx/recyclerview/widget/J;->b:I

    iget v10, v8, Landroidx/recyclerview/widget/J;->c:I

    invoke-direct {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v9, v3, Landroidx/recyclerview/widget/L;->h:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v9, v3, Landroidx/recyclerview/widget/L;->b:I

    iget v10, v3, Landroidx/recyclerview/widget/L;->d:I

    iget v3, v3, Landroidx/recyclerview/widget/L;->c:I

    if-lez v3, :cond_34

    add-int/2addr v11, v3

    :cond_34
    iget v3, v8, Landroidx/recyclerview/widget/J;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/J;->c:I

    invoke-direct {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v11, v3, Landroidx/recyclerview/widget/L;->h:I

    iget v11, v3, Landroidx/recyclerview/widget/L;->d:I

    iget v12, v3, Landroidx/recyclerview/widget/L;->e:I

    add-int/2addr v11, v12

    iput v11, v3, Landroidx/recyclerview/widget/L;->d:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v11, v3, Landroidx/recyclerview/widget/L;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/L;->c:I

    if-lez v3, :cond_37

    invoke-direct {v0, v10, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v3, v9, Landroidx/recyclerview/widget/L;->h:I

    invoke-virtual {v0, v1, v9, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v9, v3, Landroidx/recyclerview/widget/L;->b:I

    goto :goto_1f

    :cond_35
    iget v3, v8, Landroidx/recyclerview/widget/J;->b:I

    iget v10, v8, Landroidx/recyclerview/widget/J;->c:I

    invoke-direct {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v11, v3, Landroidx/recyclerview/widget/L;->h:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v11, v3, Landroidx/recyclerview/widget/L;->b:I

    iget v10, v3, Landroidx/recyclerview/widget/L;->d:I

    iget v3, v3, Landroidx/recyclerview/widget/L;->c:I

    if-lez v3, :cond_36

    add-int/2addr v9, v3

    :cond_36
    iget v3, v8, Landroidx/recyclerview/widget/J;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/J;->c:I

    invoke-direct {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v9, v3, Landroidx/recyclerview/widget/L;->h:I

    iget v9, v3, Landroidx/recyclerview/widget/L;->d:I

    iget v12, v3, Landroidx/recyclerview/widget/L;->e:I

    add-int/2addr v9, v12

    iput v9, v3, Landroidx/recyclerview/widget/L;->d:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v9, v3, Landroidx/recyclerview/widget/L;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/L;->c:I

    if-lez v3, :cond_37

    invoke-direct {v0, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v3, v10, Landroidx/recyclerview/widget/L;->h:I

    invoke-virtual {v0, v1, v10, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v11, v3, Landroidx/recyclerview/widget/L;->b:I

    :cond_37
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_39

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v10

    if-eqz v3, :cond_38

    invoke-direct {v0, v11, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v11, v3

    invoke-direct {v0, v9, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I

    move-result v3

    goto :goto_20

    :cond_38
    invoke-direct {v0, v9, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v11, v3

    invoke-direct {v0, v11, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)I

    move-result v3

    :goto_20
    add-int/2addr v9, v3

    add-int/2addr v11, v3

    :cond_39
    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->k:Z

    if-eqz v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_27

    :cond_3a
    iget-object v3, v1, Landroidx/recyclerview/widget/t0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v12

    move v13, v6

    move v14, v13

    move v15, v14

    :goto_21
    if-ge v13, v10, :cond_3f

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/recyclerview/widget/E0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->isRemoved()Z

    move-result v16

    if-eqz v16, :cond_3b

    goto :goto_24

    :cond_3b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/E0;->getLayoutPosition()I

    move-result v7

    if-ge v7, v12, :cond_3c

    const/4 v7, 0x1

    goto :goto_22

    :cond_3c
    move v7, v6

    :goto_22
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v7, v6, :cond_3d

    move v6, v4

    goto :goto_23

    :cond_3d
    const/4 v6, 0x1

    :goto_23
    iget-object v5, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-ne v6, v4, :cond_3e

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v5

    add-int/2addr v14, v5

    goto :goto_24

    :cond_3e
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/S;->c(Landroid/view/View;)I

    move-result v5

    add-int/2addr v15, v5

    :goto_24
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_21

    :cond_3f
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput-object v3, v4, Landroidx/recyclerview/widget/L;->k:Ljava/util/List;

    if-lez v14, :cond_40

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v14, v3, Landroidx/recyclerview/widget/L;->h:I

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/L;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/L;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    goto :goto_25

    :cond_40
    const/4 v4, 0x0

    :goto_25
    if-lez v15, :cond_41

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput v15, v3, Landroidx/recyclerview/widget/L;->h:I

    iput v4, v3, Landroidx/recyclerview/widget/L;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/L;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    goto :goto_26

    :cond_41
    const/4 v5, 0x0

    :goto_26
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput-object v5, v1, Landroidx/recyclerview/widget/L;->k:Ljava/util/List;

    :cond_42
    :goto_27
    iget-boolean v1, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v1, :cond_43

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/S;->i()I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/T;->b:I

    goto :goto_28

    :cond_43
    invoke-virtual {v8}, Landroidx/recyclerview/widget/J;->d()V

    :goto_28
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/A0;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/J;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J;->d()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/N;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/N;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, Landroidx/recyclerview/widget/N;->d:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/N;

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/N;-><init>(Landroidx/recyclerview/widget/N;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/N;

    invoke-direct {v0}, Landroidx/recyclerview/widget/N;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/N;->f:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/S;->f()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/S;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Landroidx/recyclerview/widget/N;->e:I

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroidx/recyclerview/widget/N;->d:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/N;->d:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/S;->d(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->h()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroidx/recyclerview/widget/N;->e:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Landroidx/recyclerview/widget/N;->d:I

    :goto_0
    return-object v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/l0;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, -0x1

    if-ne p1, v1, :cond_2

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return v2

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/l0;->getRowCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_3

    return v2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/t0;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/l0;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v1

    :cond_4
    return v2
.end method

.method public final scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/L;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/A0;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iget v4, v2, Landroidx/recyclerview/widget/L;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/L;Landroidx/recyclerview/widget/A0;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/S;->m(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/L;

    iput p1, p0, Landroidx/recyclerview/widget/L;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final scrollToPosition(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Landroidx/recyclerview/widget/N;->d:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void
.end method

.method public final scrollToPositionWithOffset(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    iput p2, p1, Landroidx/recyclerview/widget/N;->d:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {v0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/T;->a(Landroidx/recyclerview/widget/l0;I)Landroidx/recyclerview/widget/S;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/S;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/J;

    iput-object v0, v1, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/S;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void
.end method

.method public final shouldMeasureTwice()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getHeightMode()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getWidthMode()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/O;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/O;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/O;->g(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->startSmoothScroll(Landroidx/recyclerview/widget/O;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/N;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
