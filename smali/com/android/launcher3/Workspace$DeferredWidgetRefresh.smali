.class final Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInfos:Ljava/util/ArrayList;

.field private mRefreshPending:Z

.field private final mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherWidgetHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    invoke-virtual {p3, p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-static {p1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const-class p2, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyWidgetProvidersChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    new-instance v3, Lcom/android/launcher3/X0;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/launcher3/X0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    goto :goto_0

    :cond_1
    return-void
.end method
