.class public Lcom/android/launcher3/touch/LandscapePagedViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 1

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

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

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p3, v2

    if-eqz p4, :cond_0

    add-int/2addr v1, p3

    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    new-instance p1, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;-><init>(II)V

    return-object p1
.end method

.method public final getChildStart(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public final getClearAllSidePadding(Lcom/android/quickstep/views/RecentsView;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    :goto_0
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Default position not available in fake landscape"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDegreesRotated()F
    .locals 0

    const/high16 p0, 0x42b40000    # 90.0f

    return p0
.end method

.method public getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
    .locals 3

    invoke-virtual {p7}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p7, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p7, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;->getDegreesRotated()F

    move-result p0

    invoke-virtual {p7, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    aget-object p7, p5, p4

    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p7

    check-cast p7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    const p1, 0x800005

    goto :goto_1

    :cond_1
    const p1, 0x800003

    :goto_1
    or-int/lit8 p1, p1, 0x30

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez p3, :cond_2

    iget p1, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, p1

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p2, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    iget p1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    if-ne p6, p1, :cond_3

    aget-object p4, p5, p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_3
    aget-object p4, p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_2
    iget p4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->rightBottomTaskId:I

    if-ne p6, p4, :cond_5

    iget-boolean p4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p4, :cond_4

    iget p4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    iget p3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_3

    :cond_4
    iget p4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    iget p3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_3
    add-float/2addr p4, p3

    iget p3, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p5, p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p4

    add-float v2, p2, p5

    :cond_5
    if-ne p6, p1, :cond_6

    iget p1, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, p1

    :cond_6
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getEnd(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    return p0
.end method

.method public final getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget p0, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    div-int/lit8 p3, p0, 0x2

    sub-int v0, p3, p1

    const/4 v1, 0x0

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p4, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    add-int/2addr p3, p1

    invoke-virtual {p5, v1, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getFloatingTaskOffscreenTranslationTarget(Lcom/android/quickstep/views/FloatingTaskView;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public final getFloatingTaskPrimaryTranslation(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
    .locals 1

    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget v0, p3, Lcom/android/launcher3/DeviceProfile;->splitPlaceholderInset:I

    sub-int/2addr p4, v0

    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p5, v0, v0, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p5, p2, v0}, Landroid/graphics/Rect;->inset(II)V

    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p0, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p0, p4

    mul-int/lit8 p2, p2, 0x2

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int p2, p3, p2

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p0, p2

    float-to-int p0, p0

    iget p2, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    iput p2, p5, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public final getMeasuredSize(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public final getPrimaryScale(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0
.end method

.method public final getPrimaryScroll(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    return p0
.end method

.method public final getPrimarySize(Landroid/graphics/RectF;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    return p0
.end method

.method public final getPrimarySize(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getPrimaryValue(FF)F
    .locals 0

    .line 1
    return p2
.end method

.method public final getPrimaryValue(II)I
    .locals 0

    .line 2
    return p2
.end method

.method public final getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    return-object p2
.end method

.method public final getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public final getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getRotation()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final getSecondaryDimension(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getSecondaryValue(FF)F
    .locals 0

    .line 1
    return p1
.end method

.method public final getSecondaryValue(II)I
    .locals 0

    .line 2
    return p1
.end method

.method public final getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    return-object p1
.end method

.method public final getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 1

    new-instance p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    const/4 p1, 0x0

    const v0, 0x7f0802b0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(II)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;
    .locals 0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public final getStart(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    return p0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getTaskMenuWidth(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;I)I
    .locals 0

    const/4 p0, -0x1

    if-ne p3, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getTaskMenuX(FLcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;F)F
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    sub-float/2addr p0, p4

    return p0
.end method

.method public getTaskMenuY(FLcom/android/quickstep/views/TaskThumbnailView;ILandroid/view/View;F)F
    .locals 0

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    add-float/2addr p1, p5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p0

    int-to-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    add-float/2addr p0, p1

    return p0

    :cond_0
    add-float/2addr p1, p5

    return p1
.end method

.method public getUpDirection(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .locals 0

    sget-object p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-object p0
.end method

.method public isGoingUp(FZ)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLayoutNaturalToLauncher()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public measureGroupedTaskViewThumbnailBounds(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskThumbnailView;IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
    .locals 1

    iget p0, p6, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr p4, p0

    int-to-float p6, p4

    iget-boolean p7, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p7, :cond_0

    iget p7, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_0

    :cond_0
    iget p7, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_0
    mul-float/2addr p7, p6

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p7

    iget-boolean v0, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_1

    iget p5, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_1

    :cond_1
    iget p5, p5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_1
    mul-float/2addr p6, p5

    float-to-int p5, p6

    sub-int/2addr p4, p5

    sub-int/2addr p4, p7

    add-int/2addr p0, p5

    add-int/2addr p0, p7

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p6

    invoke-static {p5, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p1, p6, p5}, Landroid/view/View;->measure(II)V

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p4, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final set(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/y1;II)V
    .locals 0

    invoke-virtual {p2, p4, p3, p1}, Lcom/android/quickstep/y1;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final setFloatingTaskPrimaryTranslation(Landroid/view/View;FLcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

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

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public final setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p1, p0, p3}, Lcom/android/launcher3/touch/k;->b(Ljava/lang/Object;FF)V

    return-void
.end method

.method public final setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;I)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p2, p0, p3, p1}, Lcom/android/launcher3/touch/k;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final setPrimaryScale(Lcom/android/quickstep/views/IconView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/launcher3/touch/k;->b(Ljava/lang/Object;FF)V

    return-void
.end method

.method public final setSecondaryScale(Lcom/android/quickstep/views/IconView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public setSplitIconParams(Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/IconView;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p7

    iget p7, p7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p7

    iget p7, p9, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int v0, p7, p5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float p7, p7

    div-float/2addr v0, p7

    int-to-float p5, p5

    div-float/2addr p5, p7

    iget p7, p9, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr p6, p7

    int-to-float p6, p6

    mul-float/2addr v0, p6

    float-to-int p7, v0

    mul-float/2addr p6, p5

    float-to-int p5, p6

    const p6, 0x800003

    const p9, 0x800005

    if-eqz p8, :cond_0

    move v0, p6

    goto :goto_0

    :cond_0
    move v0, p9

    :goto_0
    or-int/lit8 v0, v0, 0x50

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    move p6, p9

    :goto_1
    or-int/lit8 p6, p6, 0x50

    iput p6, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p6, 0x0

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p6}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean p6, p10, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->initiatedFromSeascape:Z

    if-eqz p6, :cond_2

    neg-int p6, p7

    sub-int/2addr p6, p5

    int-to-float p5, p6

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    add-int/2addr p6, p3

    int-to-float p3, p6

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_2
    neg-int p5, p7

    int-to-float p6, p5

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    add-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSplitInstructionsParams(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;->getDegreesRotated()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0704bb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    neg-int p0, p3

    sub-int/2addr p0, p4

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    int-to-float p2, v1

    add-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x13

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V
    .locals 0

    iget-boolean p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p0, :cond_0

    iget p1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_0
    iget p1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_0
    if-eqz p0, :cond_1

    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerHeightPercent:F

    goto :goto_1

    :cond_1
    iget p0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->dividerWidthPercent:F

    :goto_1
    if-nez p4, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p0

    mul-float/2addr p1, p4

    float-to-int p0, p1

    add-int/2addr p3, p0

    iput p3, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    return-void
.end method

.method public setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .locals 0

    if-eqz p5, :cond_0

    const p0, 0x800003

    goto :goto_0

    :cond_0
    const p0, 0x800005

    :goto_0
    or-int/lit8 p0, p0, 0x10

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    neg-int p0, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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
    .locals 0

    invoke-virtual {p8}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p8, p8, Lcom/android/launcher3/DeviceProfile;->splitPlaceholderInset:I

    sub-int/2addr p0, p8

    const/4 p8, 0x0

    invoke-static {p0, p8}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 p8, 0x40000000    # 2.0f

    div-float/2addr p0, p8

    div-float/2addr p2, p4

    int-to-float p4, p6

    const/high16 p6, 0x3f800000    # 1.0f

    mul-float/2addr p4, p6

    div-float/2addr p4, p8

    sub-float/2addr p2, p4

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    add-float/2addr p3, p0

    div-float/2addr p3, p5

    int-to-float p0, p7

    mul-float/2addr p0, p6

    div-float/2addr p0, p8

    sub-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    return-void
.end method
