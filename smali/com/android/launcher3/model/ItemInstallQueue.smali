.class public final Lcom/android/launcher3/model/ItemInstallQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstallQueueDisabledFlags:I

.field private mItems:Ljava/util/List;

.field private final mStorage:Lcom/android/launcher3/util/PersistedItemArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/model/X;

    invoke-direct {v1}, Lcom/android/launcher3/model/X;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/PersistedItemArray;

    const-string v1, "apps_to_install"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/Z;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/launcher3/model/Z;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    invoke-interface {v5}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->preAddApps()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ItemInstallQueue;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static d(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    const-string v2, "ItemInstallQueue"

    if-nez v1, :cond_0

    sget v1, Lcom/android/launcher3/logging/FileLog;->a:I

    const-string v1, "Adding PendingInstallShortcutInfo with no attached info to queue."

    invoke-static {v2, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2, v1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding PendingInstallShortcutInfo to queue. Attached info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/launcher3/logging/FileLog;->a:I

    invoke-static {v2, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2, v1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static e(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .locals 2

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p0, "InstallShortcutReceiver"

    const-string p1, "Unknown item type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object p3, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object p0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)V

    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1

    :cond_2
    const-string p1, "appWidgetId"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move-object p1, p2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_1
    return-object p1
.end method

.method private ensureQueueLoaded()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/model/b0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/b0;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/util/z;

    invoke-direct {v4, v2}, Lcom/android/launcher3/util/z;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/Y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/Y;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/launcher3/model/W;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/W;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/c0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/c0;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/Z;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/model/Z;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final pauseModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    return-void
.end method

.method public final queueItem(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public final queueItem(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public final queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public final removeFromInstallQueue(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/model/a0;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/model/a0;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    iget-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final resumeModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/model/W;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/W;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
