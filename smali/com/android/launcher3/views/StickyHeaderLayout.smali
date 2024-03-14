.class public Lcom/android/launcher3/views/StickyHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/n0;


# static fields
.field private static final INTERCEPT_PROXY:Lcom/android/launcher3/views/x;

.field private static final SCROLL_OFFSET:Landroid/util/FloatProperty;

.field private static final TOUCH_PROXY:Lcom/android/launcher3/views/x;


# instance fields
.field private mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

.field private mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mHeaderHeight:I

.field private mLastScroll:F

.field private mOffsetAnimator:Landroid/animation/Animator;

.field private mScrollOffset:F

.field private mShouldForwardToRecyclerView:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$1;

    invoke-direct {v0}, Lcom/android/launcher3/views/StickyHeaderLayout$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/views/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/x;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/x;

    new-instance v0, Lcom/android/launcher3/views/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/x;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/x;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    .line 6
    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/views/StickyHeaderLayout;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/views/StickyHeaderLayout;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method private findCurrentEmptyView()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Lcom/android/launcher3/views/w;)V

    iput-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    iput-object v3, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    invoke-virtual {v3, v0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)V

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    new-instance v2, Lcom/android/launcher3/views/w;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/views/w;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Lcom/android/launcher3/views/w;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/x;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p2, Lcom/android/launcher3/views/x;->a:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    neg-float p2, v0

    neg-float v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return p0

    :catchall_0
    move-exception p0

    neg-float p2, v0

    neg-float v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderScroll()V
    .locals 5

    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget v4, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    iget v3, v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    int-to-float v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    return p0
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final getHeaderHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    return p0
.end method

.method public final onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    instance-of p1, p1, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    :cond_0
    return-void
.end method

.method public final onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/x;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/x;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget-boolean v0, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->sticky:Z

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p3

    iput v0, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p3

    move p3, p4

    goto :goto_1

    :cond_0
    const/high16 p4, -0x80000000

    iput p4, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/x;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/x;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    :goto_0
    add-float/2addr v1, v0

    sub-float/2addr p1, v1

    sget-object v1, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/launcher3/views/w;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/views/w;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void
.end method

.method public final setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/n0;)V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/n0;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->reset(Z)V

    return-void
.end method
