.class public Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;
.super Lcom/android/launcher3/model/QuickstepModelDelegate;
.source "SourceFile"

# interfaces
.implements Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/Deque;

.field public final f:LT1/p;

.field public final g:LT1/b;

.field public final h:LT1/x;

.field public i:Landroid/app/smartspace/SmartspaceSession;

.field public final j:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->j:Lcom/android/launcher3/logging/StatsLogManager;

    new-instance v0, LT1/p;

    invoke-direct {v0, p1}, LT1/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->f:LT1/p;

    new-instance v0, LT1/b;

    invoke-direct {v0, p1}, LT1/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->g:LT1/b;

    new-instance v0, LT1/x;

    invoke-direct {v0, p1}, LT1/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->h:LT1/x;

    return-void
.end method


# virtual methods
.method public final additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->j:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v3, "pref_search_show_keyboard"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->k:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->l:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    :goto_0
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->j:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    const-string v2, "ALL_APPS_SEARCH_CORPUS_PREFERENCE"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->j:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-object v0, Lcom/android/quickstep/util/AssistStateManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/AssistStateManager;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->d:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->j:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/util/AssistStateManager;->isSettingsNavHandleEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInputType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->e0:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->e:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->j:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/quickstep/util/AssistStateManager;->isSettingsHomeButtonEnabled()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInputType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->f0:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    return-void
.end method

.method public final b(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifySmartspaceEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusLauncherModelDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, LT1/j;

    invoke-direct {v1, p0, p1}, LT1/j;-><init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/smartspace/SmartspaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/smartspace/SmartspaceManager;

    new-instance v2, Landroid/app/smartspace/SmartspaceConfig$Builder;

    const-string v3, "home"

    invoke-direct {v2, v0, v3}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    return-void
.end method

.method public final destroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->destroy()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->close()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->f:LT1/p;

    invoke-virtual {v0}, LT1/g;->a()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->g:LT1/b;

    invoke-virtual {v0}, LT1/g;->a()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->h:LT1/x;

    iget-object v0, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, LT1/s;

    invoke-direct {v2, p0}, LT1/s;-><init>(LT1/x;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    iput-object v1, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Recent BC Smartspace Targets (most recent first)"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    check-cast p4, Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-nez p4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   No data\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p4, LT1/i;

    invoke-direct {p4, p3, p1}, LT1/i;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {p0, p4}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->f:LT1/p;

    invoke-virtual {p1}, LT1/g;->c()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->g:LT1/b;

    invoke-virtual {p1}, LT1/g;->c()V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->h:LT1/x;

    invoke-virtual {p0}, LT1/x;->c()V

    :cond_1
    return-void
.end method

.method public final loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/model/QuickstepModelDelegate;->loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->c()V

    :cond_0
    return-void
.end method

.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, LT1/h;

    invoke-direct {v1}, LT1/h;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->e:Ljava/util/Deque;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    new-instance v1, LT1/m;

    invoke-direct {v1, p1}, LT1/m;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final validateData()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->validateData()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->i:Landroid/app/smartspace/SmartspaceSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_0
    return-void
.end method

.method public final workspaceLoadComplete()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->workspaceLoadComplete()V

    sget-object v0, Lcom/android/quickstep/util/AssistStateManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->c()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->d:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->f:LT1/p;

    invoke-virtual {v0}, LT1/g;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->g:LT1/b;

    invoke-virtual {v0}, LT1/g;->c()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->h:LT1/x;

    invoke-virtual {p0}, LT1/x;->c()V

    :cond_1
    return-void
.end method
