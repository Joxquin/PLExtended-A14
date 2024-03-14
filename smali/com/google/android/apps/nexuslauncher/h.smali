.class public final Lcom/google/android/apps/nexuslauncher/h;
.super Lcom/android/launcher3/QuickstepTransitionManager;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final e:LQ1/d;

.field public f:Lcom/google/android/apps/nexuslauncher/g;

.field public g:Landroid/window/RemoteTransition;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    new-instance v0, LQ1/d;

    invoke-direct {v0, p1}, LQ1/d;-><init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->e:LQ1/d;

    return-void
.end method

.method public static final synthetic n(Lcom/google/android/apps/nexuslauncher/h;)Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/h;->e:LQ1/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LQ1/d;->b:Lcom/android/launcher3/util/EventLogArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/EventLogArray;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final registerRemoteTransitions()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteTransitions()V

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/g;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/g;-><init>(Lcom/google/android/apps/nexuslauncher/h;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->f:Lcom/google/android/apps/nexuslauncher/g;

    new-instance v0, Landroid/window/RemoteTransition;

    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/h;->f:Lcom/google/android/apps/nexuslauncher/g;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    const-string v5, "LauncherToDream"

    invoke-direct {v0, v1, v3, v5}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->g:Landroid/window/RemoteTransition;

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    new-instance v1, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v1}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v3, 0x5

    iput v3, v1, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v3, 0x3

    filled-new-array {v4, v3}, [I

    move-result-object v3

    iput-object v3, v1, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    sget-object v3, Le3/f;->a:Le3/f;

    new-instance v3, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v3}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v5, 0x4

    filled-new-array {v4, v5}, [I

    move-result-object v4

    iput-object v4, v3, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    filled-new-array {v1, v3}, [Landroid/window/TransitionFilter$Requirement;

    move-result-object v1

    iput-object v1, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/h;->g:Landroid/window/RemoteTransition;

    invoke-virtual {v1, p0, v0}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    :cond_0
    return-void
.end method

.method public final unregisterRemoteTransitions()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteTransitions()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->g:Landroid/window/RemoteTransition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/h;->g:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->unregisterRemoteTransition(Landroid/window/RemoteTransition;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->g:Landroid/window/RemoteTransition;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->f:Lcom/google/android/apps/nexuslauncher/g;

    return-void
.end method
