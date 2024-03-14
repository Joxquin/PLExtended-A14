.class public Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "SourceFile"


# instance fields
.field private mActivePointerId:I

.field private final mBottomEdgeBounds:Landroid/graphics/Rect;

.field private final mBottomScreenEdge:I

.field private mCanceledUnstashHint:Z

.field private final mDownPos:Landroid/graphics/PointF;

.field private mHasPassedTaskbarNavThreshold:Z

.field private mIsInBubbleBarArea:Z

.field private mIsStashedTaskbarHovered:Z

.field private final mIsTaskbarAllAppsOpen:Z

.field private final mIsTransientTaskbar:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mLongPressDetector:Landroid/view/GestureDetector;

.field private mLongPressDownX:F

.field private mLongPressDownY:F

.field private final mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

.field private final mScreenWidth:F

.field private final mSquaredTouchSlop:F

.field private final mStashedTaskbarBottomEdge:I

.field private final mStashedTaskbarHandleBounds:Landroid/graphics/Rect;

.field private final mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mTaskbarNavThreshold:I

.field private final mTaskbarNavThresholdY:I

.field private final mTransitionCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

.field private final mUnstashArea:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/quickstep/OverviewCommandHelper;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mActivePointerId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsStashedTaskbarHovered:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mStashedTaskbarHandleBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomEdgeBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p3

    iput p3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mSquaredTouchSlop:F

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float p3, p3

    iput p3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mScreenWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070545

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    int-to-float p5, p5

    iput p5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mUnstashArea:F

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;->getFromNavThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)I

    move-result p5

    iput p5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarNavThreshold:I

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v0, p5

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarNavThresholdY:I

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarAllAppsOpen()Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTaskbarAllAppsOpen:Z

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    new-instance p5, Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;)V

    invoke-direct {p5, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    const p1, 0x7f07053a

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomScreenEdge:I

    const p1, 0x7f070537

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mStashedTaskbarBottomEdge:I

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTranslationCallbacks()Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTransitionCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->onLongPressDetected(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private isInBubbleBarArea(F)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getBubbleControllers()Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isInTaskbarArea(F)Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mUnstashArea:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mScreenWidth:F

    div-float/2addr p0, v1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/16 p1, 0x2002

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStashedTaskbarHovered(II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarStashed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarAllAppsOpen()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CURSOR_HOVER_STATES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mStashedTaskbarHandleBounds:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mUnstashArea:F

    float-to-int v4, v3

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int v5, v0, v5

    int-to-float v2, v2

    sub-float/2addr v2, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mStashedTaskbarHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onLongPressDetected(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isInTaskbarArea(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onLongPressToUnstashTaskbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private startStashedTaskbarHover(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(ZZ)V

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsStashedTaskbarHovered:Z

    return-void
.end method

.method private updateHoveredTaskbarState(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomEdgeBounds:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mUnstashArea:F

    float-to-int v4, v3

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mStashedTaskbarBottomEdge:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int v5, v0, v5

    int-to-float v2, v2

    sub-float/2addr v2, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSwipeToUnstashTaskbar()V

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsStashedTaskbarHovered:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isStashedTaskbarHovered(II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->startStashedTaskbarHover(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUnhoveredTaskbarState(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomEdgeBounds:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomScreenEdge:I

    sub-int v3, v2, v3

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isStashedTaskbarHovered(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->startStashedTaskbarHover(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mBottomEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSwipeToUnstashTaskbar()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDelegatorName()Ljava/lang/String;
    .locals 0

    const-string p0, "TaskbarUnstashInputConsumer"

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p0

    or-int/lit16 p0, p0, 0x5000

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CURSOR_HOVER_STATES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarStashed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsStashedTaskbarHovered:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->updateHoveredTaskbarState(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->updateUnhoveredTaskbarState(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isStashedTaskbarHovered(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v3, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v3, :cond_11

    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_e

    if-eq v5, v1, :cond_b

    const/4 v7, 0x2

    if-eq v5, v7, :cond_5

    const/4 v3, 0x3

    if-eq v5, v3, :cond_b

    const/4 v3, 0x6

    if-eq v5, v3, :cond_3

    const/16 p1, 0xc

    if-eq v5, p1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mActivePointerId:I

    if-ne v3, v4, :cond_11

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mActivePointerId:I

    goto/16 :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mCanceledUnstashHint:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDownX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDownY:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mSquaredTouchSlop:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(ZZ)V

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mCanceledUnstashHint:Z

    :cond_6
    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarNavThreshold:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    move v2, v1

    :cond_8
    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mHasPassedTaskbarNavThreshold:Z

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mHasPassedTaskbarNavThreshold:Z

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsInBubbleBarArea:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSwipeToOpenBubblebar()V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSwipeToUnstashTaskbar()V

    :cond_a
    :goto_2
    if-gez v0, :cond_11

    neg-float p1, p1

    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarNavThresholdY:I

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTransitionCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    if-eqz v0, :cond_11

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTaskbarAllAppsOpen:Z

    if-nez p0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->onActionMove(F)V

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mCanceledUnstashHint:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v2, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(ZZ)V

    :cond_c
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v6, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTransitionCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->onActionEnd()V

    :cond_d
    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mHasPassedTaskbarNavThreshold:Z

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsInBubbleBarArea:Z

    goto :goto_3

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v5, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mHasPassedTaskbarNavThreshold:Z

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v6, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    invoke-direct {p0, v3}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isInTaskbarArea(F)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-nez p1, :cond_f

    iput v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDownX:F

    iput v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mLongPressDownY:F

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(ZZ)V

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mCanceledUnstashHint:Z

    :cond_f
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mTransitionCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTaskbarAllAppsOpen:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->onActionDown()V

    :cond_10
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsTransientTaskbar:Z

    if-eqz p1, :cond_11

    invoke-direct {p0, v3}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->isInBubbleBarArea(F)Z

    move-result p1

    if-eqz p1, :cond_11

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;->mIsInBubbleBarArea:Z

    :cond_11
    :goto_3
    return-void
.end method
