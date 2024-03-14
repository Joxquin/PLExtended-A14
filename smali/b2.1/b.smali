.class public final Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;JJ)V
    .locals 0

    iput-object p1, p0, Lb2/b;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    iput-wide p2, p0, Lb2/b;->e:J

    iput-wide p4, p0, Lb2/b;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lb2/b;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lb2/b;->e:J

    iget-wide v3, p0, Lb2/b;->f:J

    iget-object p0, v0, Lb2/h;->f:Lcom/android/launcher3/util/EventLogArray;

    const-string v5, "playUnlockAnimation"

    invoke-virtual {p0, v5}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    add-long/2addr v1, v3

    iget-wide v5, v0, Lb2/h;->h:J

    cmp-long p0, v1, v5

    iget-object v5, v0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    if-nez p0, :cond_0

    iget-wide v6, v0, Lb2/h;->g:J

    cmp-long p0, v3, v6

    if-eqz p0, :cond_1

    :cond_0
    iput-wide v3, v0, Lb2/h;->g:J

    iput-wide v1, v0, Lb2/h;->h:J

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object p0

    new-instance v1, Lb2/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lb2/f;-><init>(ILjava/lang/Object;)V

    iget-wide v2, v0, Lb2/h;->h:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->setAnimation(Ljava/lang/Object;Ljava/util/function/Consumer;J)V

    :cond_1
    iget-boolean p0, v0, Lb2/h;->d:Z

    if-eqz p0, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    const/16 v1, 0x3f

    invoke-static {p0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->getPlaybackController(Ljava/lang/Object;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    :cond_3
    return-void
.end method
