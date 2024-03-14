.class public final Lcom/android/launcher3/touch/BothAxesSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source "SourceFile"


# instance fields
.field private final mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

.field private mScrollDirections:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;)V
    .locals 2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    iput-object p2, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    return-void
.end method


# virtual methods
.method public final reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onDragEnd(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final reportDragStartInternal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onDragStart(Z)V

    return-void
.end method

.method public final reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final setDetectableScrollConditions(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method public final shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 6

    iget v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    and-int/lit8 v1, v0, 0x1

    iget p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    neg-float v4, p0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_1

    iget v4, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, p0

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_2

    iget v5, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, p0

    if-ltz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    move p0, v3

    goto :goto_3

    :cond_3
    move p0, v2

    :goto_3
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method
