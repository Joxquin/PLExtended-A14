.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/S1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/S1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/S1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast v4, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    const-string v6, "qs_tile_container"

    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, v4, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/Z;->notifyItemRemoved(I)V

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/X1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/X1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v1

    if-eq v1, v4, :cond_5

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTarget;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "quick_launch"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/Z;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/Z;->notifyItemRemoved(I)V

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method
