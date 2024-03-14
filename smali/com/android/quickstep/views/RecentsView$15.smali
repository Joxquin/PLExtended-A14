.class Lcom/android/quickstep/views/RecentsView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$animatorAppear:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$15;->val$animatorAppear:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/animation/Animator;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->lambda$onAnimationEnd$0(Landroid/animation/Animator;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/animation/Animator;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->D0(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateClearAllFunction()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->l0(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->l0(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$15;->val$animatorAppear:Landroid/animation/Animator;

    new-instance v0, Lcom/android/quickstep/views/G;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/quickstep/views/G;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$15;->val$animatorAppear:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method
