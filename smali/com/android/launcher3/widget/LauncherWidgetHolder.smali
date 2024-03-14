.class public Lcom/android/launcher3/widget/LauncherWidgetHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeferredViews:Landroid/util/SparseArray;

.field protected mFlags:I

.field private final mPendingViews:Landroid/util/SparseArray;

.field private final mViews:Landroid/util/SparseArray;

.field private final mWidgetHost:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mPendingViews:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mDeferredViews:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method private setShouldListenFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result p1

    if-nez p1, :cond_1

    iget p2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->shouldListen(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startListening()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->stopListening()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appWidgetProviderProfile"

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final addPendingView(ILcom/android/launcher3/widget/PendingAppWidgetHostView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method public final allocateAppWidgetId()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result p0

    return p0
.end method

.method public clearViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->clearViews()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CACHED_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mDeferredViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Lcom/android/launcher3/widget/LauncherWidgetHolder;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    iget-object v0, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#custom-widget-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    sget-object p2, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CACHED_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mDeferredViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance v0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->onCreateView(Landroid/content/Context;I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    new-instance p0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public deleteAppWidgetId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CACHED_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public final getAppWidgetIds()[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object p0

    return-object p0
.end method

.method public final getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 p2, -0x1

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "android.activity.splashScreenStyle"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getPendingView(I)Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    return-object p0
.end method

.method public final isListening()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onCreateView(Landroid/content/Context;I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getPendingView(I)Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getPendingView(I)Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->removePendingView(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mDeferredViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public final removePendingView(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method public final setActivityResumed(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public final setActivityStarted(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public final setListeningFlag(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    return-void

    :cond_0
    iget p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    return-void
.end method

.method public final setStateIsNormal(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public shouldListen(I)Z
    .locals 0

    const/16 p0, 0xe

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V
    .locals 8

    :try_start_0
    const-string v0, "Main"

    const-string v1, "start: startConfigActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p0, 0x7f130043

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lf1/f;

    invoke-direct {p2, p1, p3}, Lf1/f;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final startListening()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->updateDeferredView()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public stopListening()V
    .locals 7

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CACHED_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    monitor-enter v2

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v6, v0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLastRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    return-void
.end method

.method public updateDeferredView()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    instance-of v3, v2, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_0
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_CACHED_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mDeferredViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_1

    iget-object v5, v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6, v5, v3, v2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
