.class public final Lcom/google/android/apps/nexuslauncher/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/u;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/q;->d:Lcom/google/android/apps/nexuslauncher/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/q;->d:Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/q;->d:Lcom/google/android/apps/nexuslauncher/u;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/u;->j:Lcom/google/android/apps/nexuslauncher/t;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/q;->d:Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/u;->k:Lcom/google/android/apps/nexuslauncher/r;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
