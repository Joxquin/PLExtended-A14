.class final Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->d:I

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->h(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->k(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
