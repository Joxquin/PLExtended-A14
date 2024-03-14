.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->e:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->e:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y0;->f:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v10, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->e:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    sget-object v7, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->j:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTarget;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v6

    if-ne v6, v5, :cond_0

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z0;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/Z0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    const/4 v12, 0x1

    sub-long v8, v2, v13

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    goto/16 :goto_2

    :cond_1
    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->g:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/google/android/apps/nexuslauncher/allapps/w;->a:Landroid/os/UserHandle;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;

    invoke-direct {v6}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v6}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v8

    if-eqz v8, :cond_2

    move p0, v5

    goto :goto_0

    :cond_3
    move p0, v9

    :goto_0
    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->INJECT_FALLBACK_APP_CORPUS_RESULTS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/search/SearchTarget;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object p0

    invoke-virtual {v0, p0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c(Landroid/app/search/Query;Z)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z0;

    invoke-direct {v4, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/Z0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z0;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/Z0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    const/4 v12, 0x2

    sub-long v8, v2, v13

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z0;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/Z0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->e:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->m:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    const/4 v12, 0x3

    sub-long v8, v2, v13

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    :goto_2
    return-void
.end method
