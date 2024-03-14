.class final Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/a;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReleasedInTarget()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)V

    return-void
.end method

.method public final onStuckToTarget()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->animateDismissCaptured()V

    return-void
.end method

.method public final onUnstuckFromTarget()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->animateDismissReleased()V

    return-void
.end method
