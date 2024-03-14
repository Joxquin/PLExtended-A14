.class public final Landroidx/recyclerview/widget/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:I

.field public e:I

.field public f:Landroid/widget/OverScroller;

.field public g:Landroid/view/animation/Interpolator;

.field public h:Z

.field public i:Z

.field public final synthetic j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/D0;->g:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/D0;->h:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/D0;->i:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/D0;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/D0;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->g:Landroid/view/animation/Interpolator;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Landroidx/recyclerview/widget/D0;->g:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/D0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/D0;->i:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(IILandroid/view/animation/Interpolator;I)V
    .locals 8

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p4, v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p4, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move p4, v0

    :goto_2
    int-to-float p4, p4

    int-to-float v0, v3

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    const/16 v0, 0x7d0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    :cond_3
    move v7, p4

    if-nez p3, :cond_4

    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_4
    iget-object p4, p0, Landroidx/recyclerview/widget/D0;->g:Landroid/view/animation/Interpolator;

    if-eq p4, p3, :cond_5

    iput-object p3, p0, Landroidx/recyclerview/widget/D0;->g:Landroid/view/animation/Interpolator;

    new-instance p4, Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p4, p0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/D0;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/D0;->d:I

    iget-object p3, p0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->b()V

    return-void
.end method

.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/D0;->i:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/D0;->h:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iget v6, v0, Landroidx/recyclerview/widget/D0;->d:I

    sub-int v6, v4, v6

    iget v7, v0, Landroidx/recyclerview/widget/D0;->e:I

    sub-int v7, v5, v7

    iput v4, v0, Landroidx/recyclerview/widget/D0;->d:I

    iput v5, v0, Landroidx/recyclerview/widget/D0;->e:I

    iget-object v4, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInHorizontalStretch(I)I

    move-result v4

    iget-object v5, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInVerticalStretch(I)I

    move-result v5

    iget-object v8, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v11, v2

    aput v2, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v4

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v7, v6, v2

    sub-int/2addr v4, v7

    aget v6, v6, v3

    sub-int/2addr v5, v6

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/Z;

    if-eqz v8, :cond_5

    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v8, v2

    aput v2, v8, v3

    invoke-virtual {v6, v4, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v9, v8, v2

    aget v8, v8, v3

    sub-int/2addr v4, v9

    sub-int/2addr v5, v8

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    iget-object v6, v6, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/O;->c()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/O;->d()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Landroidx/recyclerview/widget/O;->i()V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroidx/recyclerview/widget/O;->b()I

    move-result v11

    if-lt v11, v10, :cond_4

    sub-int/2addr v10, v3

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/O;->g(I)V

    invoke-virtual {v6, v9, v8}, Landroidx/recyclerview/widget/O;->e(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v9, v8}, Landroidx/recyclerview/widget/O;->e(II)V

    goto :goto_0

    :cond_5
    move v8, v2

    move v9, v8

    :cond_6
    :goto_0
    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v11, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v6, v2

    aput v2, v6, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v12, v9

    move v13, v8

    move v14, v4

    move v15, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v11 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v11, v10, v2

    sub-int/2addr v4, v11

    aget v10, v10, v3

    sub-int/2addr v5, v10

    if-nez v9, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    invoke-virtual {v6, v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_9
    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v10

    if-ne v6, v10, :cond_b

    move v6, v3

    goto :goto_1

    :cond_b
    move v6, v2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v11

    if-ne v10, v11, :cond_c

    move v10, v3

    goto :goto_2

    :cond_c
    move v10, v2

    :goto_2
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_f

    if-nez v6, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    if-nez v10, :cond_f

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    move v6, v2

    goto :goto_4

    :cond_f
    :goto_3
    move v6, v3

    :goto_4
    iget-object v10, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    iget-object v10, v10, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroidx/recyclerview/widget/O;->c()Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v3

    goto :goto_5

    :cond_10
    move v10, v2

    :goto_5
    if-nez v10, :cond_17

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v6

    if-eq v6, v7, :cond_15

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v4, :cond_11

    neg-int v4, v1

    goto :goto_6

    :cond_11
    if-lez v4, :cond_12

    move v4, v1

    goto :goto_6

    :cond_12
    move v4, v2

    :goto_6
    if-gez v5, :cond_13

    neg-int v1, v1

    goto :goto_7

    :cond_13
    if-lez v5, :cond_14

    goto :goto_7

    :cond_14
    move v1, v2

    :goto_7
    iget-object v5, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    :cond_15
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/C;

    iget-object v4, v1, Landroidx/recyclerview/widget/C;->c:[I

    if-eqz v4, :cond_16

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    :cond_16
    iput v2, v1, Landroidx/recyclerview/widget/C;->d:I

    goto :goto_8

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/D0;->b()V

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/E;

    if-eqz v4, :cond_18

    invoke-virtual {v4, v1, v9, v8}, Landroidx/recyclerview/widget/E;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_18
    :goto_8
    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    iget-object v1, v1, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroidx/recyclerview/widget/O;->c()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/O;->e(II)V

    :cond_19
    iput-boolean v2, v0, Landroidx/recyclerview/widget/D0;->h:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/D0;->i:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_1a
    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :goto_9
    return-void
.end method
