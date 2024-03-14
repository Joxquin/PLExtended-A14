.class public Lcom/android/launcher3/model/QuickstepModelDelegate;
.super Lcom/android/launcher3/model/ModelDelegate;
.source "SourceFile"


# instance fields
.field protected mActive:Z

.field final mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

.field private final mContext:Landroid/content/Context;

.field final mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mStatsManager:Landroid/app/StatsManager;

.field final mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDelegate;-><init>()V

    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x66

    const-string v2, "all_apps_predictions"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x67

    const-string v2, "hotseat_predictions"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x6f

    const-string v2, "widgets_prediction"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/model/AppEventProducer;

    new-instance v1, Lcom/android/launcher3/model/R0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/R0;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/AppEventProducer;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/R0;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/QuickstepModelDelegate;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v3

    const-string v4, "QuickstepModelDelegate"

    invoke-virtual {v3}, Lcom/google/protobuf/J;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->buildStatsEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "QuickstepModelDelegate"

    const-string v1, "Successfully logged %d workspace items with instanceId=%d"

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V

    sget-object p1, Lcom/android/quickstep/logging/SettingsChangeLogger;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/logging/SettingsChangeLogger;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger;->logSnapshot(Lcom/android/launcher3/logging/InstanceId;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_0

    const-string v0, "Item info: %s found with invalid container: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickstepModelDelegate"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadAndBindItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;[Lcom/android/launcher3/model/BgDataModel$Callbacks;ILcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V
    .locals 9

    new-instance v6, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;

    iget-object v7, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget v8, p5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    move-object v0, v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;II)V

    new-instance p2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p1, p1, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/model/Y0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/Y0;-><init>(Landroid/util/LongSparseArray;)V

    iget-object p1, p5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    invoke-virtual {p1, p4, v6, v0}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, v8, p1}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p4, Lcom/android/launcher3/model/S0;

    const/4 v0, 0x1

    invoke-direct {p4, p3, p2, v0}, Lcom/android/launcher3/model/S0;-><init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Object;I)V

    invoke-virtual {p1, p4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget p1, p5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private registerHotseatPredictor(Landroid/app/prediction/AppPredictionManager;Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v1, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v1, p2}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "hotseat"

    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p2, v6}, Lcom/android/launcher3/model/PredictionHelper;->getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x65

    if-eq v8, v9, :cond_1

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v7, v6}, Lcom/android/launcher3/model/PredictionHelper;->wrapAppTargetWithItemLocation(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v6, -0x67

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p2, v6}, Lcom/android/launcher3/model/PredictionHelper;->getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string p2, "pin_events"

    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "current_items"

    invoke-virtual {v3, p2, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->setTargets(Ljava/util/List;)Z

    iput-object p1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/Q0;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/Q0;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    iget-object p0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    return-void
.end method


# virtual methods
.method public additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V
    .locals 0

    return-void
.end method

.method public final bindAllModelExtras([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/S0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/launcher3/model/S0;-><init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mIsPrimaryInstance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    const/16 v1, 0x277c

    invoke-virtual {v0, v1}, Landroid/app/StatsManager;->clearPullAtomCallback(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_3
    return-void
.end method

.method public final loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    iget-object v6, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/QuickstepModelDelegate;->loadAndBindItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;[Lcom/android/launcher3/model/BgDataModel$Callbacks;ILcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V

    return-void
.end method

.method public loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v1, v1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v2, v2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/S0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3}, Lcom/android/launcher3/model/S0;-><init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/StringCache;->loadStrings(Landroid/content/Context;)V

    return-void
.end method

.method public loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iget-object v6, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/QuickstepModelDelegate;->loadAndBindItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;[Lcom/android/launcher3/model/BgDataModel$Callbacks;ILcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V

    return-void
.end method

.method public final markActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    return-void
.end method

.method public final modelLoadComplete()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LAST_SNAPSHOT_TIME_MILLIS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->writeSnapshot(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SNAPSHOT_TIME_MILLIS"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mIsPrimaryInstance:Z

    if-eqz v0, :cond_3

    const-string v0, "QuickstepModelDelegate"

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    if-nez v1, :cond_2

    const-string v2, "Failed to get StatsManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/model/X0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/X0;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    const/16 p0, 0x277c

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const-string p0, "Successfully registered for launcher snapshot logging!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Failed to register launcher snapshot logging callback with StatsManager"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;I)V
    .locals 2

    const/16 v0, -0x6f

    if-eq p2, v0, :cond_1

    const/16 v0, -0x66

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    :goto_0
    iget-object v0, p2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyAppTargetEvent action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " launchLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepModelDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object p2, p1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictor;->destroy()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_3
    iget-boolean p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/prediction/AppPredictionManager;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerHotseatPredictor(Landroid/app/prediction/AppPredictionManager;Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public validateData()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/model/ModelDelegate;->validateData()V

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :cond_1
    return-void
.end method

.method public workspaceLoadComplete()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v2, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppPredictionManager;

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "home"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->setTargets(Ljava/util/List;)Z

    iput-object v3, v2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher3/model/Q0;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher3/model/Q0;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    iget-object v2, v2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v2}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerHotseatPredictor(Landroid/app/prediction/AppPredictionManager;Landroid/content/Context;)V

    new-instance v2, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v2, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "widgets"

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/android/launcher3/model/U0;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/launcher3/model/U0;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/android/launcher3/model/V0;

    invoke-direct {v6, v0}, Lcom/android/launcher3/model/V0;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/model/U0;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Lcom/android/launcher3/model/U0;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/model/W0;

    invoke-direct {v3}, Lcom/android/launcher3/model/W0;-><init>()V

    invoke-static {v3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v3, "added_app_widgets"

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iput-object v0, v1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    new-instance v1, Lcom/android/launcher3/model/T0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/T0;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object p0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :goto_0
    return-void
.end method
