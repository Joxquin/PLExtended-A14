.class public final Lcom/google/android/apps/nexuslauncher/allapps/a1;
.super Lcom/google/android/apps/nexuslauncher/allapps/p;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/launcher3/search/SearchCallback;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

.field public final f:Landroid/os/Handler;

.field public final g:Lcom/android/launcher3/allapps/AllAppsStore;

.field public final h:I

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public l:Z

.field public final m:Ljava/lang/String;

.field mDeviceResultReceived:Z

.field mForTest:Z

.field mIsDeviceResultTimeout:Z

.field mWebResultReceived:Z

.field public final n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/search/SearchCallback;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/y0;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/p;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mForTest:Z

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->a:Lcom/android/launcher3/search/SearchCallback;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->b:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p4, p6, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    new-instance p4, Landroid/os/Handler;

    sget-object p5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p5}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f:Landroid/os/Handler;

    iget-object p4, p6, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p4}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->i:Ljava/util/ArrayList;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->j:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->k:Ljava/util/ArrayList;

    iget p2, p6, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->h:I

    iget-object p2, p6, Lcom/google/android/apps/nexuslauncher/allapps/y0;->H:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g()V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    const-string v0, "ResultToken"

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignoring null or empty web result "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->j(Ljava/lang/String;Ljava/util/List;)V

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mWebResultReceived:Z

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignoring multiple web result calls "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mWebResultReceived:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g()V

    return-void
.end method

.method public final c(Landroid/app/search/Query;Z)Ljava/util/List;
    .locals 13

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/e;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/e;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/e;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mForTest:Z

    const-string v4, "com.google.android.googlequicksearchbox"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v6

    :goto_0
    const/4 v7, 0x4

    if-ge v3, v7, :cond_4

    const-string v7, "test_app_"

    invoke-static {v7, v3}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "data_donated_source"

    const-string v10, "aiai_search_root"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/app/search/SearchTarget$Builder;

    const-string v10, "app_"

    invoke-static {v10, v7}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "icon"

    invoke-direct {v9, v5, v10, v7}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v7, Lcom/google/android/apps/nexuslauncher/allapps/w;->a:Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {v9}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v9}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v6

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->h:I

    if-ge v3, v7, :cond_3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->d(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/search/SearchTarget;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v8

    :cond_4
    if-eqz p2, :cond_7

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mForTest:Z

    const-string p2, "full_screen"

    const-string v3, "icon_row"

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    new-instance p0, Landroid/app/search/SearchTarget$Builder;

    const/16 v1, 0x8

    const-string v2, "test_setting"

    invoke-direct {p0, v1, v3, v2}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {p0, v1}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object p0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APP_SEARCH_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0xc8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    new-instance v3, Landroid/app/search/SearchAction$Builder;

    const-string v4, "Setting"

    invoke-direct {v3, v2, v4}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/search/SearchAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/search/SearchAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/search/SearchAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/w;->a:Landroid/os/UserHandle;

    new-instance p0, Landroid/app/search/SearchTarget$Builder;

    const/16 v7, 0x200

    const-string v8, "Search on Googlecom.google.android.googlequicksearchbox"

    invoke-direct {p0, v7, v3, v8}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.google.android.googlequicksearchbox.GOOGLE_SEARCH"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "query"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {v1, v5, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "should_start_for_result"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/search/SearchAction$Builder;

    const-string v3, "Search on Google"

    invoke-direct {v2, v8, v3}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/app/search/SearchAction$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/search/SearchAction$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/search/SearchAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "group_id"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/w;->a:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object p0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/search/SearchTarget;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "quick_launch"

    invoke-virtual {p0, p2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a(Landroid/app/search/Query;Ljava/util/List;)V

    return-object v0
.end method

.method public final d(Ljava/util/List;JZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_ipc_start"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    sub-long v7, p2, v1

    iget-wide v12, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    sget-object v6, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->C:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    sget-object v9, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->e:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/4 v11, 0x0

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/app/search/Query;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mIsDeviceResultTimeout:Z

    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-nez v2, :cond_1

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->j:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    sget-object v8, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->e:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c(Landroid/app/search/Query;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v14, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v16, v1, v21

    sget-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->m:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    sget-object v18, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->f:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v22}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g()V

    :cond_1
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mIsDeviceResultTimeout:Z

    const-string v5, "ResultToken"

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring device results as it arrived after timeout "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    sget-object v9, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->k:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    iget-wide v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    sub-long v10, v2, v4

    sget-object v12, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->e:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-wide v15, v4

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->d(Ljava/util/List;JZ)V

    return-void

    :cond_0
    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring device results as it arrived after cancelled"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v7, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->j(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-eqz v1, :cond_4

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v6, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->c:Z

    :goto_0
    if-nez v6, :cond_3

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mForTest:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/Y0;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/Y0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g()V

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->d(Ljava/util/List;JZ)V

    :cond_4
    return-void
.end method

.method public final g()V
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    const-string v2, "ResultToken"

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring results as session was cancelled for query "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mIsDeviceResultTimeout:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Still waiting for on device results,  mIsDeviceResultTimeout="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mIsDeviceResultTimeout:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", query="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PEOPLE_TILE_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->b:Landroid/content/Context;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    sget-object v8, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    invoke-direct {v4, v7, v8}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const-string v8, "com.google.android.apps.messaging"

    invoke-virtual {v4, v8, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/google/android/apps/nexuslauncher/allapps/B2;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/allapps/B2;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v8

    const-string v11, ""

    const-string v12, "quick_launch"

    const-string v13, "text_header_row"

    const-string v14, "icon"

    iget-object v15, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->d:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    if-nez v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15}, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a()Z

    move-result v16

    if-eqz v16, :cond_3

    iget v5, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->s:I

    if-lt v8, v5, :cond_3

    iget v5, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    if-gt v8, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    move-object/from16 v29, v2

    move-object/from16 v24, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v7

    move-object/from16 v23, v11

    move-object v4, v12

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move-object v11, v1

    const/4 v1, 0x0

    goto/16 :goto_23

    :cond_4
    iget-object v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v8, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v5, v8, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    iget v8, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->e:I

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v19

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->k:Ljava/util/ArrayList;

    iget v10, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->d:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v9, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->c:Z

    :goto_2
    move-object/from16 v23, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/search/SearchTarget;

    invoke-virtual/range {v17 .. v17}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "proxy_web_item"

    move-object/from16 v25, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v25, v7

    :goto_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v20, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, -0x1

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    move/from16 v22, v7

    const-string v7, "richanswer_placeholder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    move/from16 v28, v3

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "placeholder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-gez v20, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "score_threshold"

    move-object/from16 v29, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v27

    const-string v2, "web_sug_count"

    const/4 v7, -0x1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    move/from16 v26, v0

    move/from16 v17, v3

    move/from16 v20, v17

    goto :goto_5

    :cond_a
    move-object/from16 v29, v2

    invoke-static {v3, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    move/from16 v18, v3

    goto :goto_5

    :cond_b
    move-object/from16 v29, v2

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v22

    move-object/from16 v2, v29

    goto/16 :goto_4

    :cond_d
    move-object/from16 v29, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v0, v18, -0x1

    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    move-result v0

    add-int/lit8 v2, v20, -0x1

    invoke-static {v2, v1}, LN1/a;->b(ILjava/util/List;)Z

    move-result v2

    if-nez v5, :cond_10

    if-eqz v0, :cond_e

    add-int/lit8 v0, v18, -0x3

    goto :goto_6

    :cond_e
    add-int/lit8 v0, v18, -0x2

    :goto_6
    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    if-eqz v2, :cond_f

    add-int/lit8 v0, v20, -0x3

    goto :goto_7

    :cond_f
    add-int/lit8 v0, v20, -0x2

    :goto_7
    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    :cond_10
    if-lez v18, :cond_16

    move/from16 v0, v27

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getScore()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v27, v4

    const-string v4, "Top web score = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", threshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ranker"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v0, v2, v0

    if-gez v0, :cond_14

    add-int/lit8 v0, v20, -0x1

    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v18, v18, -0x1

    :cond_11
    if-nez v5, :cond_13

    if-eqz v0, :cond_12

    add-int/lit8 v0, v20, -0x3

    goto :goto_8

    :cond_12
    add-int/lit8 v0, v20, -0x2

    :goto_8
    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v18, v18, -0x2

    :cond_13
    move/from16 v17, v18

    goto :goto_a

    :cond_14
    add-int/lit8 v0, v18, -0x1

    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    move-result v0

    if-nez v5, :cond_17

    if-eqz v0, :cond_15

    add-int/lit8 v18, v18, -0x3

    goto :goto_9

    :cond_15
    add-int/lit8 v18, v18, -0x2

    :goto_9
    move/from16 v0, v18

    invoke-static {v0, v1}, LN1/a;->b(ILjava/util/List;)Z

    goto :goto_a

    :cond_16
    move-object/from16 v27, v4

    :cond_17
    :goto_a
    if-gez v20, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchTarget;

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    move-object/from16 v2, v23

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v3}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v2

    const-string v2, "empty_divider"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "icon_row"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    move/from16 v17, v3

    goto :goto_d

    :cond_1a
    move/from16 v17, v0

    goto :goto_e

    :cond_1b
    move-object/from16 v18, v2

    :goto_c
    move-object/from16 v2, v18

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    :goto_e
    if-eqz v9, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/lit8 v17, v0, 0x1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move/from16 v0, v17

    sget-object v2, Lz0/g;->a:Landroid/app/search/SearchTarget;

    move-object/from16 v17, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchTarget;

    move-object/from16 v30, v14

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v14

    move-object/from16 v31, v12

    const/16 v12, 0x200

    if-eq v14, v12, :cond_1e

    const/high16 v12, 0x40000

    if-eq v14, v12, :cond_1e

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "com.google.android.googlequicksearchbox"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v30

    move-object/from16 v12, v31

    goto :goto_f

    :cond_20
    move-object/from16 v31, v12

    move-object/from16 v30, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v14, "play_placeholder"

    if-ge v2, v12, :cond_23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/search/SearchTarget;

    invoke-virtual {v12}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v2, -0x1

    invoke-static {v12, v1}, LN1/a;->a(ILjava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_21

    add-int/lit8 v3, v3, 0x1

    :cond_21
    add-int/lit8 v12, v2, -0x2

    invoke-static {v12, v1}, LN1/a;->a(ILjava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_22

    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    if-nez v7, :cond_24

    if-nez v9, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-le v2, v4, :cond_24

    sget-object v2, Lz0/g;->b:Landroid/app/search/SearchTarget;

    move-object/from16 v21, v2

    goto :goto_11

    :cond_24
    move-object/from16 v21, v17

    :goto_11
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, LN1/a;->getWebTargetTotalCount(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_25

    const/4 v9, 0x1

    goto :goto_12

    :cond_25
    const/4 v9, 0x0

    :goto_12
    if-nez v5, :cond_26

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_26

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/search/SearchTarget;

    invoke-static/range {v17 .. v17}, Lz0/f;->c(Landroid/app/search/SearchTarget;)Z

    move-result v12

    if-eqz v12, :cond_26

    move/from16 v12, v28

    move-object/from16 v28, v13

    const/4 v13, -0x1

    if-eq v12, v13, :cond_27

    const/16 v22, 0x1

    goto :goto_13

    :cond_26
    move/from16 v12, v28

    move-object/from16 v28, v13

    :cond_27
    const/16 v22, 0x0

    :goto_13
    if-lez v3, :cond_28

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v4, v3

    if-ne v13, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_14

    :cond_28
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_29

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x1

    goto :goto_15

    :cond_29
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e

    move/from16 v4, v26

    const/4 v13, -0x1

    if-le v4, v13, :cond_2a

    if-nez v3, :cond_2a

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v20, v6

    invoke-static/range {v17 .. v22}, LN1/a;->addWebTargetsAtIndex(ILjava/util/ArrayList;ILjava/util/ArrayList;Landroid/app/search/SearchTarget;Z)V

    goto :goto_16

    :cond_2a
    if-eqz v5, :cond_2b

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v20, v6

    invoke-static/range {v17 .. v22}, LN1/a;->addWebTargetsAtIndex(ILjava/util/ArrayList;ILjava/util/ArrayList;Landroid/app/search/SearchTarget;Z)V

    goto :goto_16

    :cond_2b
    if-eqz v9, :cond_2c

    if-lt v2, v10, :cond_2c

    move/from16 v17, v0

    move-object/from16 v18, v11

    move/from16 v19, v10

    move-object/from16 v20, v6

    invoke-static/range {v17 .. v22}, LN1/a;->addWebTargetsAtIndex(ILjava/util/ArrayList;ILjava/util/ArrayList;Landroid/app/search/SearchTarget;Z)V

    goto :goto_16

    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    sget-object v1, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2d
    invoke-virtual {v11, v0, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_2e
    :goto_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_36

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchTarget;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "is_answer"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_17

    :cond_2f
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_34

    const/4 v1, -0x1

    if-eq v12, v1, :cond_33

    invoke-static {v2}, Lz0/f;->c(Landroid/app/search/SearchTarget;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_1a

    :cond_30
    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_31

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/search/SearchTarget;

    invoke-virtual {v9}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_31

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v11, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v11, v12, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-nez v5, :cond_34

    if-eqz v7, :cond_32

    add-int/lit8 v0, v0, -0x3

    goto :goto_19

    :cond_32
    add-int/lit8 v0, v0, -0x2

    :goto_19
    invoke-static {v0, v11}, LN1/a;->b(ILjava/util/List;)Z

    goto :goto_1b

    :cond_33
    :goto_1a
    const/4 v1, 0x1

    add-int/2addr v0, v1

    sget-object v1, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_34
    :goto_1b
    if-nez v5, :cond_36

    const/4 v0, -0x1

    if-eq v12, v0, :cond_36

    invoke-static {v2}, Lz0/f;->c(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-nez v0, :cond_36

    if-eqz v7, :cond_35

    add-int/lit8 v0, v12, -0x3

    goto :goto_1c

    :cond_35
    add-int/lit8 v0, v12, -0x2

    :goto_1c
    invoke-static {v0, v11}, LN1/a;->b(ILjava/util/List;)Z

    :cond_36
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3a

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v3, v11}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->k(ILjava/util/List;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_38

    add-int/lit8 v0, v3, -0x1

    invoke-static {v0, v11}, LN1/a;->a(ILjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v3, v3, -0x2

    invoke-static {v3, v11}, LN1/a;->a(ILjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    :cond_38
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v15, Lcom/google/android/apps/nexuslauncher/allapps/s1;->u:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    add-int/2addr v3, v0

    sget-object v0, Lz0/g;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v11, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_39
    const/4 v1, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3a
    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    move v3, v1

    :goto_20
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3e

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_3e

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    const/high16 v2, 0x80000

    if-ne v0, v2, :cond_3b

    goto :goto_22

    :cond_3b
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    const v2, 0x8e1008

    and-int/2addr v0, v2

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_21

    :cond_3c
    move v0, v1

    :goto_21
    if-eqz v0, :cond_3d

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lz0/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3d

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v4, v31

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_23

    :cond_3d
    move-object/from16 v4, v31

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v31, v4

    goto :goto_20

    :cond_3e
    :goto_22
    move-object/from16 v4, v31

    :goto_23
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v()Z

    move-result v0

    if-eqz v0, :cond_43

    move v3, v1

    const/4 v6, 0x0

    :goto_24
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_43

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3f

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v30

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object/from16 v7, v28

    goto :goto_25

    :cond_3f
    move-object/from16 v5, v30

    :cond_40
    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v28

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    if-le v3, v2, :cond_41

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTarget;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "Removed duplicate app text header"

    move-object/from16 v8, v29

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_26

    :cond_41
    move-object/from16 v8, v29

    goto :goto_26

    :cond_42
    :goto_25
    move-object/from16 v8, v29

    const/4 v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v5

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    goto :goto_24

    :cond_43
    move-object/from16 v8, v29

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, v25

    move-object/from16 v3, v27

    invoke-static {v0, v3, v11}, Lcom/google/android/apps/nexuslauncher/allapps/k;->g(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v4, Lcom/google/android/apps/nexuslauncher/c;->q:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_44

    new-instance v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v5, 0x2000000

    invoke-direct {v4, v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v4

    if-eqz v4, :cond_46

    move-object/from16 v4, p0

    iget-boolean v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mWebResultReceived:Z

    if-eqz v5, :cond_45

    iget-boolean v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-nez v5, :cond_47

    iget-boolean v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mIsDeviceResultTimeout:Z

    if-eqz v5, :cond_45

    goto :goto_27

    :cond_45
    move v5, v2

    goto :goto_28

    :cond_46
    move-object/from16 v4, p0

    :cond_47
    :goto_27
    const/4 v5, 0x2

    :goto_28
    iget-object v2, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->a:Lcom/android/launcher3/search/SearchCallback;

    move-object/from16 v6, v24

    invoke-interface {v2, v6, v0, v5}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V

    iget-object v2, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->COLLECT_SEARCH_HISTORY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "======== start results for query %s"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v1

    :goto_29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_4e

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/nexuslauncher/allapps/w1;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layoutType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resultType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-nez v3, :cond_48

    move-object/from16 v3, v23

    goto :goto_2a

    :cond_48
    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2a

    :cond_49
    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v3

    if-nez v3, :cond_4a

    move-object/from16 v3, v23

    goto :goto_2c

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " searchAction="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    :cond_4b
    move-object/from16 v4, v23

    :goto_2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSliceUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4c

    move-object/from16 v3, v23

    goto :goto_2d

    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " sliceUri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSliceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-nez v3, :cond_4d

    move-object/from16 v0, v23

    goto :goto_2e

    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " widget="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_29

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======== end of results for query"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-void
.end method
