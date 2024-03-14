.class public final Lcom/android/launcher3/util/CannedAnimationCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private animationDuration:J

.field private animationFactory:Ljava/util/function/Consumer;

.field private animationProvider:Ljava/lang/Object;

.field private currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private recreatePending:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    new-instance p1, Lcom/android/launcher3/util/CannedAnimationCoordinator$launcherLayoutListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$launcherLayoutListener$1;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static final synthetic access$endCurrentAnimation(Lcom/android/launcher3/util/CannedAnimationCoordinator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/statemanager/StatefulActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public static final synthetic access$getAnimationController$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method public static final synthetic access$getAnimationProvider$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAnim$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method public static final synthetic access$getLauncherLayoutListener$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static final synthetic access$getRecreatePending$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    return p0
.end method

.method public static final access$scheduleRecreateAnimOnPreDraw(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/CannedAnimationCoordinator$scheduleRecreateAnimOnPreDraw$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$scheduleRecreateAnimOnPreDraw$1;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    invoke-static {v0, v1}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$setAnimationController$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method public static final synthetic access$setAnimationFactory$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$setAnimationProvider$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setRecreatePending$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    return-void
.end method

.method private final endCurrentAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method


# virtual methods
.method public final getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong controller access from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", actual provider "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CannedAnimCoordinator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final recreateAnimation(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignore recreate request from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", actual provider "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CannedAnimCoordinator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/launcher3/anim/PendingAnimation;

    iget-wide v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationDuration:J

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->currentAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setAnimation(Ljava/lang/Object;Ljava/util/function/Consumer;J)V
    .locals 3

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to play two animations together, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CannedAnimCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->endCurrentAnimation(Z)V

    iget-object v1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationFactory:Ljava/util/function/Consumer;

    iput-wide p3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationDuration:J

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$1$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$1$1;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {p2, p3, p4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p3

    new-instance p4, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;

    invoke-direct {p4, p0, p3}, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;-><init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-static {p4}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->launcherLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p4, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iput-boolean v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreatePending:Z

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object p3, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator;->animationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->recreateAnimation(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
