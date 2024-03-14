.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;->handleLongClick(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "SearchResultQSTile"

    const-string p1, "Failed to call action.perform"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
