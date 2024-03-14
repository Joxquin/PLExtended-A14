.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/h1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;Ljava/util/List;Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->c:Lcom/google/android/apps/nexuslauncher/allapps/h1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q1;->c:Lcom/google/android/apps/nexuslauncher/allapps/h1;

    sget v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->o:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/Z;->notifyItemRemoved(I)V

    goto/16 :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    const v4, 0x7f0a015f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 p0, 0x1

    :cond_2
    move v9, p0

    iget-object p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K()Z

    move-result v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZ)V

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->w(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_3
    iget-object p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/R1;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/R1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method
