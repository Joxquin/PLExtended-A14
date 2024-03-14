.class public final Lcom/google/android/apps/nexuslauncher/allapps/f;
.super Lcom/google/android/apps/nexuslauncher/allapps/P;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/android/launcher3/LauncherState;Z)Landroid/view/animation/Interpolator;
    .locals 0

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/P;->a(Lcom/android/launcher3/LauncherState;Z)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final c(Lcom/android/launcher3/LauncherState;)Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v3, v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/U;->Q(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->forceBottomSheetVisible(Z)V

    return-void
.end method

.method public final f(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/android/launcher3/LauncherState;ZZZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
