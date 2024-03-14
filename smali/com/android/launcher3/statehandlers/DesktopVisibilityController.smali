.class public final Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IS_STASHING_ENABLED:Z


# instance fields
.field private mDesktopTaskListener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

.field private mFreeformTasksVisible:Z

.field private mGestureInProgress:Z

.field private mInOverviewState:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mSelectAppToast:Lcom/android/quickstep/views/DesktopAppSelectView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.desktop_stashing"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->IS_STASHING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->hideStashedDesktopApps(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static c(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mSelectAppToast:Lcom/android/quickstep/views/DesktopAppSelectView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/DesktopAppSelectView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mSelectAppToast:Lcom/android/quickstep/views/DesktopAppSelectView;

    :goto_0
    return-void
.end method

.method public static d(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mSelectAppToast:Lcom/android/quickstep/views/DesktopAppSelectView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LW0/e;

    invoke-direct {v0, p0}, LW0/e;-><init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/quickstep/views/DesktopAppSelectView;->show(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)Lcom/android/quickstep/views/DesktopAppSelectView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mSelectAppToast:Lcom/android/quickstep/views/DesktopAppSelectView;

    :goto_0
    return-void
.end method

.method public static bridge synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->IS_STASHING_ENABLED:Z

    return v0
.end method

.method private static isDesktopModeSupported()Z
    .locals 2

    const-string v0, "persist.wm.debug.desktop_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.wm.debug.desktop_mode_2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setLauncherViewsVisibility(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final areFreeformTasksVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    return p0
.end method

.method public final isRecentsGestureInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    return p0
.end method

.method public final onHomeActionTriggered()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->IS_STASHING_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->stashDesktopApps(I)V

    :cond_0
    return-void
.end method

.method public final registerSystemUiListener()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;-><init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mDesktopTaskListener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mDesktopTaskListener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->setDesktopTaskListener(Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;)V

    return-void
.end method

.method public final setFreeformTasksVisible(Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setPaused()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setOverviewStateEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setPaused()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setRecentsGestureEnd(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setPaused()V

    :cond_2
    return-void
.end method

.method public final setRecentsGestureStart()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    :cond_1
    return-void
.end method

.method public final unregisterSystemUiListener()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setDesktopTaskListener(Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;)V

    return-void
.end method
