.class public final Lcom/google/android/apps/nexuslauncher/allapps/O2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# instance fields
.field public final synthetic a:Landroid/view/animation/Interpolator;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/F;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/F;Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->a:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->b:Lcom/google/android/apps/nexuslauncher/allapps/F;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->c:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .locals 7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->a:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->b:Lcom/google/android/apps/nexuslauncher/allapps/F;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O2;->c:Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/M2;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/M2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
