.class Lcom/android/quickstep/interaction/AllSetActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AllSetActivity;

.field final synthetic val$vibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;Landroid/os/VibrationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->val$vibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity$1;->lambda$onAnimationRepeat$1(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity$1;->lambda$onAnimationStart$0(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private synthetic lambda$onAnimationRepeat$1(Landroid/os/VibrationEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->e(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0(Landroid/os/VibrationEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->e(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->e(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/interaction/f;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/interaction/f;-><init>(Landroid/os/Vibrator;I)V

    invoke-static {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->f(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->e(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/interaction/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/interaction/f;-><init>(Landroid/os/Vibrator;I)V

    invoke-static {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->f(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->val$vibrationEffect:Landroid/os/VibrationEffect;

    new-instance v1, Lcom/android/quickstep/interaction/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quickstep/interaction/e;-><init>(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;I)V

    invoke-static {p1, v1}, Lcom/android/quickstep/interaction/AllSetActivity;->f(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->val$vibrationEffect:Landroid/os/VibrationEffect;

    new-instance v1, Lcom/android/quickstep/interaction/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quickstep/interaction/e;-><init>(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;I)V

    invoke-static {p1, v1}, Lcom/android/quickstep/interaction/AllSetActivity;->f(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    return-void
.end method
