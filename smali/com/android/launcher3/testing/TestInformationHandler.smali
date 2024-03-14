.class public Lcom/android/launcher3/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mLauncherAppState:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$11(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$13(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/Launcher;)[I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$10(Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$2()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget p2, v6, Landroid/graphics/Rect;->left:I

    iget p3, v6, Landroid/graphics/Rect;->top:I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    iget p3, v6, Landroid/graphics/Rect;->right:I

    iget p4, v6, Landroid/graphics/Rect;->bottom:I

    filled-new-array {p3, p4}, [I

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    const/4 p0, 0x0

    aget p1, p2, p0

    const/4 p4, 0x1

    aget p2, p2, p4

    aget p0, p3, p0

    aget p3, p3, p4

    invoke-virtual {v6, p1, p2, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v6
.end method

.method public static getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/testing/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/testing/d;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/a;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/launcher3/testing/a;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$16(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$15(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$10(Lcom/android/launcher3/Launcher;)[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$11(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 7

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellX:I

    iget v4, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellY:I

    iget v5, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanX:I

    iget v6, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanY:I

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private synthetic lambda$call$12(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 1

    new-instance p2, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result p0

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr p0, v0

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static synthetic lambda$call$13(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$14(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->cellInd:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v0

    invoke-direct {p1, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private static synthetic lambda$call$15(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$16(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$2()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static synthetic lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$9(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/RotationHelper;->forceAllowRotationForTesting(Z)V

    return-void
.end method

.method private static synthetic lambda$getUIProperty$17(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1, p0}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic m(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$14(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/testing/TestInformationHandler;
    .locals 2

    const-class v0, Lcom/android/launcher3/testing/TestInformationHandler;

    const v1, 0x7f130237

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    return-object p0
.end method

.method public static synthetic o(Lcom/android/launcher3/testing/TestInformationHandler;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$12(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$getUIProperty$17(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v13, 0x0

    const/16 v16, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "start-drag-threshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "icon-height"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x16

    goto :goto_0

    :sswitch_2
    const-string v4, "hotseat-cell-center"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x15

    goto :goto_0

    :sswitch_3
    const-string v4, "enable-grid-only-overview"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x14

    goto :goto_0

    :sswitch_4
    const-string v4, "all-apps-bottom-padding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x13

    goto :goto_0

    :sswitch_5
    const-string v4, "freeze-app-list"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x12

    goto :goto_0

    :sswitch_6
    const-string v4, "target-insets"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x11

    goto :goto_0

    :sswitch_7
    const-string v4, "has-touch-interaction-service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x10

    goto :goto_0

    :sswitch_8
    const-string v4, "workspace-cell-center"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0xf

    :goto_0
    move/from16 v16, v1

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "widgets-scroll-y"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "home-to-all-apps-swipe-height"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v16, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "all-apps-top-padding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    move/from16 v16, v7

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "workspace-columns-rows"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    move/from16 v16, v8

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "window-insets"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_1

    :cond_e
    move/from16 v16, v9

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "enable_rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    move/from16 v16, v10

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "mock-sensor-rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    move/from16 v16, v11

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "unfreeze-app-list"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    move/from16 v16, v12

    goto :goto_1

    :sswitch_11
    const-string v4, "is-launcher-initialized"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1

    :cond_12
    const/16 v16, 0x6

    goto :goto_1

    :sswitch_12
    const-string v4, "apps-list-scroll-y"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_1

    :cond_13
    move/from16 v16, v14

    goto :goto_1

    :sswitch_13
    const-string v4, "get-had-nontest-events"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1

    :cond_14
    move/from16 v16, v15

    goto :goto_1

    :sswitch_14
    const-string v4, "workspace-cell-layout-size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1

    :cond_15
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_15
    const-string v4, "is-two-panel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1

    :cond_16
    move/from16 v16, v6

    goto :goto_1

    :sswitch_16
    const-string v4, "is-tablet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1

    :cond_17
    move/from16 v16, v5

    goto :goto_1

    :sswitch_17
    const-string v4, "workspace-current-page-index"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1

    :cond_18
    move/from16 v16, v13

    :goto_1
    const-string v1, "request"

    const-string v4, "response"

    packed-switch v16, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, v0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070440

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :pswitch_1
    iget-object v0, v0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :pswitch_2
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    new-instance v1, Lcom/android/launcher3/testing/b;

    invoke-direct {v1, v11}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/testing/f;

    invoke-direct {v2, v5, v0}, Lcom/android/launcher3/testing/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_4
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v8}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v11}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v7}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v10}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_6
    new-instance v1, Lcom/android/launcher3/testing/b;

    invoke-direct {v1, v6}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/testing/c;

    invoke-direct {v2, v6}, Lcom/android/launcher3/testing/c;-><init>(I)V

    new-instance v3, Lcom/android/launcher3/testing/d;

    invoke-direct {v3, v13, v0}, Lcom/android/launcher3/testing/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_8
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    new-instance v1, Lcom/android/launcher3/testing/b;

    invoke-direct {v1, v14}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/testing/f;

    invoke-direct {v2, v13, v0}, Lcom/android/launcher3/testing/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v5}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v5}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v13}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v15}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v9}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v12}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_c
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v2, Lcom/android/launcher3/testing/b;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v3, Lcom/android/launcher3/testing/g;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/testing/g;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_d
    new-instance v1, Lcom/android/launcher3/testing/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v3, Lcom/android/launcher3/testing/c;

    invoke-direct {v3, v2}, Lcom/android/launcher3/testing/c;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/testing/d;

    invoke-direct {v2, v5, v0}, Lcom/android/launcher3/testing/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/e;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/launcher3/testing/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v3

    :pswitch_f
    sput-boolean v5, Lcom/android/launcher3/testing/shared/TestProtocol;->sDisableSensorRotation:Z

    return-object v3

    :pswitch_10
    new-instance v0, Lcom/android/launcher3/testing/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v9}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_11
    new-instance v1, Lcom/android/launcher3/testing/b;

    invoke-direct {v1, v10}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v2, Lcom/android/launcher3/testing/f;

    invoke-direct {v2, v6, v0}, Lcom/android/launcher3/testing/f;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/launcher3/testing/h;

    invoke-direct {v0}, Lcom/android/launcher3/testing/h;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_12
    new-instance v0, Lcom/android/launcher3/testing/b;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v13}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-boolean v0, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_14
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v15}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    invoke-direct {v1, v14}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_15
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_2

    :cond_19
    iget-object v0, v0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    :goto_2
    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_16
    iget-object v0, v0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_17
    new-instance v0, Lcom/android/launcher3/testing/b;

    invoke-direct {v0, v12}, Lcom/android/launcher3/testing/b;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/testing/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/launcher3/testing/c;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x703886e0 -> :sswitch_17
        -0x6dd7a797 -> :sswitch_16
        -0x48da05a0 -> :sswitch_15
        -0x36ccc0ef -> :sswitch_14
        -0x2c10c6e0 -> :sswitch_13
        -0x25d3e253 -> :sswitch_12
        -0x1405cf16 -> :sswitch_11
        -0x7e26c79 -> :sswitch_10
        -0x7f4a12 -> :sswitch_f
        0x6f79eba -> :sswitch_e
        0x6fb0373 -> :sswitch_d
        0xc1f8001 -> :sswitch_c
        0xfeb5f6a -> :sswitch_b
        0x11da58c5 -> :sswitch_a
        0x1ceb16d7 -> :sswitch_9
        0x1e8681e8 -> :sswitch_8
        0x23b480f9 -> :sswitch_7
        0x2c0406b2 -> :sswitch_6
        0x2dcdc740 -> :sswitch_5
        0x3252dcfe -> :sswitch_4
        0x6ade98bd -> :sswitch_3
        0x709f15a5 -> :sswitch_2
        0x7a5274fb -> :sswitch_1
        0x7f975bdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 0

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppState;

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method public isLauncherInitialized()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

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
