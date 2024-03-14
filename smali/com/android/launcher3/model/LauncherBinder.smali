.class public final Lcom/android/launcher3/model/LauncherBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mMyBindingId:I

.field protected final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p1, p0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p3, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p4, p0, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    const-string p0, "LauncherBinder"

    const-string p1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private bindWorkspaceAllAtOnce(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v14}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v3, Lcom/android/launcher3/model/h;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v15}, Lcom/android/launcher3/model/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iget-object v3, v0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLastLoadId()I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastLoadId:I

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v3, v0, Lcom/android/launcher3/model/LauncherBinder;->mMyBindingId:I

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v10, v0, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v9, v10

    move v8, v4

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v3, v10, v8

    new-instance v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iget-object v4, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, v0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mMyBindingId:I

    move-object v1, v7

    move/from16 v16, v2

    move-object/from16 v2, p0

    move-object v0, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move-object v8, v12

    move/from16 v17, v9

    move-object v9, v13

    move-object/from16 v18, v10

    move-object v10, v15

    move-object/from16 v19, v12

    move v12, v11

    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;-><init>(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->e(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V

    add-int/lit8 v8, v16, 0x1

    move-object/from16 v0, p0

    move v11, v12

    move/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static f(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr p0, v0

    new-instance v1, Lcom/android/launcher3/model/i;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/i;-><init>(II)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/model/data/AppInfo;

    sget-object v2, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:LO0/a;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v0

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/e;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/launcher3/model/e;-><init>(I)V

    new-instance v4, Lcom/android/launcher3/model/e;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/launcher3/model/e;-><init>(I)V

    new-instance v5, Lcom/android/launcher3/model/f;

    invoke-direct {v5}, Lcom/android/launcher3/model/f;-><init>()V

    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/android/launcher3/model/g;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/launcher3/model/g;-><init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void
.end method

.method public final bindDeepShortcuts()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/model/e0;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/model/e0;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bindWidgets()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/e0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/model/e0;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void
.end method

.method public final c(ZZ)V
    .locals 1

    const-string v0, "BaseLauncherBinder#bindWorkspace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WORKSPACE_LOADING_OPTIMIZATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LauncherBinder;->e(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindCurrentWorkspacePages(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindOtherWorkspacePages()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/LauncherBinder;->bindWorkspaceAllAtOnce(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/w;-><init>(Ljava/lang/Object;Lcom/android/launcher3/LauncherModel$CallbackTask;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iget-object v1, p0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLastLoadId()I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/BgDataModel;->lastLoadId:I

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget p1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput p1, p0, Lcom/android/launcher3/model/LauncherBinder;->mMyBindingId:I

    new-instance p1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;-><init>(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/util/IntArray;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
