.class final Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

.field final synthetic val$callback:Lcom/android/launcher3/search/SearchCallback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/android/launcher3/search/SearchCallback;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 7

    iget-object p1, p3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {v0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5, v0}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object v4, v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->a(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    new-instance p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->b(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/android/launcher3/search/SearchCallback;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    new-instance v0, LE0/a;

    invoke-direct {v0, p2, p0, p3}, LE0/a;-><init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
