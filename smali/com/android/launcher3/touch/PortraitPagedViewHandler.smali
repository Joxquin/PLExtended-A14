.class public final Lcom/android/launcher3/touch/PortraitPagedViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# instance fields
.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private static getPlaceholderSizeAdjustment(Lcom/android/launcher3/DeviceProfile;Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->splitPlaceholderInset:I

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public final fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, p2

    cmpl-float v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    :cond_0
    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p3, v2

    if-eqz p4, :cond_0

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    new-instance p1, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;-><init>(II)V

    return-object p1
.end method

.method public final getChildStart(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public final getClearAllSidePadding(Lcom/android/quickstep/views/RecentsView;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    neg-int p0, p0

    :goto_0
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
    .locals 0

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Default position available only for large screens"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDegreesRotated()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
    .locals 4

    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p7, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p7, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p7, v0}, Landroid/view/View;->setRotation(F)V

    if-nez p3, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p1, 0x51

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-boolean p7, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x1

    if-eqz p7, :cond_1

    const p7, 0x800003

    goto :goto_0

    :cond_1
    move p7, v1

    :goto_0
    or-int/lit8 p7, p7, 0x50

    iput p7, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p7, 0x0

    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    if-ne p6, v2, :cond_2

    aget-object v1, p5, p7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    aget-object v1, p5, v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_1
    iget-boolean p0, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iget p4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    iget-boolean v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p0, :cond_5

    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->rightBottomTaskId:I

    if-ne p6, p0, :cond_7

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p4, v1

    :goto_2
    if-eqz v3, :cond_4

    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_3

    :cond_4
    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_3
    int-to-float p1, p1

    mul-float/2addr p4, p1

    mul-float/2addr p1, p0

    add-float/2addr p1, p4

    move p0, v0

    move v0, p1

    goto :goto_5

    :cond_5
    if-ne p6, v2, :cond_7

    aget-object p0, p5, p7

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    sub-float/2addr p1, p4

    goto :goto_4

    :cond_6
    sub-float/2addr p1, v1

    :goto_4
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, p1

    neg-float p0, p0

    goto :goto_5

    :cond_7
    move p0, v0

    :goto_5
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getEnd(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->right:F

    return p0
.end method

.method public final getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    div-int/lit8 v1, v0, 0x2

    sub-int v2, v1, p1

    const/4 v3, 0x0

    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p4, v3, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    add-int/2addr v1, p1

    invoke-virtual {p5, v3, v1, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean p1, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    move v3, p1

    :cond_1
    int-to-float p1, v0

    int-to-float p2, v4

    div-float p3, p1, p2

    iget-object v0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-eqz v3, :cond_2

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43870000    # 270.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz v3, :cond_4

    move p2, v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p3

    invoke-virtual {v0, p1, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, p4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, p5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getFloatingTaskOffscreenTranslationTarget(Lcom/android/quickstep/views/FloatingTaskView;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F
    .locals 0

    iget-boolean p0, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    add-float/2addr p0, p1

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public final getFloatingTaskPrimaryTranslation(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)Ljava/lang/Float;
    .locals 0

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
    .locals 8

    iget v0, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p3, v2}, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->getPlaceholderSizeAdjustment(Lcom/android/launcher3/DeviceProfile;Z)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p5, v1, v1, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean p4, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-nez p4, :cond_1

    invoke-virtual {p5, p2, v1}, Landroid/graphics/Rect;->inset(II)V

    int-to-float p0, p3

    mul-float/2addr p0, v4

    div-float/2addr p0, v3

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, v0, p2

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p2, v0

    div-float/2addr p0, p2

    float-to-int p0, p0

    iget p2, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    iput p2, p5, Landroid/graphics/Rect;->top:I

    return-void

    :cond_1
    int-to-float p1, p3

    int-to-float p4, v0

    div-float v0, p1, p4

    iget-object v1, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    if-eqz v2, :cond_2

    const/high16 v5, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_2
    const/high16 v5, 0x43870000    # 270.0f

    :goto_1
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    move v6, p4

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    if-eqz v2, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, p4

    :goto_3
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    int-to-float v0, p2

    invoke-virtual {p0, v5, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p0, p5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    mul-float/2addr p4, v4

    div-float/2addr p4, v3

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p4, p0

    div-float/2addr p4, p1

    float-to-int p0, p4

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz v2, :cond_5

    iget p2, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    add-int/2addr p0, p2

    iput p0, p5, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    iget p2, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    iput p2, p5, Landroid/graphics/Rect;->left:I

    :goto_4
    return-void
.end method

.method public final getMeasuredSize(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public final getPrimaryScale(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method public final getPrimaryScroll(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0
.end method

.method public final getPrimarySize(Landroid/graphics/RectF;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method

.method public final getPrimarySize(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public final getPrimaryValue(FF)F
    .locals 0

    .line 1
    return p1
.end method

.method public final getPrimaryValue(II)I
    .locals 0

    .line 2
    return p1
.end method

.method public final getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    return-object p1
.end method

.method public final getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public final getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public final getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final getSecondaryDimension(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getSecondaryTranslationDirectionFactor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getSecondaryValue(FF)F
    .locals 0

    .line 1
    return p2
.end method

.method public final getSecondaryValue(II)I
    .locals 0

    .line 2
    return p2
.end method

.method public final getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    return-object p2
.end method

.method public final getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public final getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 3

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const v0, 0x7f0802b1

    const v1, 0x7f0802b0

    iget-boolean v2, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-instance p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(II)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    if-eqz v2, :cond_3

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public final getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;
    .locals 0

    iget-boolean p0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
    .locals 0

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    if-ne p1, p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return p2
.end method

.method public final getStart(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->left:F

    return p0
.end method

.method public final getTaskDragDisplacementFactor(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTaskMenuWidth(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;I)I
    .locals 0

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTaskMenuX(FLcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;F)F
    .locals 0

    iget-boolean p0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    add-float/2addr p1, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    add-float/2addr p0, p1

    return p0

    :cond_0
    add-float/2addr p1, p4

    return p1
.end method

.method public final getTaskMenuY(FLcom/android/quickstep/views/TaskThumbnailView;ILandroid/view/View;F)F
    .locals 0

    add-float/2addr p1, p5

    return p1
.end method

.method public final getUpDirection(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .locals 0

    sget-object p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-object p0
.end method

.method public final isGoingUp(FZ)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayoutNaturalToLauncher()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final measureGroupedTaskViewThumbnailBounds(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskThumbnailView;IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
    .locals 4

    iget p0, p6, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr p4, p0

    iget-boolean v0, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_0

    iget v1, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_0

    :cond_0
    iget v1, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_0
    if-eqz v0, :cond_1

    iget p5, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_1

    :cond_1
    iget p5, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_1
    iget-boolean v0, p6, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    int-to-float p6, p3

    mul-float/2addr v1, p6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p5

    sub-int/2addr p3, p5

    sub-int/2addr p3, v0

    add-int/2addr v0, p5

    if-eqz p7, :cond_2

    neg-int p6, v0

    int-to-float p6, p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_2
    int-to-float p6, v0

    invoke-virtual {p2, p6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    move p0, p3

    move p3, p5

    move p5, p4

    goto :goto_4

    :cond_3
    iget-boolean p7, p6, Lcom/android/launcher3/DeviceProfile;->isTransientTaskbar:Z

    const/4 v0, 0x0

    if-eqz p7, :cond_4

    move p7, v0

    goto :goto_3

    :cond_4
    iget p7, p6, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    :goto_3
    int-to-float v3, p4

    iget p6, p6, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int p7, p6, p7

    int-to-float p7, p7

    div-float p7, v3, p7

    int-to-float p6, p6

    mul-float/2addr p6, p5

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    sub-int/2addr p4, p6

    int-to-float p4, p4

    sub-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    add-int p7, p6, p0

    int-to-float p7, p7

    add-float/2addr p7, p5

    invoke-virtual {p2, p7}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p7

    check-cast p7, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    move p0, p3

    move p5, p4

    move p4, p6

    :goto_4
    const/high16 p6, 0x40000000    # 2.0f

    invoke-static {p3, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-static {p4, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-virtual {p1, p3, p4}, Landroid/view/View;->measure(II)V

    invoke-static {p0, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {p5, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Landroid/view/View;->measure(II)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final set(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/y1;II)V
    .locals 0

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/quickstep/y1;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final setFloatingTaskPrimaryTranslation(Landroid/view/View;FLcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget-boolean p0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public final setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p0, -0x1

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, -0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method

.method public final setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    return-void
.end method

.method public final setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p0}, Lcom/android/launcher3/touch/k;->b(Ljava/lang/Object;FF)V

    return-void
.end method

.method public final setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;I)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/launcher3/touch/k;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final setPrimaryScale(Lcom/android/quickstep/views/IconView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public final setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/launcher3/touch/k;->b(Ljava/lang/Object;FF)V

    return-void
.end method

.method public final setSecondaryScale(Lcom/android/quickstep/views/IconView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final setSplitIconParams(Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/IconView;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-boolean p5, p9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p5, :cond_8

    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p6, p9, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int v0, p6, p5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float p6, p6

    div-float/2addr v0, p6

    int-to-float p5, p5

    div-float/2addr p5, p6

    add-int/lit8 p7, p7, 0x0

    int-to-float p6, p7

    mul-float/2addr v0, p6

    float-to-int p7, v0

    mul-float/2addr p6, p5

    float-to-int p5, p6

    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p6

    const p9, 0x800003

    const v0, 0x800005

    if-eqz p6, :cond_4

    if-eqz p8, :cond_1

    move p6, v0

    goto :goto_1

    :cond_1
    move p6, p9

    :goto_1
    or-int/lit8 p6, p6, 0x30

    iput p6, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p8, :cond_2

    move p9, v0

    :cond_2
    or-int/lit8 p6, p9, 0x30

    iput p6, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean p6, p10, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->initiatedFromSeascape:Z

    if-eqz p6, :cond_3

    sub-int p3, p7, p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p3, p7

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_3
    add-int/2addr p7, p5

    sub-int p3, p7, p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p3, p7

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_4
    if-eqz p8, :cond_5

    move p6, p9

    goto :goto_2

    :cond_5
    move p6, v0

    :goto_2
    or-int/lit8 p6, p6, 0x30

    iput p6, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p8, :cond_6

    goto :goto_3

    :cond_6
    move p9, v0

    :goto_3
    or-int/lit8 p6, p9, 0x30

    iput p6, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean p6, p10, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->initiatedFromSeascape:Z

    if-nez p6, :cond_7

    neg-int p5, p7

    int-to-float p6, p5

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_7
    neg-int p6, p7

    sub-int/2addr p6, p5

    int-to-float p5, p6

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr p6, p3

    int-to-float p3, p6

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_8
    const/16 p5, 0x31

    iput p5, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p3, p3

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p3, p6

    neg-float p6, p3

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    iput p5, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    :goto_4
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setSplitInstructionsParams(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;II)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0704bb

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0704bc

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result p0

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    neg-int p0, p0

    add-int/2addr p0, p2

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x51

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V
    .locals 3

    iget-boolean p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p0, :cond_0

    iget v0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_0
    if-eqz p0, :cond_1

    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_1

    :cond_1
    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_1
    iget-boolean p3, p1, Lcom/android/launcher3/DeviceProfile;->isTransientTaskbar:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int p3, v2, p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    int-to-float p3, v2

    mul-float v2, p3, v0

    mul-float/2addr v2, v1

    mul-float/2addr p3, p0

    mul-float/2addr p3, v1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p4, :cond_4

    if-eqz p1, :cond_3

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_5
    iget p0, p2, Landroid/graphics/Rect;->top:I

    add-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->top:I

    :goto_3
    return-void
.end method

.method public final setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .locals 0

    const/16 p0, 0x31

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public final setTaskOptionsMenuLayoutOrientation(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V
    .locals 2

    const/4 p0, 0x1

    if-ne p9, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p8, p0}, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->getPlaceholderSizeAdjustment(Lcom/android/launcher3/DeviceProfile;Z)I

    move-result p9

    int-to-float p9, p9

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p9, v0

    iget-boolean p8, p8, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p8, :cond_1

    div-float/2addr p2, p4

    int-to-float p0, p6

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    add-float/2addr p3, p9

    div-float/2addr p3, p5

    int-to-float p0, p7

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    sub-float/2addr p2, p9

    div-float/2addr p2, p4

    int-to-float p0, p6

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_2
    add-float/2addr p2, p9

    div-float/2addr p2, p4

    int-to-float p0, p6

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    :goto_1
    div-float/2addr p3, p5

    int-to-float p0, p7

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    :goto_2
    return-void
.end method
