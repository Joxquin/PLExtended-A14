.class Lcom/android/quickstep/LauncherBackAnimationController$1;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherBackAnimationController;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/LauncherBackAnimationController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackCancelled$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/LauncherBackAnimationController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackInvoked$1()V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackStarted$4(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackStarted$3(Landroid/window/BackEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackCancelled$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->d(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    new-instance v1, Lcom/android/quickstep/Q;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/quickstep/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onBackInvoked$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->o(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->d(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->d(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$3(Landroid/window/BackEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->g(Lcom/android/quickstep/LauncherBackAnimationController;F)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->c(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v3}, Lcom/android/quickstep/LauncherBackAnimationController;->c(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v1}, Lcom/android/quickstep/LauncherBackAnimationController;->c(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/quickstep/LauncherBackAnimationController;->g(Lcom/android/quickstep/LauncherBackAnimationController;F)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->c(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->q(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$4(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->n(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->d(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/S;

    invoke-direct {v1, p0}, Lcom/android/quickstep/S;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/Q;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/quickstep/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackInvoked()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/Q;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/quickstep/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/P;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/P;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/P;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/P;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackMotionEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
