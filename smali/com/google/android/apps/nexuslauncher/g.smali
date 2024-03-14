.class public final Lcom/google/android/apps/nexuslauncher/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field public a:Landroid/animation/AnimatorSet;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/h;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/g;->b:Lcom/google/android/apps/nexuslauncher/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/g;->a:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/apps/nexuslauncher/g;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 7

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 2
    array-length p4, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    aget-object v2, p2, v1

    .line 3
    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    move v3, p1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p3

    .line 4
    :goto_2
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/g;->b:Lcom/google/android/apps/nexuslauncher/h;

    if-eqz v2, :cond_6

    .line 5
    iget-object p4, p2, Lcom/google/android/apps/nexuslauncher/h;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 6
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/h;->n(Lcom/google/android/apps/nexuslauncher/h;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p4

    const-string v0, "mDragLayer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/h;->e:LQ1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, v0, LQ1/d;->b:Lcom/android/launcher3/util/EventLogArray;

    const-string v3, "playAnimation"

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, LQ1/d;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object v3

    .line 10
    new-instance v4, LQ1/a;

    invoke-direct {v4, v0}, LQ1/a;-><init>(LQ1/d;)V

    const-wide/16 v5, 0x1c2

    .line 11
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->setAnimation(Ljava/lang/Object;Ljava/util/function/Consumer;J)V

    .line 12
    new-instance v3, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v3, p4}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 13
    fill-array-data p4, :array_0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 14
    sget-object v4, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    .line 15
    invoke-virtual {p4, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 16
    invoke-virtual {p4, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    new-instance v4, LQ1/b;

    invoke-direct {v4, v3, v2}, LQ1/b;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p4, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    if-eqz v1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 20
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->reverse()V

    .line 21
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 22
    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 23
    new-instance p4, LQ1/c;

    invoke-direct {p4, v0}, LQ1/c;-><init>(LQ1/d;)V

    .line 24
    invoke-virtual {v1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p5, :cond_5

    .line 25
    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/h;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p5, v1, p2, p3, p1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 26
    :cond_5
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/g;->a:Landroid/animation/AnimatorSet;

    return-void

    :cond_6
    :goto_3
    if-eqz p5, :cond_7

    .line 27
    iget-object p0, p2, Lcom/google/android/apps/nexuslauncher/h;->d:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 28
    invoke-virtual {p5, p3, p0, p3, p1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
