.class Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

.field final synthetic val$attached:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iput-boolean p2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->val$attached:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iget-boolean v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->val$attached:Z

    invoke-static {p1, v0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->c(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Z)V

    iget-boolean p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->val$attached:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    invoke-static {p0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->b(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;)V

    :cond_0
    return-void
.end method
