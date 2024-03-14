.class final Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgets:Ljava/util/ArrayList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private final mExtraItems:Ljava/util/ArrayList;

.field private final mMyBindingId:I

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkspaceItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/android/launcher3/model/LauncherBinder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput p6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    iput-object p7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iget v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    if-eq v1, v0, :cond_0

    const-string p0, "LauncherBinder"

    const-string p1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {p1, p0}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/model/s;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;I)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method public static e(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {v1, v2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Null screen ids provided by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    invoke-static {v2, v6, v1, v3}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v6, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    invoke-static {v2, v6, v4, v5}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v6, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Lcom/android/launcher3/model/LauncherBinder;->f(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-static {v6, v3}, Lcom/android/launcher3/model/LauncherBinder;->f(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    new-instance v6, Lcom/android/launcher3/model/o;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/launcher3/model/o;-><init>(I)V

    iget-object v8, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v6, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    new-instance v6, Lcom/android/launcher3/model/t;

    const/4 v9, 0x0

    invoke-direct {v6, v9, p0}, Lcom/android/launcher3/model/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v6, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v9

    :goto_0
    const/4 v11, 0x6

    if-ge v10, v6, :cond_1

    add-int/lit8 v12, v10, 0x6

    if-gt v12, v6, :cond_0

    goto :goto_1

    :cond_0
    sub-int v11, v6, v10

    :goto_1
    new-instance v13, Lcom/android/launcher3/model/r;

    invoke-direct {v13, v1, v10, v11, v7}, Lcom/android/launcher3/model/r;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {p0, v13, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v10, v12

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v9

    :goto_2
    if-ge v6, v1, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v12, Lcom/android/launcher3/model/q;

    invoke-direct {v12, v7, v10}, Lcom/android/launcher3/model/q;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v12, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/launcher3/model/h;

    const/4 v4, 0x2

    invoke-direct {v1, v4, p0}, Lcom/android/launcher3/model/h;-><init>(ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/u;

    invoke-direct {v4, v1}, Lcom/android/launcher3/model/u;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v9

    :goto_3
    if-ge v10, v6, :cond_5

    add-int/lit8 v12, v10, 0x6

    if-gt v12, v6, :cond_4

    move v13, v11

    goto :goto_4

    :cond_4
    sub-int v13, v6, v10

    :goto_4
    new-instance v14, Lcom/android/launcher3/model/r;

    invoke-direct {v14, v3, v10, v13, v7}, Lcom/android/launcher3/model/r;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {p0, v14, v4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v10, v12

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    if-ge v9, v3, :cond_6

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v10, Lcom/android/launcher3/model/q;

    invoke-direct {v10, v7, v6}, Lcom/android/launcher3/model/q;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v10, v4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    new-instance v3, Lcom/android/launcher3/model/t;

    invoke-direct {v3, v7, v2}, Lcom/android/launcher3/model/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/android/launcher3/model/l;

    invoke-direct {v3, v7, p0}, Lcom/android/launcher3/model/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/u;->execute(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/android/launcher3/model/v;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v3, v2, v1, v6, v5}, Lcom/android/launcher3/model/v;-><init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    invoke-virtual {p0, v3, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v1}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/m;

    invoke-direct {v2, v1, v7}, Lcom/android/launcher3/model/m;-><init>(Lcom/android/launcher3/model/StringCache;I)V

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/w;-><init>(Ljava/lang/Object;Lcom/android/launcher3/LauncherModel$CallbackTask;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
