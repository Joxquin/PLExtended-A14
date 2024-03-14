.class public final Lcom/google/android/apps/nexuslauncher/allapps/U;
.super Lcom/google/android/apps/nexuslauncher/allapps/y0;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# instance fields
.field public P:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/T;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/T;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/U;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return-void
.end method

.method public final Q(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-nez v0, :cond_0

    const-string p0, "LauncherSSManager"

    const-string p1, "Unable to start universal search. ENABLE_ONE_SEARCH flag disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B()V

    if-eqz p3, :cond_1

    new-instance p2, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {p2}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object p3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p3, p2}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o()V

    :cond_2
    return-void
.end method

.method public final onBackKey()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->onStateBack()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/S;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/S;-><init>(Lcom/android/launcher3/LauncherState;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onStateTransitionStart(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/S;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/S;-><init>(Lcom/android/launcher3/LauncherState;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method public final u()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method
