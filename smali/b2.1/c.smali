.class public final Lb2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;ZLandroid/graphics/Rect;I)V
    .locals 0

    iput-object p1, p0, Lb2/c;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    iput-boolean p2, p0, Lb2/c;->e:Z

    iput-object p3, p0, Lb2/c;->f:Landroid/graphics/Rect;

    iput p4, p0, Lb2/c;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lb2/c;->d:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lb2/c;->e:Z

    iget-object v2, p0, Lb2/c;->f:Landroid/graphics/Rect;

    iget p0, p0, Lb2/c;->g:I

    iput-boolean v1, v0, Lb2/h;->d:Z

    iget-object v1, v0, Lb2/h;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lb2/h;->f:Lcom/android/launcher3/util/EventLogArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/EventLogArray;->addLog()V

    iget-boolean v1, v0, Lb2/h;->d:Z

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    iget-object v1, v0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g(I)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v1, v0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;

    move-result-object p0

    new-instance v1, Lb2/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lb2/f;-><init>(ILjava/lang/Object;)V

    iget-wide v2, v0, Lb2/h;->h:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->setAnimation(Ljava/lang/Object;Ljava/util/function/Consumer;J)V

    :cond_1
    return-void
.end method
