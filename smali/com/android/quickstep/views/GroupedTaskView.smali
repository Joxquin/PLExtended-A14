.class public Lcom/android/quickstep/views/GroupedTaskView;
.super Lcom/android/quickstep/views/TaskView;
.source "SourceFile"


# instance fields
.field private final mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field private final mIcon2CenterCoords:[F

.field private mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field private mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

.field private mIconView2:Lcom/android/quickstep/views/IconView;

.field private mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

.field private mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

.field private mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    .line 5
    new-instance p1, Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p1, p2, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    return-void
.end method

.method public static synthetic Q(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$launchTaskAnimated$2(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$onTaskListVisibilityChanged$1(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$onTaskListVisibilityChanged$0(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    aget p0, v0, v2

    aget p2, v0, v1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$launchTaskAnimated$2(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    const/16 p0, 0x31

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$0(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$1(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    return-void
.end method

.method private launchTaskInternal(Ljava/util/function/Consumer;ZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v1

    if-eqz p3, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    move-object v2, p3

    :goto_0
    iget-object p3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p3, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object p3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p3, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v8

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchExistingSplitPair(Lcom/android/quickstep/views/GroupedTaskView;IIILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method private updateIconPlacement()V
    .locals 12

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    iget v4, v10, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v11, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-interface/range {v1 .. v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitIconParams(Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/IconView;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    return-void
.end method

.method private updateSecondaryDwbPlacement()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method


# virtual methods
.method public applyThumbnailSplashAlpha()V
    .locals 1

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->applyThumbnailSplashAlpha()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskThumbnailSplashAlpha:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView;->setSplashAlpha(F)V

    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 7

    invoke-super {p0, p1, p3}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    iput-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    iget-object p3, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v0, 0x1

    aput p3, p1, v0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance p3, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V

    aput-object p3, p1, v0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->setStagePosition(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    iput-object p4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getPreviewPositionHelper()Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    move-result-object p1

    invoke-static {p4}, Lcom/android/quickstep/util/TaskViewSimulator;->convertSplitBounds(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)LH1/e;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->setSplitBounds(LH1/e;I)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getPreviewPositionHelper()Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    move-result-object p0

    invoke-static {p4}, Lcom/android/quickstep/util/TaskViewSimulator;->convertSplitBounds(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)LH1/e;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->setSplitBounds(LH1/e;I)V

    return-void
.end method

.method public cancelPendingLoadTasks()V
    .locals 2

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_1
    return-void
.end method

.method public containsTaskId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastSelectedChildTaskIndex()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isDismissingFromSplitPair()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThisTaskCurrentlyInSplitSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->getLastSelectedChildTaskIndex()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSplitRatio()F
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_0
    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    filled-new-array {v0, p0}, [Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    return-object p0
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;->launchTaskInternal(Ljava/util/function/Consumer;ZZ)V

    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    const/16 v2, 0x31

    const-string v3, "Enter form GroupedTaskView"

    invoke-static {p0, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    new-instance v2, Lcom/android/quickstep/views/k;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/quickstep/views/k;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/quickstep/views/GroupedTaskView;->launchTaskInternal(Ljava/util/function/Consumer;ZZ)V

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onFinishInflate()V

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IconView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Lcom/android/quickstep/views/IconView;)V

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThisTaskCurrentlyInSplitSelection()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v6, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    if-ne v7, v2, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->measureGroupedTaskViewThumbnailBounds(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskThumbnailView;IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->applySplitSelectTranslateX(F)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->applySplitSelectTranslateY(F)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->applySplitSelectTranslateX(F)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->applySplitSelectTranslateY(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p2, v3, :cond_3

    move v1, v2

    :cond_3
    aget-object p2, v0, v1

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :goto_1
    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onRecycle()V
    .locals 3

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onRecycle()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iput-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v3, Lcom/android/quickstep/views/k;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/quickstep/views/k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/quickstep/views/k;

    invoke-direct {v0, v1, p0}, Lcom/android/quickstep/views/k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, v0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshTaskThumbnailSplash()V
    .locals 0

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->refreshTaskThumbnailSplash()V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshSplashView()V

    return-void
.end method

.method public refreshThumbnails(Ljava/util/HashMap;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->refreshThumbnails(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    return-void
.end method

.method public resetViewTransforms()V
    .locals 0

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->resetViewTransforms()V

    return-void
.end method

.method public setColorTint(FI)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/IconView;->setIconColorTint(IF)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerColorTint(IF)V

    return-void
.end method

.method public setIconsAndBannersTransitionProgress(FZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setIconsAndBannersTransitionProgress(FZ)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(F)V

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p1, p1}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateSecondaryDwbPlacement()V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setThumbnailVisibility(II)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerVisibility(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUpShowAllInstancesListener()V
    .locals 2

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->setUpShowAllInstancesListener()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0305

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->getFilterUpdateCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/TaskView;->updateFilterCallback(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateBorderBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->updateBorderBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateSnapshotRadius()V
    .locals 1

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    return-void
.end method

.method public updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
