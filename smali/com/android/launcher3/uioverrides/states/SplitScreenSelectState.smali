.class public final Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getSplitSelectTranslation(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)F
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectTranslation()F

    move-result p0

    return p0
.end method

.method public final getTransitionDuration(Landroid/content/Context;Z)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    const/16 p0, 0x362

    return p0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p0, :cond_1

    const/16 p0, 0x205

    return p0

    :cond_1
    const/16 p0, 0x1f4

    return p0
.end method

.method public final getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method
