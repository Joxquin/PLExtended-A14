.class final Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showArrow(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->f(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->f(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->i(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->h(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/util/function/Consumer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->g(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->h(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->j(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showArrow(Z)V

    return-void
.end method
