.class public final Lcom/google/android/apps/nexuslauncher/allapps/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/apps/nexuslauncher/m;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Landroid/app/search/SearchUiManager;

.field public final g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

.field public final i:Ljava/util/Map;

.field public j:Landroid/app/search/SearchSession;

.field public k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->i:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    const-class v1, Landroid/app/search/SearchUiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/search/SearchUiManager;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->f:Landroid/app/search/SearchUiManager;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->b(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/z2;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

    invoke-virtual {v0, v1}, Landroid/app/search/SearchSession;->unregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSession$Callback;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    invoke-virtual {v0}, Landroid/app/search/SearchSession;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    const-string v2, "launcher.gridSize"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v3, "perf_searchFilterByAllowList"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "allowlist_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    const-string v2, "one_search_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "launcher.maxInlineIcons"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v3, "pref_search_show_hidden_targets"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "showhiddentargets_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "system_clock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->s:I

    const-string v3, "gms_play_query_lower_bound"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    const-string v3, "gms_play_query_upper_bound"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_UNINSTALLED_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    const-string v4, "gms_play_feature_supported"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/google/android/apps/nexuslauncher/c;->j:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    const-string v4, "qs_tiles_asi_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/t1;->r:Z

    const-string v4, "recent_search_block_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "version_code"

    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->f:Landroid/app/search/SearchUiManager;

    new-instance v4, Landroid/app/search/SearchContext;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->i:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->i:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v5

    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->i:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v10, v10, v2

    iget-object v11, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    iget-object v12, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    invoke-interface {v11, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/high16 v10, 0x20000

    if-ne v9, v10, :cond_5

    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->h:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v10, :cond_4

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_4

    :cond_4
    move v10, v5

    :goto_4
    and-int/2addr v8, v10

    :cond_5
    const/16 v10, 0x100

    if-ne v9, v10, :cond_6

    and-int/2addr v8, v1

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    move v9, v5

    :goto_5
    or-int/2addr v7, v9

    goto :goto_3

    :cond_8
    or-int/2addr v2, v7

    if-eqz v1, :cond_9

    or-int/lit16 v2, v2, 0x200

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    const-string v6, "ALL_APPS_SEARCH_CORPUS_PREFERENCE"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    const/16 v1, 0xc8

    invoke-direct {v4, v2, v1, v0}, Landroid/app/search/SearchContext;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/app/search/SearchUiManager;->createSearchSession(Landroid/app/search/SearchContext;)Landroid/app/search/SearchSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/y2;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g3;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->k:Lcom/google/android/apps/nexuslauncher/allapps/y2;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v1, v0}, Landroid/app/search/SearchSession;->registerEmptyQueryResultUpdateCallback(Ljava/util/concurrent/Executor;Landroid/app/search/SearchSession$Callback;)V

    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .locals 2

    const/16 v0, 0x40a

    const v1, 0x7f050010

    filled-new-array {v0, v1}, [I

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    const-string v1, "pref_allowShortcutResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x50

    const v1, 0x7f05000f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "pref_allowSettingsResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2000

    const v1, 0x7f050011

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "pref_allowPixelTipsResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    const v1, 0x7f05000d

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "pref_allowPeopleResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x20000

    const v1, 0x7f050012

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "pref_allowWebResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x100

    const v1, 0x7f05000e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "pref_allowPlaySearchResult"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/apps/nexuslauncher/p;)V
    .locals 2

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/m;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V
    .locals 8

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/w2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/w2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;Lcom/google/android/apps/nexuslauncher/allapps/m;Landroid/app/search/Query;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSearchSession()Landroid/app/search/SearchSession;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->j:Landroid/app/search/SearchSession;

    return-object p0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->i:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "perf_searchFilterByAllowList"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_search_show_hidden_targets"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowShortcutResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowPeopleResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowSettingsResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowPixelTipsResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowWebResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowPlaySearchResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_allowDeviceResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
