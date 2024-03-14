.class final Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;


# instance fields
.field private final mListeningHolders:Ljava/util/Set;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private final mWidgetId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mListeningHolders:Ljava/util/Set;

    iput p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mWidgetId:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mWidgetId:I

    invoke-static {p3, p0, p1, p2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->j(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mListeningHolders:Ljava/util/Set;

    new-instance v1, Lcom/android/launcher3/uioverrides/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/uioverrides/e;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mListeningHolders:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final addHolder(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mListeningHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->k()Lcom/android/launcher3/uioverrides/c;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/uioverrides/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/uioverrides/d;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/c;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onViewDataChanged(I)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->m()Lcom/android/launcher3/uioverrides/c;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/uioverrides/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/uioverrides/d;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/c;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->l()Lcom/android/launcher3/uioverrides/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->mRemoteViews:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/uioverrides/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/uioverrides/d;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/c;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
