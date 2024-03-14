.class final Lcom/android/launcher3/QuickstepTransitionManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic val$launcherContentAnimator:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$3;->d:I

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$3;->val$launcherContentAnimator:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$3;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$3;->val$launcherContentAnimator:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$3;->val$launcherContentAnimator:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
