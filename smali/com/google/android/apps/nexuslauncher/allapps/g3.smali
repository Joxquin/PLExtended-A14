.class public final Lcom/google/android/apps/nexuslauncher/allapps/g3;
.super Lcom/google/android/apps/nexuslauncher/allapps/p;
.source "SourceFile"

# interfaces
.implements Landroid/app/search/SearchSession$Callback;


# static fields
.field public static final l:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public e:[B

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

.field public i:Ljava/util/List;

.field public j:I

.field public k:I

.field mWebInsertionIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->l:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/p;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->e:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget p1, p3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->e:I

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->j:I

    iget p1, p3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->d:I

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->k:I

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 p2, 0x2000000

    invoke-direct {p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->h:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->j(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->j(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    sget-object v2, Lcom/google/android/apps/nexuslauncher/c;->a:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_0

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v1, v2, :cond_1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->d(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/search/SearchTarget;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4, v7}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a(Landroid/app/search/Query;Ljava/util/List;)V

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v0, v4, v2}, Lcom/google/android/apps/nexuslauncher/allapps/k;->g(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTarget;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "zero_state_cache"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->e:[B

    :cond_3
    sget-object v4, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v1, v4, :cond_4

    iget v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->j:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->k:I

    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v9, v5, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "pref_zero_state_query_ready"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_e

    move v0, v5

    :goto_2
    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_c

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/search/SearchTarget;

    invoke-static {v9}, Lz0/f;->e(Landroid/app/search/SearchTarget;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v10, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v10}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v10

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "class"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v10, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    move-object v10, v6

    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "mark_label"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v9

    const/high16 v10, 0x80000

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v10, v9, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v10, v3, :cond_7

    iget-boolean v11, v9, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y:Z

    if-nez v11, :cond_8

    :cond_7
    if-ne v10, v4, :cond_9

    iget-boolean v9, v9, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z:Z

    if-eqz v9, :cond_9

    :cond_8
    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    move v9, v5

    :goto_4
    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-static {v0, v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    if-ne v1, v3, :cond_a

    iget v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    if-le v9, v7, :cond_a

    add-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    :cond_a
    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_b

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/search/SearchTarget;

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "placeholder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v0

    iput v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-static {v0, v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    if-ne v0, v7, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    sget-object v1, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/k;->g(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v0, v1, v8}, Lcom/google/android/apps/nexuslauncher/allapps/k;->g(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/g3;->l:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-le v1, v7, :cond_f

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->mWebInsertionIdx:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    if-lez v2, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->q:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->h:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/e3;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/e3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_12
    return-void
.end method

.method public getAllAppsWebCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->k:I

    return p0
.end method

.method public getQsbWebCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->j:I

    return p0
.end method

.method public getRecentTargets()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->i:Ljava/util/List;

    return-object p0
.end method

.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 5

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->j(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchTarget;

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "zero_state_qsb_web_suggest_count"

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->j:I

    const-string v1, "zero_state_all_apps_web_suggest_count"

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->k:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->a:Landroid/content/Context;

    const-string v2, "zero_state_query_ready"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pref_zero_state_query_ready"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const-string v1, "enable_launch_animations"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->I:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
