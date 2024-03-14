.class final Lcom/android/launcher3/views/ArrowTipView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/ArrowTipView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ArrowTipView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView$2;->this$0:Lcom/android/launcher3/views/ArrowTipView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView$2;->this$0:Lcom/android/launcher3/views/ArrowTipView;

    invoke-static {p1}, Lcom/android/launcher3/views/ArrowTipView;->d(Lcom/android/launcher3/views/ArrowTipView;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/views/ArrowTipView$2;->this$0:Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
