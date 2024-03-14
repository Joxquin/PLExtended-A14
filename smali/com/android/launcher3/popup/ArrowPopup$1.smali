.class final Lcom/android/launcher3/popup/ArrowPopup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/popup/ArrowPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->d:I

    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->d:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-static {p1}, Lcom/android/launcher3/popup/ArrowPopup;->access$000(Lcom/android/launcher3/popup/ArrowPopup;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    iget-boolean p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
