.class final Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$1$1;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$1$1;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$getCurrentAnim$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    return-void
.end method
