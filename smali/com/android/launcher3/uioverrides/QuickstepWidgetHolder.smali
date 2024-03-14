.class public final Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;
.super Lcom/android/launcher3/widget/LauncherWidgetHolder;
.source "SourceFile"


# static fields
.field private static final KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/c;

.field private static final KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/c;

.field private static final KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/c;

.field public static final synthetic a:I

.field private static final sHolders:Ljava/util/List;

.field private static final sListeners:Landroid/util/SparseArray;

.field private static sWidgetHost:Landroid/appwidget/AppWidgetHost;


# instance fields
.field private final mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

.field private final mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final mPendingUpdateMap:Landroid/util/SparseArray;

.field private final mProviderChangedListeners:Ljava/util/ArrayList;

.field private final mViews:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/uioverrides/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/c;

    new-instance v0, Lcom/android/launcher3/uioverrides/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/c;

    new-instance v0, Lcom/android/launcher3/uioverrides/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lb1/q;

    const/4 p1, 0x0

    invoke-direct {p2, p1}, Lb1/q;-><init>(I)V

    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lb1/r;

    invoke-direct {p2, p0}, Lb1/r;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lb1/w;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lb1/w;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic f()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    new-instance v1, Lb1/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lb1/w;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    new-instance v1, Lb1/o;

    invoke-direct {v1, p0}, Lb1/o;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic h(Landroid/appwidget/AppWidgetHostView;Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/uioverrides/c;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public static j(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher3/uioverrides/c;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object p0, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->clear()V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p3, Landroid/widget/RemoteViews;

    iput-object p3, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static bridge synthetic k()Lcom/android/launcher3/uioverrides/c;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/c;

    return-object v0
.end method

.method public static bridge synthetic l()Lcom/android/launcher3/uioverrides/c;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/c;

    return-object v0
.end method

.method public static bridge synthetic m()Lcom/android/launcher3/uioverrides/c;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/c;

    return-object v0
.end method


# virtual methods
.method public final addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb1/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lb1/s;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    invoke-static {v2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->c(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;
    .locals 2

    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lb1/q;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lb1/q;-><init>(I)V

    new-instance v0, Lb1/t;

    invoke-direct {v0}, Lb1/t;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;-><init>(Landroid/content/Context;Lb1/q;Lb1/t;Landroid/os/Looper;)V

    sput-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_0
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method public final createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getPendingView(I)Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->removePendingView(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setIsWidgetCachingDisabled()V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    invoke-direct {p3, p2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;-><init>(I)V

    sget-object v1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p3, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->addHolder(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public final deleteAppWidgetId(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb1/p;

    invoke-direct {v1, p0}, Lb1/p;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "QuickstepWidgetHolder"

    const-string v1, "Failed to remove self from holder list"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb1/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lb1/s;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldListen(I)Z
    .locals 0

    const/4 p0, 0x6

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final stopListening()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->setAppWidgetHidden()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    return-void
.end method

.method public final updateDeferredView()V
    .locals 7

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->updateDeferredView()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {v6, v3, v5}, Lcom/android/launcher3/uioverrides/c;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v4, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/c;

    invoke-virtual {v6, v3, v5}, Lcom/android/launcher3/uioverrides/c;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    new-instance v5, Lb1/n;

    invoke-direct {v5, v3}, Lb1/n;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    iget-object v3, v4, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    invoke-interface {v3, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
