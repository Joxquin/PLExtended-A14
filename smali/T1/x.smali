.class public final LT1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LT1/t;

.field public c:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT1/t;

    invoke-direct {v0, p0}, LT1/t;-><init>(LT1/x;)V

    iput-object v0, p0, LT1/x;->b:LT1/t;

    iput-object p1, p0, LT1/x;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(LT1/x;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    const/16 v1, -0xcb

    invoke-direct {p1, v1, v0}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    iget-object p0, p0, LT1/x;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    new-instance v0, LT1/v;

    invoke-direct {v0, p1}, LT1/v;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZeroStateWebSuggestDataLoader"

    const-string v1, "Failed to fetch suggestions from AppSearch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget-object v0, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LT1/s;

    invoke-direct {v1, p0}, LT1/s;-><init>(LT1/x;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    iput-object v0, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    :goto_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, LT1/x;->a:Landroid/content/Context;

    const-class v2, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchManager;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, LT1/q;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, LT1/q;-><init>(LT1/x;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, LT1/x;->d()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v1, "default"

    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "zp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object v0

    iget-object v1, p0, LT1/x;->c:Ljava/util/concurrent/CompletableFuture;

    new-instance v2, LT1/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, LT1/q;-><init>(LT1/x;Ljava/lang/Object;I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, LT1/r;

    invoke-direct {v1, p0}, LT1/r;-><init>(LT1/x;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
