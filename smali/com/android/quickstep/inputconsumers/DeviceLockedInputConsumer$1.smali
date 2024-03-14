.class Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

.field final synthetic val$dismissTask:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->j(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->h(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->n(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->k(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->l(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->f(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->g(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/quickstep/OverviewComponentObserver;->startHomeIntentSafely(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->m(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->i(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/MultiStateCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method
