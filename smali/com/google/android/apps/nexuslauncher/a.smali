.class public final Lcom/google/android/apps/nexuslauncher/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 2

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "com.android.launcher3.action.SHOW_HYBRID_HOTSEAT_EDU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->showEdu()V

    goto :goto_0

    :cond_1
    const-string v0, "com.android.launcher3.action.SHOW_ALLAPPS_SEARCH_EDU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/u1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/u1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_0
    return p2
.end method
