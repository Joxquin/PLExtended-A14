.class public final Lcom/google/android/apps/nexuslauncher/allapps/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;


# instance fields
.field public final d:Landroid/net/Uri;

.field public final e:Lb0/n;

.field public final f:Ljava/util/ArrayList;

.field public g:Z

.field public h:Z

.field public i:Landroidx/slice/Slice;

.field public final synthetic j:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->j:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->g:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->h:Z

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->d:Landroid/net/Uri;

    new-instance p2, Lb0/n;

    invoke-direct {p2, p1}, Lb0/n;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->e:Lb0/n;

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->g:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->j:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->j:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/w0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/w0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/x0;Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->b()V

    return-void
.end method
