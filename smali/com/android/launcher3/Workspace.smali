.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Lq1/c;


# static fields
.field public static final synthetic d:I


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field private final mAllAppsIconSize:I

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field protected mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field protected mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field protected mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFirstPagePinnedItem:Landroid/view/View;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mForceDrawAdjacentPages:Z

.field private mIsEventOverFirstPagePinnedItem:Z

.field private mIsSwitchingState:Z

.field mLastReorderX:I

.field mLastReorderY:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mOverlayCallbacks:Ljava/util/List;

.field private mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

.field private mOverlayProgress:F

.field private mOverlayShown:Z

.field protected final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Lcom/android/launcher3/util/IntArray;

.field private mSavedStates:Landroid/util/SparseArray;

.field final mScreenOrder:Lcom/android/launcher3/util/IntArray;

.field private mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempFXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mTempXY:[I

.field private mTransitionProgress:F

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field public final mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

.field private mXDown:F

.field private mYDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 4
    new-instance p2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 8
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 10
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 11
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    new-array v2, p3, [I

    .line 12
    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    new-array v2, p3, [F

    .line 13
    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-array v2, p3, [F

    .line 15
    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 16
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 18
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 19
    new-instance v3, Lcom/android/launcher3/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 20
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 21
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 22
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 23
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 24
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 25
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 26
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    .line 27
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    .line 29
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 30
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 31
    new-instance v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 32
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 33
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iput v1, p0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    .line 34
    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 35
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    .line 36
    iput p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 38
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    .line 39
    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 40
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 41
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v4, Ly0/e;->y:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 42
    invoke-static {v5, v6, v4}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v5

    .line 43
    invoke-virtual {v1, v3, v5}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 44
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 45
    invoke-static {v6, v3, v4}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 47
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 48
    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p3, p2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 49
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 50
    sget-object p2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/android/launcher3/Workspace$2;

    invoke-direct {p3, p0}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 52
    new-instance p2, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-direct {p2, v0, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisibleChildrenRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-boolean v5, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    :cond_0
    if-ne v3, v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_0
    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    if-gt v3, v5, :cond_3

    if-gt v5, v1, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    move-object v0, p4

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object p0

    return-object p0
.end method

.method private forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V
    .locals 1

    const/16 v0, -0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, -0xc8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method public static getScreenPair(I)I
    .locals 2

    const/16 v0, -0xc8

    const/16 v1, -0xc9

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    return v1

    .line 1
    :cond_1
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lcom/android/launcher3/CellLayout;

    aput-object v1, v2, v0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/android/launcher3/CellLayout;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/Workspace;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return-void
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method private isTwoPanelEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lcom/android/launcher3/Workspace;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method private mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p2, p0

    aget p0, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    aput p0, p2, v1

    :goto_0
    return-void
.end method

.method private onEndStateTransition()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v4, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method private setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;F)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v1, :cond_3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v5, :cond_1

    instance-of v4, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    goto/16 :goto_8

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v4}, Lcom/android/launcher3/views/BaseDragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_4
    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    add-int/lit8 v7, v4, -0x1

    aput v7, v6, v3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    add-int/2addr v5, v4

    aput v5, v6, v2

    invoke-static {v6}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v4, :cond_9

    iget-boolean v7, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_a

    :cond_9
    if-le v6, v4, :cond_b

    iget-boolean v7, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_b

    :cond_a
    iget v7, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v7, v7

    invoke-static {v7, p2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_6

    :cond_b
    iget v7, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v7, v7

    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :goto_6
    invoke-direct {p0, v7, v0, v6}, Lcom/android/launcher3/Workspace;->verifyInsidePage(FFI)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object v1, v6

    :cond_c
    :goto_7
    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v1, v1

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    invoke-direct {p0, v1, v4, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(FFI)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_d

    :cond_e
    move-object p1, v1

    :goto_8
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq p1, p2, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p2, :cond_f

    invoke-virtual {p2, v3}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_f
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v2}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_10
    return v2

    :cond_11
    return v3
.end method

.method private updateChildrenLayersEnabled()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private updatePageAlphaValues()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updatePageScrollValues()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setScrollProgress(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private verifyInsidePage(FFI)Lcom/android/launcher3/CellLayout;
    .locals 1

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static willAddToExistingUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v2, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    if-eq v2, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    instance-of v1, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private workspaceInModalState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private workspaceInScrollableState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p0

    if-nez p0, :cond_0

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


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v14, 0x1

    if-eq v2, v0, :cond_b

    const/4 v15, 0x0

    if-nez v13, :cond_0

    return v15

    :cond_0
    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v14

    goto :goto_0

    :cond_2
    move v2, v15

    :goto_0
    if-nez v2, :cond_3

    return v15

    :cond_3
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v0, v13, v2}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_1
    move v9, v2

    move v8, v3

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move v11, v2

    move v10, v3

    goto :goto_2

    :cond_5
    move v10, v8

    move v11, v9

    :goto_2
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v15

    float-to-int v3, v3

    aget v2, v2, v14

    float-to-int v4, v2

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v2, v3

    move v3, v4

    move v4, v10

    move v5, v11

    move-object v6, v13

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v3, v15

    aget v3, v3, v14

    invoke-virtual {v13, v4, v3, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v2

    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v13, v4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    move v3, v15

    goto :goto_3

    :cond_6
    aget v5, v4, v15

    aget v4, v4, v14

    invoke-virtual {v13, v5, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v14}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_7

    return v14

    :cond_7
    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v13, v4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    move v2, v15

    goto :goto_4

    :cond_8
    aget v2, v4, v15

    aget v4, v4, v14

    invoke-virtual {v13, v2, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_9

    return v14

    :cond_9
    const/4 v2, 0x2

    new-array v12, v2, [I

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v15

    float-to-int v3, v3

    aget v2, v2, v14

    float-to-int v4, v2

    const/16 v16, 0x0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x4

    move-object v2, v13

    move v5, v10

    move v6, v11

    move-object v10, v7

    move v7, v8

    move v8, v9

    move-object/from16 v9, v16

    move-object v11, v12

    move/from16 v12, v17

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v15

    if-ltz v3, :cond_a

    aget v2, v2, v14

    if-ltz v2, :cond_a

    move v2, v14

    goto :goto_5

    :cond_a
    move v2, v15

    :goto_5
    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, v13, v2, v1}, Lcom/android/launcher3/Workspace;->onNoCellFound(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return v15

    :cond_b
    invoke-virtual {v0, v13}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    sget-object v2, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_c
    return v14
.end method

.method public final addExtraEmptyScreens()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/P0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/P0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final addOverlayCallback(Lq1/c;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {p1, p0}, Lq1/c;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public final addToExistingFolderIfNecessary(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-lez p3, :cond_0

    return v0

    :cond_0
    aget p3, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1

    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    iget-object p3, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    iget-object p3, p4, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {p1, p4, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    if-nez p5, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v5, v3, [F

    instance-of v6, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v14, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v15, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x0

    aget v12, v8, v9

    aget v13, v8, v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v11, p2

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    iget-object v11, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    instance-of v13, v2, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v15, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    iput v14, v8, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iput v14, v8, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    iput v14, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v13

    iput v14, v8, Landroid/graphics/Rect;->bottom:I

    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v11

    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v13, v11}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    :cond_1
    iget-object v11, v10, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v13, v8, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v11, v9

    iget v13, v8, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v11, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v11, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v11, v11, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v13, v10, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    move-object/from16 v14, p2

    invoke-virtual {v11, v14, v13, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    iget-object v13, v10, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    move v15, v9

    :goto_0
    array-length v3, v13

    if-ge v15, v3, :cond_2

    aget v3, v13, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v13

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v6, v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v15, v13

    aget v13, v4, v9

    int-to-double v12, v13

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-float/2addr v7, v9

    div-float/2addr v7, v3

    move-object v9, v4

    float-to-double v3, v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v7

    int-to-float v7, v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v7, v14

    float-to-double v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    sub-double/2addr v12, v3

    double-to-int v1, v12

    const/4 v2, 0x0

    aput v1, v9, v2

    const/4 v1, 0x1

    aget v2, v9, v1

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v9, v1

    mul-float/2addr v6, v11

    const/4 v2, 0x0

    aput v6, v5, v2

    mul-float/2addr v15, v11

    aput v15, v5, v1

    goto :goto_1

    :cond_3
    move v2, v9

    move-object v9, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v1

    mul-float/2addr v1, v11

    aget v3, v9, v2

    int-to-float v3, v3

    sub-float v4, v1, v13

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    float-to-int v3, v6

    aput v3, v9, v2

    const/4 v3, 0x1

    aget v6, v9, v3

    int-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v4, v8

    div-float/2addr v4, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v9, v3

    aput v1, v5, v3

    aput v1, v5, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    aget v3, v9, v2

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v3

    float-to-int v3, v4

    aput v3, v9, v2

    const/4 v2, 0x1

    aget v3, v9, v2

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v11, v1

    add-float/2addr v11, v3

    float-to-int v1, v11

    aput v1, v9, v2

    :cond_4
    :goto_1
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit16 v11, v1, -0xc8

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v2, p5

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v2, p5

    const/4 v1, 0x1

    :goto_3
    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    if-eqz p7, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v6, p3

    move-object/from16 v4, p6

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v4, p6

    if-eqz v4, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v6

    if-eq v6, v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    aget v7, v0, v6

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v12, 0x1

    aget v13, v0, v12

    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    aget v7, v0, v6

    aget v8, v0, v12

    invoke-virtual {v4, v6, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    aget v7, v0, v6

    aget v0, v0, v12

    sget-object v8, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/d;

    new-instance v8, Landroid/graphics/Picture;

    invoke-direct {v8}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v8, v7, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    int-to-float v0, v11

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move-object/from16 v6, p3

    invoke-virtual {v6, v1, v0}, Lcom/android/launcher3/dragndrop/DragView;->crossFadeContent(Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    goto :goto_6

    :cond_9
    move-object/from16 v6, p3

    :goto_5
    if-eqz v1, :cond_a

    if-eqz p7, :cond_a

    const/4 v0, 0x0

    aget v1, v5, v0

    const/4 v7, 0x1

    aget v8, v5, v7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v5, v7

    aput v1, v5, v0

    :cond_a
    :goto_6
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x4

    if-ne v2, v1, :cond_b

    const/16 v21, 0x0

    const v22, 0x3dcccccd    # 0.1f

    const v23, 0x3dcccccd    # 0.1f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x0

    const/4 v1, 0x0

    aget v19, v9, v1

    const/4 v1, 0x1

    aget v20, v9, v1

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, p3

    move-object/from16 v24, p4

    move/from16 v26, v11

    invoke-virtual/range {v17 .. v27}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_8

    :cond_b
    const/4 v1, 0x1

    if-ne v2, v1, :cond_c

    move v8, v3

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    :goto_7
    new-instance v7, Lcom/android/launcher3/Workspace$5;

    move-object/from16 v2, p4

    invoke-direct {v7, v4, v2}, Lcom/android/launcher3/Workspace$5;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    aget v3, v9, v2

    aget v4, v9, v1

    const/high16 v9, 0x3f800000    # 1.0f

    aget v12, v5, v2

    aget v13, v5, v1

    move-object/from16 v1, p3

    move v2, v3

    move v3, v4

    move v4, v9

    move v5, v12

    move v6, v13

    move v9, v11

    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :goto_8
    return-void
.end method

.method public final announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final beginDragShared(Landroid/view/View;LJ0/i;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v10, p6

    .line 7
    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_0

    .line 8
    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    .line 9
    instance-of v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 13
    instance-of v5, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_1

    .line 14
    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    .line 15
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 16
    invoke-virtual {v6, v4}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 17
    instance-of v6, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v6, :cond_2

    .line 18
    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_1

    :cond_2
    move-object/from16 v6, p2

    .line 19
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 20
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 21
    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v2

    goto :goto_2

    .line 22
    :cond_3
    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v7, v8}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v2

    const/4 v8, 0x0

    :goto_2
    move v9, v2

    .line 23
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v11, v2, v4

    const/4 v12, 0x1

    .line 24
    aget v2, v2, v12

    .line 25
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    if-eqz v6, :cond_4

    .line 26
    invoke-interface {v6, v13}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 27
    iget v14, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    .line 28
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v14, :cond_5

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v14, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :cond_5
    if-eqz v5, :cond_9

    .line 30
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 31
    iget-boolean v5, v10, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v5, :cond_6

    .line 32
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v5

    iput-object v5, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 33
    :cond_6
    iget v5, v1, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v14, 0x6

    if-eq v5, v14, :cond_7

    const/4 v14, 0x7

    if-eq v5, v14, :cond_7

    const/16 v14, 0x9

    if-ne v5, v14, :cond_8

    :cond_7
    move v4, v12

    :cond_8
    if-eqz v4, :cond_9

    .line 34
    iget v4, v0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    .line 35
    :cond_9
    iget-object v1, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_b

    .line 36
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 37
    iget-object v4, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v4}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    add-int/2addr v11, v1

    add-int/2addr v2, v4

    :cond_b
    move v4, v2

    .line 38
    instance-of v1, v7, Landroid/view/View;

    if-eqz v1, :cond_d

    .line 39
    instance-of v1, v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_c

    .line 40
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 41
    :cond_c
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v8, v9, v3

    move-object v1, v7

    move-object v2, v6

    move v3, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v13

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    goto :goto_3

    .line 42
    :cond_d
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v12, v9, v3

    move-object v1, v8

    move-object v2, v6

    move v3, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v12

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .line 3
    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v7, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v7, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;LJ0/i;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bindAndInitFirstWorkspaceScreen()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d00ea

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    new-instance v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    const/4 v3, 0x1

    invoke-direct {v6, v1, v1, v0, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    iput-boolean v1, v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    const/4 v4, 0x0

    const v5, 0x7f0a02d2

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.Workspace"

    const-string v1, "Failed to add to item at (0, 0) to CellLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public final canAnnouncePageDescription()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final cleanupReorder(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    return-void
.end method

.method public final commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher3/U0;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/U0;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final computeScroll()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    return-void
.end method

.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v1

    cmpl-float v1, p5, v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    return v3

    :cond_0
    aget v1, p4, v3

    const/4 v7, 0x1

    aget v4, p4, v7

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v6, p4, v3

    if-ne v5, v6, :cond_1

    iget v4, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v5, p4, v7

    if-ne v4, v5, :cond_1

    if-ne v1, v2, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v8, :cond_4

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iput-boolean v3, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez p6, :cond_3

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, v8, v11}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    invoke-virtual {v2, v8}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    move-object/from16 v13, p7

    iget-object v5, v13, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v1, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, p4, v3

    aget v6, p4, v7

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    new-instance v2, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v2}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    move-object p0, v1

    move-object p1, v10

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, p7

    move-object/from16 p5, v11

    move/from16 p6, v12

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/folder/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    return v7

    :cond_4
    :goto_1
    return v3
.end method

.method public final determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    return-void

    :cond_4
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_5

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public final dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/CellLayout;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v4, p0}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result p0

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aput p1, v0, v2

    if-eqz v1, :cond_2

    aget v1, v0, v3

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int v1, v1

    aput v1, v0, v3

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    aput p0, v0, v2

    :cond_2
    return-object v0

    :cond_3
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public final getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public final getDescendantFocusability()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public final getExpectedHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_1
    return p0
.end method

.method public final getExpectedWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_1
    return p0
.end method

.method public final getFirstMatch(Lcom/android/launcher3/N0;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p0, v4

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    iget-object v5, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v8, v9}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    aput-object v8, v1, v3

    move v9, v0

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    aget-object p0, v1, v3

    return-object p0
.end method

.method public final getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public final getHomescreenIconByItemId(I)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/launcher3/N0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/N0;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/N0;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object p0
.end method

.method public final getIdForScreen(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final getPageDescription(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130274

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1300e0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f130275

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPageIndexForScreenId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final getPanelCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenIdForPageIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getScreenOrder()Lcom/android/launcher3/util/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    return-object p0
.end method

.method public final getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public final getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object p0
.end method

.method public final getWallpaperOffsetForCenterPage()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result p0

    return p0
.end method

.method public final hasExtraEmptyScreens()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v0, -0xc8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasOverlay()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0168

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance p2, Lcom/android/launcher3/P0;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p1}, Lcom/android/launcher3/P0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Screen id "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isDropEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isFinishedSwitchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

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

.method public final isOverlayShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    return p0
.end method

.method public final isSignificantMove(FI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result p0

    return p0

    :cond_0
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float p0, p0

    const p2, 0x3e19999a    # 0.15f

    mul-float/2addr p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSwitchingState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return p0
.end method

.method public final mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v6, v7}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_3

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final moveToDefaultScreen()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public final notifyPageSwitchListener(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex$1(I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    return-void
.end method

.method public final onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onDragEnd()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_2
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    return-void
.end method

.method public final onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v6, p1

    iget-boolean v0, v8, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v9, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v1, :cond_19

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v1, :cond_19

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v6, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v2, :cond_4

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v15, v2

    :goto_1
    aget v2, v1, v7

    aget v1, v1, v9

    invoke-direct {v8, v6, v2}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_6

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    :cond_7
    :goto_3
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_18

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v8, v1, v2}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v4, :cond_8

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v5, :cond_8

    goto :goto_4

    :cond_8
    move v4, v1

    move v5, v2

    :goto_4
    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v11, v10, v7

    float-to-int v11, v11

    aget v10, v10, v9

    float-to-int v10, v10

    iget-object v12, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v13, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v16, v11

    move/from16 v17, v10

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v7

    aget v1, v1, v9

    iget v10, v8, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne v2, v10, :cond_9

    iget v10, v8, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq v1, v10, :cond_a

    :cond_9
    iput v2, v8, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput v1, v8, Lcom/android/launcher3/Workspace;->mDragOverY:I

    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_a
    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v12, v11, v7

    aget v11, v11, v9

    iget-object v13, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v12, v11, v13}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v17

    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v11}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v10

    cmpl-float v10, v17, v10

    const/4 v14, 0x2

    if-lez v10, :cond_c

    iget v10, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v10, v14, :cond_b

    if-ne v10, v9, :cond_11

    :cond_b
    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto/16 :goto_5

    :cond_c
    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v12, v11, v7

    aget v11, v11, v9

    invoke-virtual {v10, v12, v11}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    iget-object v11, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v8, v10, v11, v7}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v12

    iget v13, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v13, :cond_d

    if-eqz v12, :cond_d

    new-instance v11, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v11}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v11, v8, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v12, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v21, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v12

    invoke-virtual/range {v18 .. v23}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/folder/FolderIcon;II)V

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v13, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v13, v7

    aget v13, v13, v9

    invoke-virtual {v11, v12, v3, v13}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object v3, v6, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    invoke-static {v10, v11}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v13, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v13, :cond_f

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v3, v8, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_e
    invoke-virtual {v8, v14}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object v3, v6, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_f
    iget v10, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v10, v14, :cond_10

    if-nez v3, :cond_10

    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_10
    iget v3, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v3, v9, :cond_11

    if-nez v12, :cond_11

    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_11
    :goto_5
    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v11, v3, v7

    float-to-int v11, v11

    aget v3, v3, v9

    float-to-int v12, v3

    iget v13, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v9, v14

    move v14, v0

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v10

    iget-object v11, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_12

    const/4 v12, 0x0

    goto :goto_6

    :cond_12
    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v12, v0

    :goto_6
    if-nez v10, :cond_13

    new-array v0, v9, [I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v7

    float-to-int v3, v3

    const/4 v13, 0x1

    aget v2, v2, v13

    float-to-int v2, v2

    iget v13, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v15, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v26, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    move-object/from16 v25, v0

    invoke-virtual/range {v16 .. v26}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v7

    const/4 v4, 0x1

    aget v2, v2, v4

    aget v5, v0, v7

    aget v13, v0, v4

    move-object v0, v1

    move v1, v3

    move v3, v5

    move v4, v13

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v1, v1

    iget v3, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v24, v5

    invoke-virtual/range {v18 .. v24}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    goto/16 :goto_7

    :cond_13
    iget v0, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v0, :cond_14

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    :cond_14
    iget v0, v8, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v0, v2, :cond_15

    iget v0, v8, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v0, v1, :cond_16

    :cond_15
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v13, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v13, v14, v3}, Lcom/android/launcher3/CellLayout;->getReorderRadius(II[I)F

    move-result v0

    cmpg-float v0, v17, v0

    if-gez v0, :cond_16

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iput v2, v8, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput v1, v8, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v1, v1

    iget v3, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v13, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    new-array v14, v9, [I

    const/16 v26, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v3

    move/from16 v22, v7

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-virtual/range {v16 .. v26}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    new-instance v13, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v11

    move-object/from16 v6, p1

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;IIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_16
    :goto_7
    iget v0, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    if-eq v0, v9, :cond_17

    if-nez v10, :cond_18

    :cond_17
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    :cond_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    move-object/from16 v2, p2

    iget-boolean v2, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_e

    iput-boolean v4, v0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/Hotseat;

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-static {v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    iget-object v5, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    iget-object v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    if-ne v2, v3, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v6

    if-ne v5, v6, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_4

    :cond_8
    move v2, v4

    move v5, v2

    :goto_4
    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Lcom/android/launcher3/P0;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/P0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    :goto_5
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_e

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v2, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v2

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_e

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    iget-object v15, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v6, 0x2

    new-array v14, v6, [I

    move v13, v4

    :goto_7
    iget v6, v5, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v13, v6, :cond_c

    move v12, v4

    :goto_8
    iget v6, v5, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v12, v6, :cond_b

    invoke-virtual {v5, v13, v12, v14}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    aget v7, v14, v4

    aget v8, v14, v3

    iget v9, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v10, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v11, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v5, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/16 v16, 0x0

    const/16 v17, 0x1

    new-instance v18, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct/range {v18 .. v18}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move/from16 v19, v6

    move-object v6, v5

    move/from16 v20, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move-object v13, v3

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-virtual/range {v6 .. v16}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v6, :cond_a

    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v12, v20, 0x1

    move-object v14, v3

    move/from16 v13, v19

    move-object/from16 v15, v21

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    move/from16 v19, v13

    move-object v3, v14

    move-object/from16 v21, v15

    add-int/lit8 v13, v19, 0x1

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v4

    :goto_9
    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    :goto_a
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_f
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 41

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v15, v8, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v15, :cond_0

    invoke-direct {v8, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    sget-object v14, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/16 v1, -0x64

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-ne v0, v8, :cond_2d

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_1

    goto/16 :goto_20

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v15, :cond_1d

    iget-boolean v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_1d

    invoke-virtual {v8, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eq v2, v15, :cond_2

    move/from16 v23, v4

    goto :goto_0

    :cond_2
    move/from16 v23, v5

    :goto_0
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_3

    const/16 v2, -0x65

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v5

    if-gez v1, :cond_4

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v15}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    :goto_2
    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v6, :cond_5

    iget v7, v6, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    if-eqz v6, :cond_6

    iget v6, v6, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_4

    :cond_6
    move v6, v4

    :goto_4
    iget-object v12, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v13, v12, v5

    float-to-int v13, v13

    aget v12, v12, v4

    float-to-int v12, v12

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v10, v1

    move v1, v13

    move v13, v2

    move v2, v12

    move-object v12, v3

    move v3, v7

    move-object/from16 v21, v14

    move v14, v4

    move v4, v6

    move v14, v5

    move-object v5, v15

    move/from16 v33, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v14

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v15, v3, v2, v1}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v11

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v13

    move-object v3, v15

    move-object/from16 v34, v5

    move v5, v11

    move/from16 v35, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_13

    :cond_7
    iget-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_8

    move v0, v2

    move v1, v3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    if-ne v3, v10, :cond_9

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v13, :cond_9

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v3, v14

    iget v5, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    if-ne v5, v4, :cond_9

    iget v2, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_9

    const/16 v36, 0x1

    goto :goto_5

    :cond_9
    move/from16 v36, v14

    :goto_5
    if-eqz v36, :cond_a

    iget-boolean v2, v8, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v2, :cond_a

    const/16 v37, 0x1

    goto :goto_6

    :cond_a
    move/from16 v37, v14

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v37, :cond_b

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v14

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v6, v33

    move/from16 v4, v35

    invoke-virtual {v15, v3, v2, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v3, 0x2

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    move/from16 v6, v33

    move/from16 v4, v35

    :cond_c
    move v5, v14

    const/4 v3, 0x2

    :goto_7
    new-array v2, v3, [I

    if-eqz v5, :cond_d

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v11, -0x1

    const/16 v16, 0x1

    aput v11, v0, v16

    aput v11, v0, v14

    move/from16 v25, v5

    move-object/from16 v38, v12

    move/from16 v27, v13

    move v3, v14

    move-object v0, v15

    move-object/from16 v28, v21

    goto :goto_8

    :cond_d
    const/4 v11, -0x1

    const/16 v16, 0x1

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v11, v3, v14

    float-to-int v11, v11

    aget v3, v3, v16

    float-to-int v3, v3

    move/from16 v25, v5

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v26, 0x2

    move/from16 v17, v11

    move-object v11, v15

    move-object/from16 v38, v12

    move/from16 v12, v17

    move/from16 v27, v13

    move v13, v3

    move v3, v14

    move-object/from16 v28, v21

    move v14, v0

    move-object v0, v15

    move v15, v1

    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v34

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move/from16 v21, v26

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    :goto_8
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v3

    const/4 v15, 0x1

    if-ltz v4, :cond_e

    aget v1, v1, v15

    if-ltz v1, :cond_e

    move v5, v15

    goto :goto_9

    :cond_e
    move v5, v3

    :goto_9
    move-object/from16 v11, v34

    if-eqz v5, :cond_10

    instance-of v1, v11, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_10

    aget v1, v2, v3

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v1, v4, :cond_f

    aget v4, v2, v15

    iget v6, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v4, v6, :cond_10

    :cond_f
    iput v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v2, v2, v15

    iput v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, v11

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v6, v1, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    move v12, v15

    goto :goto_a

    :cond_10
    move v12, v3

    :goto_a
    if-eqz v5, :cond_18

    invoke-virtual {v8, v10}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v1

    iget v2, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_11

    if-nez v24, :cond_11

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    move v13, v15

    goto :goto_b

    :cond_11
    move v13, v3

    :goto_b
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v23, :cond_14

    invoke-virtual {v8, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_c

    :cond_12
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_13

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_13
    :goto_c
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v3

    aget v5, v1, v15

    iget v6, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v39, v1

    move/from16 v1, v27

    move/from16 v16, v2

    move v2, v10

    move v15, v3

    move/from16 v17, v13

    move-object/from16 v13, v28

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    move-object/from16 v40, v7

    move-object v7, v11

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(IIIIIILandroid/view/View;)V

    goto :goto_d

    :cond_14
    move-object/from16 v39, v0

    move v15, v3

    move-object/from16 v40, v7

    move/from16 v17, v13

    move-object/from16 v13, v28

    :goto_d
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    move-object/from16 v1, v40

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iput-boolean v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    move/from16 v7, v27

    const/16 v2, -0x65

    if-eq v7, v2, :cond_16

    instance-of v2, v11, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_16

    move-object v2, v11

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_15

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v3, :cond_15

    move-object/from16 v3, p2

    move v4, v10

    iget-boolean v3, v3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v3, :cond_17

    new-instance v3, Lcom/android/launcher3/W0;

    move-object/from16 v10, v39

    invoke-direct {v3, v8, v2, v10}, Lcom/android/launcher3/W0;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    goto :goto_f

    :cond_15
    move v4, v10

    goto :goto_e

    :cond_16
    move v4, v10

    :cond_17
    :goto_e
    move-object/from16 v10, v39

    move-object/from16 v3, v22

    :goto_f
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v25

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v29

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v30

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v26, v14

    move/from16 v27, v7

    move/from16 v28, v4

    move/from16 v31, v0

    move/from16 v32, v1

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    move/from16 v5, v17

    move-object/from16 v14, v38

    goto :goto_12

    :cond_18
    move-object v10, v0

    move v15, v3

    move-object/from16 v13, v28

    if-nez v25, :cond_19

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v14, v38

    invoke-virtual {v8, v10, v0, v14}, Lcom/android/launcher3/Workspace;->onNoCellFound(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    goto :goto_10

    :cond_19
    move-object/from16 v14, v38

    :goto_10
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    goto :goto_11

    :cond_1a
    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    aput v3, v2, v15

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    aput v0, v2, v1

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    move v5, v15

    move-object/from16 v3, v22

    :goto_12
    move v0, v5

    move v1, v12

    move/from16 v5, v37

    move-object v12, v3

    goto/16 :goto_15

    :cond_1b
    :goto_13
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState$1(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1c
    return-void

    :cond_1d
    move-object v11, v0

    move-object v13, v14

    move-object v14, v3

    move-object v3, v10

    move-object v10, v15

    move v15, v5

    instance-of v0, v11, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1f

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    invoke-virtual {v8, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_1e

    iget-boolean v2, v3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v2, :cond_1e

    new-instance v2, Lcom/android/launcher3/W0;

    invoke-direct {v2, v8, v1, v0}, Lcom/android/launcher3/W0;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    move-object v3, v2

    goto :goto_14

    :cond_1e
    move-object/from16 v3, v22

    :goto_14
    move-object v12, v3

    move v0, v15

    move v1, v0

    move v5, v1

    move/from16 v36, v5

    goto :goto_15

    :cond_1f
    move v0, v15

    move v1, v0

    move v5, v1

    move/from16 v36, v5

    move-object/from16 v12, v22

    :goto_15
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v5, :cond_23

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v2, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/LauncherDragController;

    new-instance v4, Lcom/android/launcher3/R0;

    invoke-direct {v4, v0}, Lcom/android/launcher3/R0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v3, v4, v11, v1}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Lcom/android/launcher3/R0;Landroid/view/View;I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-nez v12, :cond_20

    goto :goto_16

    :cond_20
    new-instance v3, Lcom/android/launcher3/S0;

    invoke-direct {v3, v0, v12, v15}, Lcom/android/launcher3/S0;-><init>(Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/W0;I)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v22

    :goto_16
    move-object/from16 v0, v22

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_17

    :cond_21
    if-eqz v12, :cond_22

    new-instance v1, Lcom/android/launcher3/S0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v12, v2}, Lcom/android/launcher3/S0;-><init>(Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/W0;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    :cond_22
    :goto_17
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    invoke-virtual {v7, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    return-void

    :cond_23
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_25

    const/4 v5, 0x5

    if-ne v3, v5, :cond_24

    goto :goto_18

    :cond_24
    move v5, v15

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v5, 0x1

    :goto_19
    if-eqz v5, :cond_27

    if-eqz v10, :cond_27

    if-eqz v1, :cond_26

    const/4 v5, 0x2

    goto :goto_1a

    :cond_26
    move v5, v15

    :goto_1a
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v7

    move-object v6, v11

    move-object v15, v7

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_1c

    :cond_27
    move-object v15, v7

    if-eqz v0, :cond_28

    const/16 v0, 0x12c

    goto :goto_1b

    :cond_28
    const/4 v0, -0x1

    :goto_1b
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v11, v0, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    :goto_1c
    move-object v2, v15

    goto :goto_1d

    :cond_29
    move-object v2, v7

    iput-boolean v15, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    invoke-virtual {v2, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-nez v12, :cond_2a

    goto :goto_1e

    :cond_2a
    invoke-static {v12}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v22

    :goto_1e
    move-object/from16 v2, v22

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1f

    :cond_2b
    if-eqz v12, :cond_2c

    invoke-static {v12}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    :cond_2c
    :goto_1f
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    move/from16 v5, v36

    goto/16 :goto_30

    :cond_2d
    :goto_20
    move-object v13, v14

    move-object v10, v15

    const/16 v2, -0x65

    const/4 v6, 0x4

    move-object v14, v3

    move v15, v5

    const/4 v5, 0x5

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v0, v15

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-int v0, v0

    filled-new-array {v3, v0}, [I

    move-result-object v0

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v4, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v4, :cond_2e

    check-cast v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    if-eqz v3, :cond_2e

    iput-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_2e
    iget-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v11, :cond_2f

    iget v3, v11, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v11, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :cond_2f
    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11, v10}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_30

    move/from16 v23, v2

    goto :goto_21

    :cond_30
    move/from16 v23, v1

    :goto_21
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v12

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_31

    iget v1, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    if-eq v12, v1, :cond_31

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_31
    instance-of v1, v7, Lcom/android/launcher3/PendingAddItemInfo;

    const/4 v2, 0x6

    if-eqz v1, :cond_40

    move-object v14, v7

    check-cast v14, Lcom/android/launcher3/PendingAddItemInfo;

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v1, v2, :cond_35

    aget v1, v0, v15

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v2, v0

    move v0, v5

    move-object v5, v10

    move v13, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v15

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v10, v3, v2, v1}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v1

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_32

    move v5, v15

    goto :goto_22

    :cond_32
    aget v5, v3, v15

    aget v3, v3, v4

    invoke-virtual {v10, v5, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v8, v3, v2, v4}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v5

    :goto_22
    if-nez v5, :cond_34

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_33

    move v5, v15

    goto :goto_23

    :cond_33
    aget v1, v3, v15

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v10, v1, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    :goto_23
    if-eqz v5, :cond_36

    :cond_34
    move v5, v15

    goto :goto_24

    :cond_35
    move v0, v5

    move v13, v6

    :cond_36
    const/4 v5, 0x1

    :goto_24
    iget-object v6, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_3a

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v3, :cond_37

    iget v4, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v4, :cond_37

    move v1, v3

    move v2, v4

    :cond_37
    const/4 v5, 0x2

    new-array v3, v5, [I

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v4, v15

    float-to-int v11, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v17, 0x0

    move-object/from16 v21, v7

    iget-object v7, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x3

    move-object/from16 v39, v10

    move/from16 v24, v12

    move v12, v4

    move v4, v13

    move v13, v1

    move-object v1, v14

    move v14, v2

    move/from16 v25, v15

    const/16 v26, 0x1

    move v15, v0

    move/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v3, v25

    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v0, v2, :cond_39

    aget v2, v3, v26

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v2, v5, :cond_38

    goto :goto_25

    :cond_38
    move/from16 v5, v25

    goto :goto_26

    :cond_39
    :goto_25
    move/from16 v5, v26

    :goto_26
    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v0, v3, v26

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v7, v5

    goto :goto_27

    :cond_3a
    move-object/from16 v21, v7

    move-object/from16 v39, v10

    move/from16 v24, v12

    move v4, v13

    move-object v1, v14

    move/from16 v25, v15

    const/16 v26, 0x1

    move/from16 v7, v25

    :goto_27
    new-instance v10, Lcom/android/launcher3/Workspace$4;

    const/4 v11, 0x5

    move-object v0, v10

    move-object v12, v1

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v23

    move v13, v4

    move/from16 v4, v24

    move-object v5, v6

    move-object v14, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;)V

    iget v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v0, v13, :cond_3c

    if-ne v0, v11, :cond_3b

    goto :goto_28

    :cond_3b
    move/from16 v5, v25

    goto :goto_29

    :cond_3c
    :goto_28
    move/from16 v5, v26

    :goto_29
    if-eqz v5, :cond_3d

    move-object v0, v12

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    goto :goto_2a

    :cond_3d
    move-object/from16 v6, v22

    :goto_2a
    if-eqz v6, :cond_3e

    if-eqz v7, :cond_3e

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v6, v0, v1, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_3e
    if-eqz v5, :cond_3f

    move-object v14, v12

    check-cast v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_3f

    invoke-virtual {v14}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-eqz v0, :cond_3f

    move/from16 v5, v26

    goto :goto_2b

    :cond_3f
    move/from16 v5, v25

    :goto_2b
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v39

    move-object v4, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_2f

    :cond_40
    move-object/from16 v21, v7

    move-object/from16 v39, v10

    move/from16 v24, v12

    move/from16 v25, v15

    const/4 v5, 0x2

    const/16 v26, 0x1

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState$1(Lcom/android/launcher3/statemanager/BaseState;)V

    move-object/from16 v1, v21

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v6, :cond_43

    if-eq v6, v5, :cond_42

    if-eq v6, v2, :cond_43

    const/16 v2, 0x9

    if-ne v6, v2, :cond_41

    goto :goto_2c

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown item type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/model/data/FolderInfo;

    const v5, 0x7f0d006d

    move-object/from16 v15, v39

    invoke-static {v5, v2, v15, v7}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v2

    move-object v11, v1

    move-object v12, v2

    goto :goto_2e

    :cond_43
    :goto_2c
    move-object/from16 v15, v39

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v2, :cond_44

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v7, v1}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v7

    iput-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_2d

    :cond_44
    move-object v7, v1

    :goto_2d
    instance-of v1, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_45

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_45

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iput-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v7, v1

    :cond_45
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v7

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v15, v2}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    move-object v12, v2

    move-object v11, v7

    :goto_2e
    aget v1, v0, v25

    aget v2, v0, v26

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v5, v15

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v25

    aget v1, v1, v26

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v10

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v23

    move-object v3, v15

    move v5, v10

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto/16 :goto_2f

    :cond_46
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v10

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_2f

    :cond_47
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v25

    float-to-int v1, v1

    aget v0, v0, v26

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object v10, v15

    move-object v7, v11

    move v11, v1

    move-object v6, v12

    move v12, v0

    move-object v1, v13

    move v13, v2

    move-object v2, v14

    move v14, v3

    move-object v3, v15

    move v15, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v16

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v20, v0, v25

    aget v21, v0, v26

    move-object/from16 v17, v7

    move/from16 v18, v23

    move/from16 v19, v24

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v0, v25

    aget v5, v0, v26

    iget v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v11, v1

    move/from16 v1, v23

    move-object v12, v2

    move/from16 v2, v24

    move-object v13, v3

    move v3, v4

    move v4, v5

    move v5, v10

    move-object v10, v6

    move v6, v7

    move-object v7, v10

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(IIIIIILandroid/view/View;)V

    invoke-virtual {v13, v10}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v10, v2, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    :cond_48
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :goto_2f
    move/from16 v5, v25

    :goto_30
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_49

    if-nez v5, :cond_49

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction()V

    :cond_49
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1

    if-eqz p3, :cond_0

    if-eq p1, p0, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, p3, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p1, v0, p3}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    return-void
.end method

.method public final onNoCellFound(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1300eb

    goto :goto_0

    :cond_0
    const p1, 0x7f130172

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-interface {p0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/c;

    iget v2, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {v0, v2}, Lq1/c;->onOverlayScrollChanged(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onPageBeginTransition()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public final onPageEndTransition()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onPageEndTransition()V

    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object p4, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/states/HintState;

    if-eq p1, p4, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string p0, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, p0

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public final persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final prepareAccessibilityDrop()V
    .locals 0

    return-void
.end method

.method public final removeAllWorkspaceScreens()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/Workspace$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public final removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    new-instance v0, Lcom/android/launcher3/O0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/O0;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    sub-int v0, v2, v0

    :goto_0
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-eqz v4, :cond_7

    iget-object v5, v4, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, p1

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v4, -0xc9

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v4, -0xc8

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/launcher3/P0;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/P0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    :cond_9
    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public final removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    instance-of v8, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v7, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    :cond_0
    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v9, v8, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8, v9, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    check-cast v7, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    return-void
.end method

.method public final removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_1
    return-void
.end method

.method public final resetTransitionTransform()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public final restoreInstanceStateForChild(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CellLayout"

    const-string v0, "Ignoring an error while restoring a view instance state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final restoreInstanceStateForRemainingPages()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public final scrollLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1
    return v0
.end method

.method public final scrollRight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1
    return v0
.end method

.method public final setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    :cond_2
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    const/4 v0, -0x1

    if-ne v0, p1, :cond_3

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq v0, p1, :cond_4

    :cond_3
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_4
    return-void
.end method

.method public final setDragMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    :cond_7
    return-void
.end method

.method public final setFinalTransitionTransform()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v1, Lcom/android/launcher3/P0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/P0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v5, v7, v8, v6}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_4
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x51

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setLauncherOverlay(Lq1/b;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Lq1/b;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-interface {p1, p0}, Lq1/b;->d(Lcom/android/launcher3/Workspace;)V

    move-object p1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public final setPivotToScaleWithSelf(Lcom/android/launcher3/Hotseat;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherState;->onLeavingState()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setState(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method public final setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherState;->onLeavingState()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p1, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p3, p0, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setup(Lcom/android/launcher3/dragndrop/LauncherDragController;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public final shouldFlingForVelocity(I)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showPageIndicatorAtCurrentScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    :cond_0
    return-void
.end method

.method public final snapToDestination()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :goto_0
    return-void
.end method

.method public final startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v0, 0x4

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/Workspace$3;

    new-instance v2, Lcom/android/launcher3/Q0;

    invoke-direct {v2}, Lcom/android/launcher3/Q0;-><init>()V

    invoke-direct {v1, p0, p0, v2}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Q0;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    invoke-virtual {p0, p1, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method public final stripEmptyScreens()V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    if-lez v6, :cond_2

    iget-object v7, v7, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    move v5, v4

    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v3, :cond_7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v1, :cond_8

    const/16 v6, -0xc8

    goto :goto_3

    :cond_8
    const/16 v6, -0xc9

    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-ltz v5, :cond_a

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_a
    return-void
.end method

.method public final unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    aput v3, v2, v1

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, p0, v2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    :goto_0
    return-void
.end method

.method public final willCreateUserFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v2, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    if-eq v2, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p1, :cond_7

    if-nez v1, :cond_7

    if-eqz p3, :cond_3

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x67

    if-eq p0, p1, :cond_4

    move p0, v2

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p1, :cond_6

    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    move v0, v2

    :cond_7
    :goto_4
    return v0
.end method
