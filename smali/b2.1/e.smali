.class public final Lb2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

.field public final synthetic e:F

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;FZ)V
    .locals 0

    iput-object p1, p0, Lb2/e;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    iput p2, p0, Lb2/e;->e:F

    iput-boolean p3, p0, Lb2/e;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lb2/e;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_4

    iget v1, p0, Lb2/e;->e:F

    iget-boolean p0, p0, Lb2/e;->f:Z

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setUnlockAmount called with unsupported value "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherUnlock"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lb2/h;->f:Lcom/android/launcher3/util/EventLogArray;

    const-string v3, "setUnlockAmount"

    invoke-virtual {v1, v3, p0}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;Z)V

    iget-object v1, v0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    :cond_2
    if-eqz v4, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()V

    :cond_4
    :goto_1
    return-void
.end method
