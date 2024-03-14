.class public final Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic $launcher:Lcom/android/launcher3/statemanager/StatefulActivity;

.field final synthetic this$0:Lcom/android/quickstep/util/SplitAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SplitAnimationController;Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;->this$0:Lcom/android/quickstep/util/SplitAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;->$launcher:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;->this$0:Lcom/android/quickstep/util/SplitAnimationController;

    invoke-virtual {p1}, Lcom/android/quickstep/util/SplitAnimationController;->getSplitSelectStateController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    iget-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;->this$0:Lcom/android/quickstep/util/SplitAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;->$launcher:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/quickstep/util/SplitAnimationController;->getSplitSelectStateController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitInstructionsView()Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/quickstep/util/SplitAnimationController;->access$safeRemoveViewFromDragLayer(Lcom/android/quickstep/util/SplitAnimationController;Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V

    return-void
.end method
