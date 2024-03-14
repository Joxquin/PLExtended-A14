.class public final Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"


# instance fields
.field private future:Ljava/util/concurrent/Future;


# virtual methods
.method public final getPreinflateCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->getRecycledViewCount()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final preInflateAllAppsViewHolders(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->getPreinflateCount(Landroid/content/Context;)I

    move-result v3

    if-gtz v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v4, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;

    invoke-direct {v4, p1, v0}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    sget-object v0, Lcom/android/launcher3/util/Executors;->VIEW_PREINFLATION_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;

    move-object v2, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;-><init>(ILcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->future:Ljava/util/concurrent/Future;

    return-void
.end method
