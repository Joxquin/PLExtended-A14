.class public final synthetic LW1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V
    .locals 0

    iput p2, p0, LW1/a;->a:I

    iput-object p1, p0, LW1/a;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LW1/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, LW1/a;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v0, "com.google.android.googlequicksearchbox"

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->g:LW1/g;

    invoke-virtual {p1, v0, v1}, Landroid/app/appsearch/GlobalSearchSession;->unregisterObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AssistStateManagerGoogle"

    const-string v2, "Failed to unregister AppSearch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v1, "Failed to unregister AppSearch observer"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_1
    iget-object p0, p0, LW1/a;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    check-cast p1, Landroid/content/Intent;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, LW1/c;

    invoke-direct {v0, p0}, LW1/c;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    iget-object p0, p0, LW1/a;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v2, "Created AppSearch session"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v0, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object v0

    :try_start_4
    const-string v1, "com.google.android.googlequicksearchbox"

    new-instance v2, LW1/e;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, LW1/e;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->g:LW1/g;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0
    :try_end_4
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v2, "Registered AppSearch observer"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "AssistStateManagerGoogle"

    const-string v2, "Failed to register AppSearch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v2, "Failed to register AppSearch observer"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->d:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->d:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Landroid/app/appsearch/exceptions/AppSearchException;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
