.class public Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field private static final HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

.field private static final MAX_WIDTH_INSET_FRACTION:F = 0.04f

.field private static final TRACE_WAIT_TO_HANDLE_UNFOLD_TRANSITION:Ljava/lang/String; = "LauncherUnfoldAnimationController#waitingForTheNextFrame"

.field private static final WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;


# instance fields
.field private final mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

.field private mIsTablet:Ljava/lang/Boolean;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNaturalOrientationProgressProvider:Lx1/e;

.field private mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

.field private final mProgressProvider:Lx1/f;

.field private mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

.field private final mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

.field private final mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Landroid/util/FloatProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Landroid/util/FloatProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lt1/e;Lw1/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->PREEMPTIVE_UNFOLD_ANIMATION_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;-><init>(Lt1/e;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-virtual {v2}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->init()V

    new-instance v2, Lx1/f;

    iget-object v3, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-direct {v2, v3}, Lx1/f;-><init>(Lt1/e;)V

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/f;

    invoke-direct {v2, p3}, Lx1/f;-><init>(Lt1/e;)V

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    :goto_0
    invoke-interface {p3, v0}, Lx1/c;->addCallback(Ljava/lang/Object;)V

    new-instance p3, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lw1/d;)V

    iput-object p3, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    new-instance v0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lw1/d;)V

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    new-instance p2, Lx1/e;

    iget-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    invoke-direct {p2, p1, p4, v2}, Lx1/e;-><init>(Landroid/content/Context;Lw1/d;Lx1/f;)V

    iput-object p2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lx1/e;

    iget-object p4, p2, Lx1/e;->e:Lw1/d;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lx1/e;->h:Lx1/d;

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw1/c;

    invoke-direct {v3, p4, v2, v1}, Lw1/c;-><init>(Lw1/d;Lw1/b;I)V

    iget-object p4, p4, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {p4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p4, p2, Lx1/e;->d:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/Display;->getRotation()I

    move-result p4

    invoke-virtual {v2, p4}, Lx1/d;->onRotationChanged(I)V

    :cond_1
    iget-object p4, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    invoke-virtual {p4, v0}, Lx1/f;->addCallback(Lt1/d;)V

    iget-object p4, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;I)V

    invoke-virtual {p4, v0}, Lx1/f;->addCallback(Lt1/d;)V

    new-instance p4, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;

    invoke-direct {p4, p0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;I)V

    iget-object p2, p2, Lx1/e;->f:Lx1/f;

    invoke-virtual {p2, p4}, Lx1/f;->addCallback(Lt1/d;)V

    invoke-virtual {p2, p3}, Lx1/f;->addCallback(Lt1/d;)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->lambda$preemptivelyStartAnimationOnNextFrame$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    return-object p0
.end method

.method public static bridge synthetic d()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static bridge synthetic e()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method private synthetic lambda$preemptivelyStartAnimationOnNextFrame$0()V
    .locals 4

    const-string v0, "LauncherUnfoldAnimationController#waitingForTheNextFrame"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->preemptivelyStartTransition(Ljava/lang/Float;)V

    return-void
.end method

.method private preemptivelyStartAnimationOnNextFrame()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x1000

    const-string v3, "LauncherUnfoldAnimationController#waitingForTheNextFrame"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/x;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/x;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    invoke-static {v0, v1}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    invoke-virtual {v0}, Lx1/f;->destroy()V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lx1/e;

    invoke-virtual {v0}, Lx1/e;->destroy()V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PREEMPTIVE_UNFOLD_ANIMATION_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    invoke-virtual {v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->hasRun()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->preemptivelyStartAnimationOnNextFrame()V

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->onFolded()V

    :cond_2
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx1/f;->setReadyToHandleTransition(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/HorizontalInsettableView;

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lx1/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lx1/f;->setReadyToHandleTransition(Z)V

    return-void
.end method

.method public updateRegisteredViewsIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->updateRegisteredViewsIfNeeded()V

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->updateRegisteredViewsIfNeeded()V

    return-void
.end method
