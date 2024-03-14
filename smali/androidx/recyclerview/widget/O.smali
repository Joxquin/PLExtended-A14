.class public Landroidx/recyclerview/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCalculatedMillisPerPixel:Z

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field private mLayoutManager:Landroidx/recyclerview/widget/l0;

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMillisPerPixel:F

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/y0;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field protected mTargetVector:Landroid/graphics/PointF;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    new-instance v0, Landroidx/recyclerview/widget/y0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/y0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/O;->mRecyclingAction:Landroidx/recyclerview/widget/y0;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/O;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/O;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mHasCalculatedMillisPerPixel:Z

    iput v0, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/O;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static calculateDtToFit(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public final a(I)Landroid/graphics/PointF;
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    instance-of v0, p0, Landroidx/recyclerview/widget/z0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/z0;

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/z0;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Landroidx/recyclerview/widget/z0;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    return p0
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateTimeForScrolling(I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/O;->mHasCalculatedMillisPerPixel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/O;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/O;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/O;->mMillisPerPixel:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mHasCalculatedMillisPerPixel:Z

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/O;->mMillisPerPixel:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    return p0
.end method

.method public final e(II)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->i()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/O;->a(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v4, v3

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    iget-object v4, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    iget-object v5, p0, Landroidx/recyclerview/widget/O;->mRecyclingAction:Landroidx/recyclerview/widget/y0;

    if-eqz v4, :cond_5

    iget-object v6, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    if-ne v4, v6, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    invoke-virtual {p0, v2, v5}, Landroidx/recyclerview/widget/O;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/y0;)V

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/y0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->i()V

    goto :goto_0

    :cond_4
    const-string v4, "RecyclerView"

    const-string v6, "Passed over target position while smooth scrolling."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iget-object v2, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->i()V

    goto/16 :goto_2

    :cond_6
    iget v2, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    sub-int p1, v2, p1

    mul-int/2addr v2, p1

    if-gtz v2, :cond_7

    move p1, v1

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    iget v2, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    sub-int p2, v2, p2

    mul-int/2addr v2, p2

    if-gtz v2, :cond_8

    move p2, v1

    :cond_8
    iput p2, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    iget p1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/O;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v3

    if-nez v2, :cond_9

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    mul-float/2addr p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v2

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Landroidx/recyclerview/widget/O;->mTargetVector:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p1

    float-to-int p2, v2

    iput p2, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/O;->calculateTimeForScrolling(I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iget v3, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroidx/recyclerview/widget/O;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iput p2, v5, Landroidx/recyclerview/widget/y0;->a:I

    iput v3, v5, Landroidx/recyclerview/widget/y0;->b:I

    iput p1, v5, Landroidx/recyclerview/widget/y0;->c:I

    iput-object v2, v5, Landroidx/recyclerview/widget/y0;->e:Landroid/view/animation/Interpolator;

    iput-boolean v4, v5, Landroidx/recyclerview/widget/y0;->f:Z

    goto :goto_2

    :cond_a
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    iput p1, v5, Landroidx/recyclerview/widget/y0;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->i()V

    :cond_b
    :goto_2
    iget p1, v5, Landroidx/recyclerview/widget/y0;->d:I

    if-ltz p1, :cond_c

    move v1, v4

    :cond_c
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/y0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    if-eqz p1, :cond_d

    iput-boolean v4, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/D0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->b()V

    :cond_d
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "RecyclerView"

    const-string p1, "smooth scroll target view has been attached"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    return-void
.end method

.method public getVerticalSnapPreference()I
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/O;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l0;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/D0;

    iget-object v1, v0, Landroidx/recyclerview/widget/D0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/D0;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/O;->mStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    iget p2, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    iput p2, v0, Landroidx/recyclerview/widget/A0;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/l0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->onStart()V

    iget-object p1, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/D0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/D0;->b()V

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mStarted:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mRunning:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->onStop()V

    iget-object v1, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/A0;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/A0;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/O;->mTargetView:Landroid/view/View;

    iput v2, p0, Landroidx/recyclerview/widget/O;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/O;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    iget-object v2, v0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    :cond_1
    iput-object v1, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    iput-object v1, p0, Landroidx/recyclerview/widget/O;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/O;->mInterimTargetDx:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/O;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/y0;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/O;->mTargetVector:Landroid/graphics/PointF;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->canScrollHorizontally()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/m0;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/m0;

    iget-object v6, v6, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/m0;

    iget-object v7, v7, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v3

    sub-int/2addr v7, v3

    invoke-static {v5, v6, v4, v7, v0}, Landroidx/recyclerview/widget/O;->calculateDtToFit(IIIII)I

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/O;->getVerticalSnapPreference()I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/O;->mLayoutManager:Landroidx/recyclerview/widget/l0;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/recyclerview/widget/l0;->canScrollVertically()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/m0;

    invoke-static {p1}, Landroidx/recyclerview/widget/l0;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/m0;

    iget-object p1, p1, Landroidx/recyclerview/widget/m0;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, p1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result p1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/l0;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v5, v6, p1, v2, v3}, Landroidx/recyclerview/widget/O;->calculateDtToFit(IIIII)I

    move-result v2

    :cond_6
    :goto_4
    mul-int p1, v0, v0

    mul-int v3, v2, v2

    add-int/2addr v3, p1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/O;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-double v3, p1

    const-wide v5, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    if-lez p1, :cond_7

    neg-int v0, v0

    neg-int v2, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/O;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p2, Landroidx/recyclerview/widget/y0;->a:I

    iput v2, p2, Landroidx/recyclerview/widget/y0;->b:I

    iput p1, p2, Landroidx/recyclerview/widget/y0;->c:I

    iput-object p0, p2, Landroidx/recyclerview/widget/y0;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/y0;->f:Z

    :cond_7
    return-void
.end method
