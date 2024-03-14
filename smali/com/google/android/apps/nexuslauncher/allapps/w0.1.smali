.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/x0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/w0;->d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/w0;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/w0;->d:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/w0;->e:Z

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->h:Z

    if-eq v1, p0, :cond_2

    iput-boolean p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->h:Z

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->e:Lb0/n;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->d:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1, v2, v0}, Lb0/m;->b(Landroid/net/Uri;Lcom/android/launcher3/util/LooperExecutor;Lcom/google/android/apps/nexuslauncher/allapps/x0;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/k0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/k0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->e:Lb0/n;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->d:Landroid/net/Uri;

    iget-object v2, p0, Lb0/m;->a:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lb0/m;->a:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb0/l;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lb0/l;->g:Lb0/m;

    iget-object v1, v0, Lb0/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lb0/l;->f:Lb0/k;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v1, p0, Lb0/l;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lb0/m;->c(Landroid/net/Uri;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb0/l;->d:Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "SearchSessionManager"

    const-string v1, "Failed to register or unregister slice callback."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
