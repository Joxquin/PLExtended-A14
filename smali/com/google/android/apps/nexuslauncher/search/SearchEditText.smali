.class public Lcom/google/android/apps/nexuslauncher/search/SearchEditText;
.super Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final y:Z


# instance fields
.field public e:Lcom/android/launcher3/search/SearchAlgorithm;

.field public f:Lcom/android/launcher3/search/SearchCallback;

.field public g:LY1/y;

.field public h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Landroid/view/inputmethod/SurroundingText;

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:LY1/g;

.field public final p:Lcom/google/android/apps/nexuslauncher/allapps/X0;

.field public q:Landroid/view/inputmethod/InputMethodManager;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Z

.field public v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final x:Lcom/google/android/apps/nexuslauncher/allapps/s1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 5
    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    .line 6
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->x:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    .line 7
    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/X0;

    invoke-direct {p3, p2}, Lcom/google/android/apps/nexuslauncher/allapps/X0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/s1;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->p:Lcom/google/android/apps/nexuslauncher/allapps/X0;

    .line 8
    iget-boolean p3, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->h:Z

    .line 9
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->l:Z

    .line 10
    iget-boolean v0, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    .line 11
    iget-boolean v1, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->p:Z

    .line 12
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getImeOptions()I

    move-result p3

    or-int/lit8 p3, p3, 0x3

    .line 14
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 15
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    .line 17
    :goto_0
    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_HIDE_HEADER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "need_conversion,com.google.android.inputmethod.latin.canary.hideHeaderOnInitialState,com.google.android.inputmethod.latin.hideHeaderOnInitialState"

    .line 18
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p3, "need_conversion"

    .line 19
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :goto_1
    const-string p3, "com.google.android.inputmethod.latin.appSupportsSmartComposeAndDel,com.google.android.inputmethod.latin.canary.appSupportsSmartComposeAndDel,com.google.android.inputmethod.latin.dev.appSupportsSmartComposeAndDel"

    .line 20
    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 21
    iget-boolean p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->r:Z

    if-eqz p2, :cond_2

    const p2, 0x80001

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 23
    :cond_2
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    new-instance p1, LY1/g;

    new-instance p2, LY1/t;

    invoke-direct {p2, p0, v2}, LY1/t;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V

    new-instance p3, LY1/t;

    invoke-direct {p3, p0, v1}, LY1/t;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V

    new-instance v0, LY1/t;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY1/t;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-direct {p1, p2, p3, v0, v1}, LY1/g;-><init>(LY1/t;LY1/t;LY1/t;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    .line 25
    invoke-virtual {p0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 26
    new-instance p1, LY1/u;

    invoke-direct {p1}, LY1/u;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 28
    new-instance p1, LY1/u;

    invoke-direct {p1}, LY1/u;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object v0, v0, LY1/g;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz v1, :cond_1

    const-string v1, "SearchEditText"

    const-string v2, "Call setText in onAppsUpdated for QL v2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannedString;

    invoke-virtual {v1}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-boolean v3, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->p:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->i:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    :goto_1
    const-string p1, "Hide_Accept"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    return-void
.end method

.method public final clearSearchResult()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    const/4 v0, 0x0

    iput-object v0, p0, LY1/g;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {p0}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->extractTextConversions(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v1, p1, v0, p0}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 4

    const-string v0, "Hide_Dismiss"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, LY1/g;->a:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "qs_tile"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/Z;->notifyItemRangeChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g()V

    return-void
.end method

.method public final g()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->n:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v3

    const/high16 v4, 0x20000

    if-eq v3, v4, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, LY1/s;

    invoke-direct {v3, p0}, LY1/s;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_8

    const/4 v2, 0x3

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    :goto_5
    const-string v3, "IME_ACTION"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, p0, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    :cond_a
    return-void
.end method

.method public getIsImeIconSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    return p0
.end method

.method public getPrefixSuggestedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getQuickLaunchInputController()LY1/g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    return-object p0
.end method

.method public getTypeAheadSearchInputView()Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {v0}, LY1/y;->beginBatchEdit()Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, LY1/y;->setComposingRegion(II)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, LY1/y;->setComposingText(Ljava/lang/CharSequence;I)Z

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, LY1/y;->setSelection(II)Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {p0}, LY1/y;->endBatchEdit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final hideKeyboard()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-boolean v1, v1, LY1/g;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final isSuggestionsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->l:Z

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-boolean p0, p0, LY1/g;->a:Z

    return p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x274f1d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0xf005aa5

    if-eq v0, v1, :cond_1

    const v1, 0x7adfc08d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Hide_Dismiss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "Hide_Accept"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "Show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "smart_compose_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "com.google.android.apps.nexuslauncher.SMART_COMPOSE_ACTION"

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    new-instance v1, LY1/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LY1/r;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G:Z

    new-instance v0, LY1/y;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LY1/y;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;Landroid/view/inputmethod/InputConnection;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    new-instance v1, LY1/r;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LY1/r;-><init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    if-eqz v0, :cond_2

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1, v2}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k:Landroid/view/inputmethod/SurroundingText;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {v0, v3, v3, v2}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k:Landroid/view/inputmethod/SurroundingText;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    invoke-virtual {v0, v3, v3, v2}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k:Landroid/view/inputmethod/SurroundingText;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual/range {v4 .. v9}, LY1/g;->d(Landroid/view/inputmethod/SurroundingText;Landroid/view/inputmethod/SurroundingText;Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ExtendedEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g:LY1/y;

    if-eqz v0, :cond_2

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1, v2}, Landroid/view/inputmethod/InputConnectionWrapper;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k:Landroid/view/inputmethod/SurroundingText;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual/range {v3 .. v8}, LY1/g;->d(Landroid/view/inputmethod/SurroundingText;Landroid/view/inputmethod/SurroundingText;Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->b(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "com.google.android.inputmethod.latin.SMART_COMPOSE_SUPPORT_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.inputmethod.latin.canary.SMART_COMPOSE_SUPPORT_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.inputmethod.latin.dev.SMART_COMPOSE_SUPPORT_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G:Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IME_ACTION"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "smart_compose_status"

    const-string v3, "Show"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "com.google.android.apps.nexuslauncher.SMART_COMPOSE_ACTION"

    invoke-virtual {v2, p0, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v0, "com.google.android.inputmethod.latin.DEL_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.google.android.inputmethod.latin.canary.DEL_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.google.android.inputmethod.latin.dev.DEL_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    :cond_4
    const-string v0, "com.google.android.inputmethod.latin.SWIPE_ON_SPACE_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.google.android.inputmethod.latin.canary.SWIPE_ON_SPACE_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.google.android.inputmethod.latin.dev.SWIPE_ON_SPACE_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->b(Z)V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    const v1, 0x1020022

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    const/4 p1, 0x0

    iput-boolean p1, p0, LY1/g;->a:Z

    :cond_1
    :goto_0
    return v0
.end method

.method public final restoreToFocusedState()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->s:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final saveFocusedStateAndUpdateToUnfocusedState()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->t:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object v0, v0, LY1/g;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->r:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->r:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->t:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setMockAppsView(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method

.method public setMockInputMethodManager(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->q:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public setMockObjectsFromTest(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method

.method public setSavedOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    return-void
.end method

.method public final viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->m:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object p1, p1, LY1/g;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1, p0}, LY1/g;->c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    const-string p1, "Hide_Dismiss"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->k(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
