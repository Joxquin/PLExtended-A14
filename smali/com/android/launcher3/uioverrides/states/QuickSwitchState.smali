.class public final Lcom/android/launcher3/uioverrides/states/QuickSwitchState;
.super Lcom/android/launcher3/uioverrides/states/BackgroundAppState;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    mul-float/2addr p0, p1

    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, p1, p0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public final getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 0

    sget-boolean p0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->areFreeformTasksVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz p0, :cond_1

    const p0, 0x7f060339

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7f04044e

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final isTaskbarAlignedWithHotseat()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
