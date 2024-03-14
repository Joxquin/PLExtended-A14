.class public Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/quickstep/RecentsModel$RunningTasksListener;


# instance fields
.field private final mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field protected mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeferUpdatesForSUW:Z

.field private mDeferredUpdates:Lcom/android/launcher3/taskbar/r0;

.field private final mHotseatItems:Landroid/util/SparseArray;

.field private mPredictedItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateIconsBackground()V

    return-void
.end method

.method private commitItemsToUI()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    new-array v1, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v1, v3

    if-nez v5, :cond_1

    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v1, v3

    iput v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->updateHotseatItemInfos([Lcom/android/launcher3/model/data/ItemInfo;)[Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/launcher3/taskbar/r0;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/r0;-><init>(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Lcom/android/launcher3/taskbar/r0;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateIconsBackground()V

    :goto_1
    return-void
.end method

.method private handleItemsAdded(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleItemsRemoved(Ljava/util/function/Predicate;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public final bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_1
    return-void
.end method

.method public final bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x67

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    goto :goto_0

    :cond_0
    const/16 v1, -0x66

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setPredictedApps(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bindItems(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_0
    return-void
.end method

.method public final bindItemsModified(Ljava/util/List;)V
    .locals 3

    sget v0, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/p;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/p;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/launcher3/util/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_1
    return-void
.end method

.method public final bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/q;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public final bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_0
    return-void
.end method

.method public final bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/launcher3/util/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/util/q;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public final commitRunningAppsToUI()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarModelCallbacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\thotseat items count=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\tpredicted items count=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\tmDeferUpdatesForSUW=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Lcom/android/launcher3/taskbar/r0;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    move v1, p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "%s\tupdates pending=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsModel;->registerRunningTasksListener(Lcom/android/quickstep/RecentsModel$RunningTasksListener;)V

    :cond_0
    return-void
.end method

.method public final mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 5

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/util/q;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/q;->evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onRunningTasksChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateRunningApps()V

    return-void
.end method

.method public final setDeferUpdatesForSUW(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Lcom/android/launcher3/taskbar/r0;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Lcom/android/launcher3/taskbar/r0;

    :cond_0
    return-void
.end method

.method public final startBinding()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    return-void
.end method

.method public final unregisterListeners()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->unregisterRunningTasksListener()V

    return-void
.end method

.method public final updateRunningApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->updateRunningApps(Landroid/util/SparseArray;)V

    return-void
.end method
