.class Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->r(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->r(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;->val$animator:Landroid/animation/Animator;

    invoke-static {p1, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->r(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    return-void
.end method
