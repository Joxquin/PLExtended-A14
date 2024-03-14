.class public final Lcom/android/launcher3/model/ReloadStringCacheTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object p3, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    iget-object p1, p1, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/model/StringCache;->loadStrings(Landroid/content/Context;)V

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {p1}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p1

    new-instance p3, Lcom/android/launcher3/model/a1;

    invoke-direct {p3, p1}, Lcom/android/launcher3/model/a1;-><init>(Lcom/android/launcher3/model/StringCache;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
