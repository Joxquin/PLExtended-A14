.class final Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;
.super Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

.field final synthetic val$bubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->val$bubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)V

    return-void
.end method


# virtual methods
.method public final onDragEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onDragEnd()V

    return-void
.end method

.method public final onDragRelease()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->val$bubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onDragRelease(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method

.method public final onDragStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;->val$bubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onDragStart(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method
