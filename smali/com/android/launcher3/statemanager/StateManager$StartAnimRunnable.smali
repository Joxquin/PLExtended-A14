.class final Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->c(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
