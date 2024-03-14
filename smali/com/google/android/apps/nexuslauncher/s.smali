.class public final Lcom/google/android/apps/nexuslauncher/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/u;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/u;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/s;->d:Lcom/google/android/apps/nexuslauncher/u;

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/s;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/s;->d:Lcom/google/android/apps/nexuslauncher/u;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/s;->e:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/u;->k:Lcom/google/android/apps/nexuslauncher/r;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "selected_search_engine"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/u;->parseLocalCache(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/n;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/u;->fetchTargetInfo(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/n;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, p0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v2, v1

    move-object v5, v3

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "OSEManager"

    const-string v6, "Error fetching ose info"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/u;->k:Lcom/google/android/apps/nexuslauncher/r;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3, v6}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    :cond_4
    add-int/2addr p0, v4

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->d(I)V

    :cond_5
    :goto_1
    new-instance p0, Lcom/google/android/apps/nexuslauncher/p;

    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/nexuslauncher/p;-><init>(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/n;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/k;

    invoke-direct {v2, p0, v0, v4}, Lcom/google/android/apps/nexuslauncher/k;-><init>(Ljava/lang/Object;Lcom/google/android/apps/nexuslauncher/u;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
