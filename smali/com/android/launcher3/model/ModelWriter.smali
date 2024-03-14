.class public final Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

.field private final mContext:Landroid/content/Context;

.field private final mDeleteRunnables:Ljava/util/List;

.field private final mHasVerticalHotseat:Z

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mPreparingToUndo:Z

.field private final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private final mVerifyChanges:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-boolean p4, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    iput-boolean p5, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    iput-object p7, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p6, p0, Lcom/android/launcher3/model/ModelWriter;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eq v3, v4, :cond_0

    invoke-interface {p1, v3}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "favorites"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    filled-new-array {p1}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static c(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    const-string v1, "_id"

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    const-string v2, "favorites"

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/model/ModelDbController;->insert(Ljava/lang/String;Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2, p0, p1, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    invoke-virtual {p3}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_3

    if-eq p2, p0, :cond_3

    instance-of p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "item: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_2
    throw p1

    :cond_3
    return-void
.end method

.method public static d(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->itemIdMatch(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "favorites"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    filled-new-array {v0}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "container"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "cellX"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "cellY"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "rank"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "screen"

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "container"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "cellX"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "cellY"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "rank"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "spanX"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "spanY"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "screen"

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/android/launcher3/model/ModelWriter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    return p0
.end method

.method public static bridge synthetic m(Lcom/android/launcher3/model/ModelWriter;ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/model/v0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/launcher3/model/v0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    invoke-virtual {v0, p4, p5, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p3

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/16 v0, -0x65

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    sub-int/2addr p0, p5

    add-int/lit8 p4, p0, -0x1

    :cond_0
    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_0

    :cond_1
    iget p0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final abortDelete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method public final addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result p2

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    new-instance p2, Lcom/android/launcher3/model/x0;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/model/x0;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    new-instance p4, Lcom/android/launcher3/model/y0;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/android/launcher3/model/y0;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    new-instance p1, Lcom/android/launcher3/model/ModelWriter$1;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :goto_0
    return-void
.end method

.method public final commitDelete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/model/z0;

    invoke-direct {v0}, Lcom/android/launcher3/model/z0;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/w0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/model/w0;-><init>(ILjava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance v1, Lcom/android/launcher3/model/t0;

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/launcher3/model/t0;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Object;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V

    new-instance p1, Lcom/android/launcher3/model/ModelWriter$1;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    return-void
.end method

.method public final deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .locals 0

    filled-new-array {p1}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public final deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4

    .line 4
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removing items from db "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/u0;

    invoke-direct {v3}, Lcom/android/launcher3/model/u0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ","

    .line 6
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 7
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "unknown"

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ModelWriter"

    .line 9
    invoke-static {v1, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/android/launcher3/model/w0;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p1}, Lcom/android/launcher3/model/w0;-><init>(ILjava/util/Collection;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 11
    new-instance p2, Lcom/android/launcher3/model/t0;

    const/4 v1, 0x1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/launcher3/model/t0;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Object;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V

    .line 12
    new-instance p1, Lcom/android/launcher3/model/ModelWriter$1;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    return-void
.end method

.method public final deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public final deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherWidgetHolder;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/w0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/model/w0;-><init>(ILjava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    if-eqz p2, :cond_3

    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    new-instance v0, Lcom/android/launcher3/model/v0;

    invoke-direct {v0, v2, p2, p1}, Lcom/android/launcher3/model/v0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$1;

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    new-instance p2, Lcom/android/launcher3/model/x0;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/model/x0;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance p4, Lcom/android/launcher3/model/s0;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/launcher3/model/s0;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-direct {p2, p0, p1, p4}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/s0;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    new-instance p2, Lcom/android/launcher3/model/x0;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/model/x0;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance p2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance p3, Lcom/android/launcher3/model/s0;

    const/4 p4, 0x2

    invoke-direct {p3, p0, p1, p4}, Lcom/android/launcher3/model/s0;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-direct {p2, p0, p1, p3}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/s0;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    return-void
.end method

.method public final moveItemsInDatabase(Ljava/util/ArrayList;I)V
    .locals 11

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v0, Lcom/android/launcher3/model/w0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/model/w0;-><init>(ILjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v0, p0

    move-object v1, v10

    move v2, p2

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {p2, p0, p1, v7}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    return-void
.end method

.method public final prepareToUndoDelete()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    :cond_0
    return-void
.end method

.method public final updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/model/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/model/x0;-><init>(ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/s0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/model/s0;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/s0;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
