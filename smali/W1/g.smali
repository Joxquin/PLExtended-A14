.class public final LW1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LW1/g;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iput-object p2, p0, LW1/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getChangedDocumentIds()Ljava/util/Set;

    move-result-object p1

    const-string v0, "entry_point"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LW1/g;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LW1/g;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v1, "AppSearch value updated"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LW1/g;->b:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p0, p0, LW1/g;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->d:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, LW1/d;

    invoke-direct {v1, p1, p0}, LW1/d;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    new-instance v2, LW1/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LW1/e;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, LW1/f;

    invoke-direct {v1, p1, p0}, LW1/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 0

    return-void
.end method
