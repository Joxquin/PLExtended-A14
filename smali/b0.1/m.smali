.class public abstract Lb0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/ArrayMap;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lb0/m;->a:Landroid/util/ArrayMap;

    iput-object p1, p0, Lb0/m;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;)V
.end method

.method public final b(Landroid/net/Uri;Lcom/android/launcher3/util/LooperExecutor;Lcom/google/android/apps/nexuslauncher/allapps/x0;)V
    .locals 3

    new-instance v0, Lb0/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lb0/l;-><init>(Lb0/m;Landroid/net/Uri;Lcom/android/launcher3/util/LooperExecutor;Lcom/google/android/apps/nexuslauncher/allapps/x0;)V

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lb0/m;->a:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lb0/m;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb0/l;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lb0/l;->g:Lb0/m;

    iget-object v1, p3, Lb0/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lb0/l;->f:Lb0/k;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v1, p2, Lb0/l;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p2, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Lb0/m;->c(Landroid/net/Uri;)V

    const/4 p3, 0x0

    iput-boolean p3, p2, Lb0/l;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb0/m;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v0, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    iget-object p1, p0, Lb0/m;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, v0, Lb0/l;->f:Lb0/k;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean p1, v0, Lb0/l;->d:Z

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, v0, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lb0/m;->a(Landroid/net/Uri;)V

    iput-boolean v1, v0, Lb0/l;->d:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public abstract c(Landroid/net/Uri;)V
.end method
