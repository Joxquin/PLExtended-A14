.class final Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBoundItemIds:Ljava/util/Set;

.field private final mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field final synthetic this$0:Lcom/android/launcher3/model/LauncherBinder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/util/IntArray;)V
    .locals 6

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    iget-object p1, p1, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {v3, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/launcher3/util/m;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher3/util/m;-><init>(Lcom/android/launcher3/util/IntSet;I)V

    invoke-interface {v3, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private bindAppWidgets(Ljava/util/List;)V
    .locals 6

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v4, Lcom/android/launcher3/model/q;

    invoke-direct {v4, v1, v3}, Lcom/android/launcher3/model/q;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v5, v3, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x6

    if-gt v3, v0, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :cond_0
    sub-int v4, v0, v2

    :goto_1
    new-instance v5, Lcom/android/launcher3/model/r;

    invoke-direct {v5, p1, v2, v4, v1}, Lcom/android/launcher3/model/r;-><init>(Ljava/util/ArrayList;III)V

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v4, v2, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {p3, p0, v0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method


# virtual methods
.method public final bindCurrentWorkspacePages(Z)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v1, v1, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v7, Lcom/android/launcher3/model/h;

    invoke-direct {v7, v6, v0}, Lcom/android/launcher3/model/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/launcher3/model/n;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/android/launcher3/model/n;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/launcher3/model/n;

    invoke-direct {v1, p0, v6}, Lcom/android/launcher3/model/n;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/launcher3/model/n;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/model/n;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/launcher3/model/LauncherBinder;->f(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/o;

    invoke-direct {v1, v7}, Lcom/android/launcher3/model/o;-><init>(I)V

    iget-object v4, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/k;

    invoke-direct {v1, p0, v6}, Lcom/android/launcher3/model/k;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    iget-object v4, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/p;

    invoke-direct {v1, p0, v5, p1}, Lcom/android/launcher3/model/p;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZ)V

    iget-object p0, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bindOtherWorkspacePages()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/model/j;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/model/j;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v0, Lcom/android/launcher3/model/j;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/launcher3/model/j;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/LauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/model/LauncherBinder;->f(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/k;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/model/k;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V

    iget-object v2, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/l;

    invoke-direct {v1, v3, p0}, Lcom/android/launcher3/model/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/LauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/m;

    invoke-direct {v1, v0, v3}, Lcom/android/launcher3/model/m;-><init>(Lcom/android/launcher3/model/StringCache;I)V

    iget-object v0, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
