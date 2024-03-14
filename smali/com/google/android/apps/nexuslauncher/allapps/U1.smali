.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/U1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/U1;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/U1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->D:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->v:Landroid/app/search/SearchTarget;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->m(Lcom/google/android/apps/nexuslauncher/allapps/y0;ILandroid/view/View;Landroid/app/search/SearchTarget;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->D:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;->handleClick(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "SearchResultQSTile"

    const-string p1, "Failed to call action.perform"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/U1;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->r:Landroid/app/StatusBarManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->P:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
