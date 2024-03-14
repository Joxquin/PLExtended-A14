.class public Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;
.super Lcom/android/quickstep/util/AssistStateManager;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;


# instance fields
.field public final d:Ljava/util/concurrent/CompletableFuture;

.field public final e:Landroid/app/appsearch/GetByDocumentIdRequest;

.field public final f:Landroid/content/Context;

.field public final g:LW1/g;

.field public h:Z

.field public i:Z

.field public final j:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field public final k:Lcom/android/launcher3/util/EventLogArray;

.field public final l:Lcom/android/launcher3/util/SettingsCache;

.field public final m:LW1/b;

.field public final n:LW1/b;

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "search_press_hold_nav_handle_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    const-string v0, "search_long_press_home_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->r:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/quickstep/util/AssistStateManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->d:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v2, "omni"

    invoke-direct {v1, v2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "entry_point"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->e:Landroid/app/appsearch/GetByDocumentIdRequest;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->h:Z

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->i:Z

    new-instance v2, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v3, LW1/a;

    invoke-direct {v3, p0, v1}, LW1/a;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->j:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v3, Lcom/android/launcher3/util/EventLogArray;

    const-string v4, "AssistStateManagerGoogle"

    invoke-direct {v3, v4}, Lcom/android/launcher3/util/EventLogArray;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->f:Landroid/content/Context;

    new-instance v3, LW1/g;

    invoke-direct {v3, p0, p1}, LW1/g;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->g:LW1/g;

    const-class v3, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/AppSearchManager;

    new-instance v4, LW1/e;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, LW1/e;-><init>(I)V

    new-instance v6, LW1/a;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, LW1/a;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V

    invoke-virtual {v3, v4, v6}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    new-instance v3, LW1/d;

    invoke-direct {v3, p0, p1}, LW1/d;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    new-instance v4, LW1/e;

    invoke-direct {v4, v1}, LW1/e;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v3, LW1/f;

    invoke-direct {v3, p0, p1}, LW1/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, LW1/c;

    invoke-direct {v3, p0}, LW1/c;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->l:Lcom/android/launcher3/util/SettingsCache;

    new-instance v0, LW1/b;

    invoke-direct {v0, p0, v1}, LW1/b;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->m:LW1/b;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {p1, v5, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(ILandroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->o:Z

    new-instance v0, LW1/b;

    invoke-direct {v0, p0, v5}, LW1/b;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->n:LW1/b;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->r:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {p1, v5, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(ILandroid/net/Uri;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->p:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->c0:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const-string p1, "AssistStateManagerGoogle"

    const-string v0, "Failed to fetch from AppSearch"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string p2, "AppSearch fetch failed"

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->d:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, LW1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LW1/a;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->j:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->f:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->l:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->m:LW1/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->l:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->r:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->n:LW1/b;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/EventLogArray;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSearchAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->i:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSettingsHomeButtonEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->p:Z

    return p0
.end method

.method public final isSettingsNavHandleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->o:Z

    return p0
.end method
