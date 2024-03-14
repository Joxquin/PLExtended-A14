.class public final Lb2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;II)V
    .locals 0

    iput p3, p0, Lb2/d;->d:I

    iput-object p1, p0, Lb2/d;->e:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    iput p2, p0, Lb2/d;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lb2/d;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lb2/d;->e:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_0

    iget p0, p0, Lb2/d;->f:I

    iget-object v0, v0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g(I)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lb2/d;->e:Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;->access$getParent$p(Lcom/google/android/apps/nexuslauncher/unlock/LauncherUnlockAnimationController$MyController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_1

    iget p0, p0, Lb2/d;->f:I

    iget-object v1, v0, Lb2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, v0, Lb2/h;->a:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onUiChangedWhileSleeping()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
