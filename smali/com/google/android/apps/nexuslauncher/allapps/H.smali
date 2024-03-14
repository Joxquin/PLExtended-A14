.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/P;

.field public final synthetic b:Landroid/view/animation/Interpolator;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/F;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/P;Landroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->a:Lcom/google/android/apps/nexuslauncher/allapps/P;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->b:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->c:Lcom/google/android/apps/nexuslauncher/allapps/F;

    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->a:Lcom/google/android/apps/nexuslauncher/allapps/P;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->b:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/H;->c:Lcom/google/android/apps/nexuslauncher/allapps/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const-string p0, "KeyboardInsetsHandler"

    const-string p2, "onControllableInsetsChanged"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/J;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/J;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
