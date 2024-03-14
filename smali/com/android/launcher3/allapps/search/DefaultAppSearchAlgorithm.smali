.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# instance fields
.field private final mAddNoResultsMessage:Z

.field private final mAppState:Lcom/android/launcher3/LauncherAppState;

.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAppState:Lcom/android/launcher3/LauncherAppState;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAddNoResultsMessage:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAddNoResultsMessage:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
