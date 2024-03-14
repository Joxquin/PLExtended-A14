.class public abstract Lcom/android/quickstep/BaseActivityInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

.field private mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

.field private mTargetState:Lcom/android/launcher3/statemanager/BaseState;

.field public final rotationSupportedByActivity:Z


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/android/quickstep/BaseActivityInterface;->rotationSupportedByActivity:Z

    iput-object p2, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p3, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method private calculateFocusTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v5}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    const/16 v7, 0x11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V

    return-void
.end method

.method private calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v3, Landroid/graphics/Rect;

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 4
    invoke-virtual {v3, p5, p3, p5, p4}, Landroid/graphics/Rect;->inset(IIII)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V

    return-void
.end method

.method private calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V
    .locals 1

    .line 6
    invoke-static {p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object p0

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, p2

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr p2, v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10
    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11
    iget p2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 12
    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 13
    invoke-static {p5, p2, p0, p3, p6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterface;->onInitBackgroundStateUI()V

    return-void
.end method

.method private static getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    return-object v0
.end method

.method public static getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V
    .locals 1

    .line 3
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 4
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 5
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    iput p0, p2, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private onInitBackgroundStateUI()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract allowAllAppsFromOverview()Z
.end method

.method public abstract allowMinimizeSplitScreen()Z
.end method

.method public final calculateDesktopTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->calculateFocusTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v1, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p2, v2, v2, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p2, p1, v2, v0, p0}, Landroid/graphics/Rect;->inset(IIII)V

    return-void
.end method

.method public final calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/quickstep/BaseActivityInterface;->calculateFocusTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr p0, v2

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    invoke-static {p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float p2, p2

    sub-float/2addr p0, p2

    iget p2, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p0, p2

    iget p2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-interface {p4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    :goto_1
    or-int/lit8 p1, p1, 0x30

    invoke-static {p1, p2, p0, v1, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final calculateModalTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 11

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    iget-boolean p4, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    if-eqz p4, :cond_1

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    :goto_1
    move v6, v1

    if-nez p4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070421

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p4

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_2
    move v7, v0

    iget v5, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x51

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V

    return-void
.end method

.method public final calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 10

    iget-boolean v0, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->calculateFocusTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07041f

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget-boolean v1, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v2

    add-int v5, v2, v1

    const v1, 0x7f070420

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int v6, p4, v0

    const/16 v8, 0x11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public closeOverlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/x;

    invoke-direct {v0}, Lcom/android/quickstep/x;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isImeRenderingNavButtons()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

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

.method public abstract getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
.end method

.method public abstract getOverviewWindowBounds(Landroid/graphics/Rect;Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .locals 2

    sget-object p4, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v0, 0x0

    if-ne p1, p4, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p4

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    invoke-virtual {p0, p4, p1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public abstract getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
.end method

.method public abstract getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
.end method

.method public abstract getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
.end method

.method public abstract isInLiveTileMode()Z
.end method

.method public final isResumed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStarted()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract onAssistantVisibilityChanged(F)V
.end method

.method public abstract onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
.end method

.method public abstract onLaunchTaskFailed()V
.end method

.method public onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->setSystemGestureInProgress(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRootView()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    return-void
.end method

.method public onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-boolean v2, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p2, p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public abstract prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.end method

.method public runOnInitBackgroundStateUI(Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterface;->onInitBackgroundStateUI()V

    :cond_0
    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public shouldCancelCurrentGesture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
.end method

.method public switchRunningTaskViewToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
.end method
