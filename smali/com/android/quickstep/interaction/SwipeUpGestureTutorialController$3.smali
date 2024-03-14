.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field final synthetic val$animatePreviousTask:Z

.field final synthetic val$onEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$resetViews:Z

.field final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;ZLjava/lang/Runnable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$resetViews:Z

    iput-object p3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$onEndRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean p5, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$animatePreviousTask:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 3

    new-instance p1, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v0, 0x12c

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object p2, p2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v1, Ly0/e;->u:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$resetViews:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->p(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$onEndRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$animatePreviousTask:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object p2, p2, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method
