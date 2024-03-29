.class public final Lcom/android/launcher3/model/CacheDataUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:Ljava/util/HashSet;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    iput-object p2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    return-void
.end method

.method public static m(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result p0

    invoke-virtual {p1, p3, p0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/launcher3/model/K;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/K;-><init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v1, p1}, Lcom/android/launcher3/model/AllAppsList;->updateIconsAndLabels(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
