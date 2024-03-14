.class public Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field protected final mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method


# virtual methods
.method public createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public inflateSearchBar()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00e8

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isSearchBarFloating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimateToSearchStateCompleted()V
    .locals 0

    return-void
.end method

.method public onDestroySearchBar()V
    .locals 0

    return-void
.end method

.method public onInitializeRecyclerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    return-void
.end method

.method public onInitializeSearchBar()V
    .locals 0

    return-void
.end method

.method public onSearchResultsChanged(I)V
    .locals 0

    return-void
.end method
