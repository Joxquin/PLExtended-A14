.class Lcom/android/quickstep/AbsSwipeUpHandler$10;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/BaseActivityInterface;->onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    return-void
.end method
