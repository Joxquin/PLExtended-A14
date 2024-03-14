.class Lcom/android/quickstep/views/DesktopAppSelectView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DesktopAppSelectView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView$2;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView$2;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-static {p1}, Lcom/android/quickstep/views/DesktopAppSelectView;->c(Lcom/android/quickstep/views/DesktopAppSelectView;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView$2;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView$2;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-static {p0}, Lcom/android/quickstep/views/DesktopAppSelectView;->d(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    return-void
.end method
