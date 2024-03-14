.class public Lcom/google/android/apps/nexuslauncher/allapps/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# static fields
.field public static final h:Lcom/google/android/apps/nexuslauncher/allapps/G;


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public e:Lcom/google/android/apps/nexuslauncher/allapps/L;

.field public f:Lcom/google/android/apps/nexuslauncher/allapps/H;

.field public g:Lcom/android/launcher3/LauncherState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/G;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/G;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/P;->h:Lcom/google/android/apps/nexuslauncher/allapps/G;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    return-void
.end method

.method public static b(Lcom/android/launcher3/views/ActivityContext;ZZ)Landroid/view/animation/Interpolator;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_1

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {p0, v1, p1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    sub-float/2addr v1, p0

    invoke-static {v0, v1, p1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_5

    const p0, 0x3e19999a    # 0.15f

    if-eqz p1, :cond_4

    sget-object p1, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-static {p0, v1, p1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    goto :goto_1

    :cond_4
    sget-object p1, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-static {v0, p0, p1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    sget-object p0, Ly0/e;->c:Landroid/view/animation/Interpolator;

    const p1, 0x3eaa7efa    # 0.333f

    invoke-static {p1, v1, p0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    goto :goto_1

    :cond_6
    sget-object p0, Ly0/e;->b:Landroid/view/animation/Interpolator;

    const p1, 0x3f2ac083    # 0.667f

    invoke-static {v0, p1, p0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/launcher3/LauncherState;Z)Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/P;->b(Lcom/android/launcher3/views/ActivityContext;ZZ)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/android/launcher3/LauncherState;)Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_FROM_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->f:Lcom/google/android/apps/nexuslauncher/allapps/H;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->f:Lcom/google/android/apps/nexuslauncher/allapps/H;

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->f:Lcom/google/android/apps/nexuslauncher/allapps/H;

    :cond_0
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->g:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public f(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    if-nez p0, :cond_1

    iget-boolean p0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g(Lcom/android/launcher3/LauncherState;ZZZ)Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    if-nez v2, :cond_4

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nshouldKeyboardTransition, status="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " toState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isImeShown:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " enableKeyboardAlwaysUp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " enableKeyboardSync:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isUserControlled:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyboardInsetsHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->g:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/P;->e()V

    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    :cond_2
    return-void
.end method

.method public final setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 9

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->g:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/P;->e()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/P;->c(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result v5

    iget-boolean v6, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/google/android/apps/nexuslauncher/allapps/P;->g(Lcom/android/launcher3/LauncherState;ZZZ)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-boolean v5, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v5, :cond_8

    instance-of v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/f;

    xor-int/2addr v4, v5

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/O;

    invoke-direct {v4, v0}, Lcom/google/android/apps/nexuslauncher/allapps/O;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/L;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/allapps/L;-><init>()V

    :goto_1
    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/P;->f(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/P;->d(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/logging/KeyboardStateManager;->setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V

    goto :goto_2

    :cond_9
    sget-object v5, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->HIDE:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/logging/KeyboardStateManager;->setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V

    :goto_2
    iget-boolean v1, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/P;->a(Lcom/android/launcher3/LauncherState;Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    sget-object v5, Ly0/e;->e:Ly0/a;

    const/16 v6, 0x14

    invoke-virtual {p2, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/F;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->m:Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-direct {v5, v6, p2, v7, v8}, Lcom/google/android/apps/nexuslauncher/allapps/F;-><init>(ZLandroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/L;Lcom/google/android/apps/nexuslauncher/logging/b;)V

    iget-object p2, v5, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v6, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p3, p2, v6, v7, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/P;->e()V

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/H;

    invoke-direct {p2, p0, v1, v5}, Lcom/google/android/apps/nexuslauncher/allapps/H;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/P;Landroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/F;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->f:Lcom/google/android/apps/nexuslauncher/allapps/H;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->g:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/P;->f:Lcom/google/android/apps/nexuslauncher/allapps/H;

    invoke-interface {p2, p0}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/E;

    invoke-direct {p0, v5, v3}, Lcom/google/android/apps/nexuslauncher/allapps/E;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/F;I)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/I;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/I;-><init>(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/ExtendedEditText;)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/K;

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/K;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/P;Lcom/google/android/apps/nexuslauncher/allapps/U;Lcom/android/launcher3/ExtendedEditText;F)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_b
    :goto_3
    return-void
.end method
