.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultPeopleTile;
.super Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultPeopleTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultPeopleTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 6

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->l()V

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.people.widget.PeopleSpaceWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/n0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/n0;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Y;

    invoke-direct {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/Y;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z;

    invoke-direct {v4, v2}, Lcom/google/android/apps/nexuslauncher/allapps/Z;-><init>(Lcom/android/launcher3/util/ComponentKey;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/Y;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/Y;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v2, :cond_2

    move-object p1, v3

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/G2;

    invoke-direct {v3, v2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/G2;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/content/pm/ShortcutInfo;)V

    iget p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    iput p1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/H2;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/m0;

    invoke-direct {v5, v0, v3, p1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/m0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->k(Lcom/google/android/apps/nexuslauncher/allapps/H2;)V

    return-void
.end method
