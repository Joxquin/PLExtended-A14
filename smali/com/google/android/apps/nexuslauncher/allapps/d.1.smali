.class public final Lcom/google/android/apps/nexuslauncher/allapps/d;
.super Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/allapps/a;

.field public final b:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/a;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/a;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/d;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->a:Lcom/google/android/apps/nexuslauncher/allapps/a;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/d;)V
    .locals 14

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logging/KeyboardStateManager;->getImeShownHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/logging/StatsLogManager;->impressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v5

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-lez v3, :cond_6

    new-instance v6, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v6}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v6}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v6

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v7

    sub-int/2addr v2, v3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->entryStateForLogging:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ALL_APPS:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->ALLAPPS:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->SEARCHBOX_WIDGET:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    :goto_0
    const/4 v3, 0x0

    move v8, v3

    :goto_1
    move-object v9, v4

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_6

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/E0;

    move-result-object v10

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-nez v10, :cond_1

    goto/16 :goto_5

    :cond_1
    instance-of v11, v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v11, :cond_5

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, v10, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    if-le v10, v2, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    check-cast v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v9, v9, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v11

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x40000

    if-ne v11, v13, :cond_3

    const-string v13, "empty_divider"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "section_header"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "text_header_row"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/android/launcher3/allapps/AllAppsStore;->lookUpForUid(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v12

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v13, "data_donated_source"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->c(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v13

    invoke-interface {v13, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withState(Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v13

    invoke-interface {v13, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v13

    invoke-interface {v13, v11}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withResultType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withAboveKeyboard(Z)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v10

    invoke-interface {v10, v12}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withUid(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withResultSource(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    invoke-interface {v9, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_5
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/nexuslauncher/allapps/d;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/b;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/d;Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->addOnLayoutCompletedListener(Lcom/google/android/apps/nexuslauncher/allapps/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/k;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/k;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public final inflateSearchBar()Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d014a

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0060

    goto :goto_0

    :cond_1
    const v0, 0x7f0d00eb

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final isSearchBarFloating()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAnimateToSearchStateCompleted()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->c()V

    return-void
.end method

.method public final onDestroySearchBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const v1, 0x7f0a0178

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->d0:Landroid/view/View;

    return-void
.end method

.method public final onInitializeRecyclerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SCROLL_TOP_TO_RESET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->a:Lcom/google/android/apps/nexuslauncher/allapps/a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/q0;)V

    :cond_1
    return-void
.end method

.method public final onInitializeSearchBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/c;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/c;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0178

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    const v2, 0x7f08024c

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->d0:Landroid/view/View;

    return-void
.end method

.method public final onSearchResultsChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->c()V

    return-void
.end method
