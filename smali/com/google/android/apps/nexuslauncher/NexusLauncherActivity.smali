.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
.super Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/apps/nexuslauncher/m;


# static fields
.field public static final synthetic n:I


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/NexusLauncher;

.field public final e:LK2/s;

.field public final f:LW1/j;

.field public g:Lcom/google/android/apps/nexuslauncher/allapps/U;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Lb2/h;

.field public k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

.field public l:Lcom/google/android/apps/nexuslauncher/allapps/C;

.field public m:Lcom/google/android/apps/nexuslauncher/logging/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;-><init>()V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/NexusLauncher;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/NexusLauncher;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncher;

    new-instance v0, LK2/s;

    invoke-direct {v0}, LK2/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->e:LK2/s;

    new-instance v0, LW1/j;

    invoke-direct {v0}, LW1/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->f:LW1/j;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p0

    const v0, 0x7f0d0124

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    return-void
.end method


# virtual methods
.method public final bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->N()V

    return-void
.end method

.method public final bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 8

    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    const/16 v2, -0xc9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/google/android/apps/nexuslauncher/e;

    invoke-direct {v2, v3}, Lcom/google/android/apps/nexuslauncher/e;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->e:LK2/s;

    sget-boolean v4, LK2/s;->g:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " onTargetsAvailable called. Callers = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BcSmartspaceDataPlugin"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    targets.size() = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    targets = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, v2, LK2/s;->e:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, v2, LK2/s;->d:Ljava/util/Set;

    new-instance v4, LK2/r;

    invoke-direct {v4, v2}, LK2/r;-><init>(LK2/s;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v2, -0x72

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/google/android/apps/nexuslauncher/e;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/google/android/apps/nexuslauncher/e;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->h:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    :goto_1
    const/16 p1, -0x66

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v4, p1, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p1, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    const/16 p1, -0xca

    if-ne v0, p1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LT1/a;

    :goto_3
    invoke-virtual {p1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->j(LT1/a;)V

    :cond_7
    const/16 p1, -0xcb

    if-ne v0, p1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/e;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->i:Ljava/util/List;

    :cond_8
    return-void
.end method

.method public final buildAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->f:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/h;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public final c(Lcom/google/android/apps/nexuslauncher/p;)V
    .locals 0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lq1/b;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onPluginDisconnected()V

    :cond_0
    return-void
.end method

.method public final collectStateHandlers(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->collectStateHandlers(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/P;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/P;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/LauncherActivityInterface;->allowAllAppsFromOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/f;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/f;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final createStartupLatencyLogger(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/c;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/logging/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-object v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "NexusLauncher"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "OneSearch:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "\tshouldShowSuggest="

    invoke-static {p4, v1}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tSearchRequestTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tmEnableOneSearch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    const-string v3, "\tmUseFallbackAppSearch="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->c:Z

    const-string v3, "\tmShowThreeDotMenuInQsb="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->f:Z

    const-string v3, "\tmLaunchOnDefaultBrowser="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    const-string v3, "\tmUseAppSearchForWeb="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    const-string v3, "\tmEnableQuickSearch="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->h:Z

    const-string v3, "\tmShowSearchEducardQsb="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->i:Z

    const-string v3, "\tmEnableImeLatencyLogger="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->j:Z

    const-string v3, "\tmEnableKeyboardSync="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    const-string v3, "\tmEnableRichAnswer="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->l:Z

    const-string v3, "\tmEnableQuickLaunchV2="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    const-string v3, "\tmEnableQuickLaunchV3Qsb="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->n:Z

    const-string v3, "\tmEnableQuickLaunchV3AA="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->o:Z

    const-string v3, "\tmGboardUpdateEnterKey="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->p:Z

    const-string v3, "\tmEnableImpressionLogging="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->q:Z

    const-string v3, "\tmEnableHideGboardHeaderStatic="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->r:Z

    const-string v3, "\tmUninstalledAppsQueryLenLowerBound="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->s:I

    const-string v3, "\tmUninstalledAppsQueryLenUpperBound="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    const-string v3, "\tmUninstalledAppsCount="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->u:I

    const-string v3, "\tmIsTrampolineActivityEnabled="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->n:Z

    const-string v3, "\tmIsOpenSrpInBrowserSupported="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->p:Z

    const-string v3, "\tmIsZeroStateDeviceResultsEnabled="

    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-boolean p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->r:Z

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "LauncherSmartspace:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    invoke-static {p1, v0}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    if-eqz p2, :cond_1

    const-string v0, "\tmUpdatesPaused="

    invoke-static {p4, v0}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->p:Z

    const-string v2, "\tmIsAodEnabled="

    invoke-static {v0, v1, p3, p4, v2}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g:Z

    const-string v2, "\tmLastReceivedTargetIds="

    invoke-static {v0, v1, p3, p4, v2}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmAnimateSmartspaceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->m:Z

    const-string v2, "\tmScrollState="

    invoke-static {v0, v1, p3, p4, v2}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->n:I

    const-string v2, "\tmCardPosition="

    invoke-static {v0, v1, p3, p4, v2}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, LK2/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LK2/u;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmPendingTargetIds="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->j:Lb2/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tRingAppearAnimation\t"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "prefix"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb2/h;->f:Lcom/android/launcher3/util/EventLogArray;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/util/EventLogArray;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getAllAppsEntryEvent()Ljava/util/Optional;
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->B:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->C:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    :goto_1
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getAllAppsExitEvent()Ljava/util/Optional;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getAllAppsExitEvent()Ljava/util/Optional;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getDefaultOverlay()Lq1/d;
    .locals 3

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lq1/d;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->r:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LU1/c;

    invoke-direct {v0, p0}, LU1/c;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERLAY_CONNECTION_OPTIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_minus_one"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lq1/d;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lcom/google/android/apps/nexuslauncher/j;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/nexuslauncher/j;-><init>(Lcom/android/launcher3/Launcher;Lq1/a;)V

    return-object v0
.end method

.method public getOptionsPopup()Lcom/android/launcher3/popup/ArrowPopup;
    .locals 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    instance-of v1, v0, LO1/k;

    if-eqz v1, :cond_0

    check-cast v0, LO1/k;

    invoke-virtual {v0}, LO1/k;->getOptionsPopup()Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getOptionsPopup()Lcom/android/launcher3/popup/ArrowPopup;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchConfig()Lcom/android/launcher3/allapps/BaseSearchConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/logging/b;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/logging/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/logging/b;-><init>(Lcom/google/android/apps/nexuslauncher/logging/a;Lcom/android/launcher3/logging/KeyboardStateManager;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->m:Lcom/google/android/apps/nexuslauncher/logging/b;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/C;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/C;-><init>(Lcom/google/android/apps/nexuslauncher/logging/b;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->l:Lcom/google/android/apps/nexuslauncher/allapps/C;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->e:LK2/s;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/d;

    invoke-direct {v1, p1}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;)V

    iput-object v1, v0, LK2/s;->f:Ln1/d;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/u;->a(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_0
    return-void
.end method

.method public final onDeferredResumed()V
    .locals 7

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onDeferredResumed()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->l:Lcom/google/android/apps/nexuslauncher/allapps/C;

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v0

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->L:Landroid/app/search/SearchTargetEvent;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iput-wide v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    :cond_2
    iput-wide v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/x0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/X;

    invoke-direct {v3, v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchTransitionController()Lcom/android/launcher3/allapps/SearchTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/SearchTransitionController;->setSkipAnimationWithinAllApps()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/U;->P:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->l:Lcom/google/android/apps/nexuslauncher/allapps/C;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->j:Lb2/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, v1, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, LK2/e;->a:Ln1/c;

    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->c(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_1
    return-void
.end method

.method public final onIdpChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onHandleConfigurationChanged()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iget v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->refreshResults()V

    :goto_1
    return-void
.end method

.method public final onOverlayVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->j:Lb2/h;

    invoke-virtual {p0}, Lb2/h;->a()V

    return-void
.end method

.method public final onPageEndTransition()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->j:Lb2/h;

    invoke-virtual {p0}, Lb2/h;->a()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onPause()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "nexus.launcher.configuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const v1, -0x20004201

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const-string v0, "nexus.launcher.user_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U;->P:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "nexus.launcher.search_target.list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->G:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "LauncherSSManager"

    const-string v3, "Failed to calculate restore list size"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v1, "nexus.launcher.configuration"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nexus.launcher.user_input"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERLAY_CONNECTION_OPTIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "pref_enable_minus_one"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lq1/b;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onPluginDisconnected()V

    :cond_0
    return-void
.end method

.method public final onStateBack()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStateBack()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStop()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/k0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/google/android/apps/nexuslauncher/allapps/k0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/l0;

    invoke-direct {v2, v0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/l0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/A;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->k:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J:Z

    if-eqz v1, :cond_0

    iput-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J:Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public openWidgetEducationInPixelTips(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://g.co/pixeltips/tips_widget"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.google.android.apps.tips"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13025a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/high16 p1, 0x10000

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :goto_0
    return-void
.end method

.method public final pauseExpensiveViewUpdates()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->pauseExpensiveViewUpdates()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->p:Z

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->w(Z)V

    return-void
.end method

.method public final resumeExpensiveViewUpdates()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->resumeExpensiveViewUpdates()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->p:Z

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->w(Z)V

    return-void
.end method

.method public final setupViews()V
    .locals 4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/U;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->setupViews()V

    const v0, 0x7f0a02d2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->k:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/f;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/f;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, LK2/e;->a:Ln1/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->f:LW1/j;

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e:Ln1/b;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "value"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v2, LK2/C;->r:Ln1/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->e:LK2/s;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e(Ln1/f;)V

    new-instance v1, Lb2/h;

    invoke-direct {v1, p0, v0}, Lb2/h;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->j:Lb2/h;

    return-void
.end method

.method public final showDefaultOptions(FF)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, LO1/l;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1}, LO1/l;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getPopupTarget(FF)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0}, LO1/l;->a()V

    iget-object p1, v0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, v0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/OptionsPopupView;->setTargetRect(Landroid/graphics/RectF;)V

    iget-object p0, v0, LO1/l;->g:LO1/h;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->showDefaultOptions(FF)V

    :goto_0
    return-void
.end method

.method public final w(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->o:LP1/f;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, LP1/f;->m:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LP1/f;->d()V

    :cond_1
    :goto_0
    return-void
.end method
