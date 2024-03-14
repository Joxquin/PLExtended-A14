.class public final LW1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iput-object p2, p0, LW1/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    iget-object v0, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    const-string v1, "isAvailable"

    invoke-virtual {p1, v1}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->h:Z

    iget-object p1, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v2, "Fetched from AppSearch, isAvailable"

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->h:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;Z)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p0, p0, LW1/h;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LW1/h;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p0, p0, LW1/h;->a:Landroid/content/Context;

    check-cast p1, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
