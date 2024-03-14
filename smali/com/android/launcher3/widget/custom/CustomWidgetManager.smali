.class public final Lcom/android/launcher3/widget/custom/CustomWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/k;
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private mAutoProviderId:I

.field private final mContext:Landroid/content/Context;

.field private final mCustomWidgets:Ljava/util/List;

.field private final mPlugins:Landroid/util/SparseArray;

.field private mWidgetRefreshCallback:Ljava/util/function/Consumer;

.field private final mWidgetsIdMap:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lg1/a;

    invoke-direct {v1}, Lg1/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v0, Ln1/h;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Ln1/k;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomWidgetManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Ln1/k;)V

    return-void
.end method

.method public final getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    rsub-int/lit8 p0, p0, -0x64

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getWidgetProvider(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    rsub-int/lit8 p1, p1, -0x64

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPluginConnected(Ln1/j;Landroid/content/Context;)V
    .locals 5

    check-cast p1, Ln1/h;

    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    new-instance v3, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;ZI)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "#custom-widget-"

    invoke-static {v4, v0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {p1}, Ln1/h;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-interface {p1}, Ln1/h;->n()I

    move-result p2

    iput p2, v3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-interface {p1}, Ln1/h;->h()I

    move-result p2

    iput p2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-interface {p1}, Ln1/h;->f()I

    move-result p2

    iput p2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-interface {p1}, Ln1/h;->c()I

    move-result p2

    iput p2, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-interface {p1}, Ln1/h;->i()I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    iget-object v0, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetRefreshCallback:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    :goto_0
    return-void
.end method

.method public final onPluginDisconnected(Ln1/j;)V
    .locals 4

    check-cast p1, Ln1/h;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProvider(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :goto_2
    return-void
.end method

.method public final onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    iget-object p0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln1/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ln1/h;->g()V

    return-void
.end method

.method public final setWidgetRefreshCallback(Lcom/android/launcher3/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetRefreshCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
