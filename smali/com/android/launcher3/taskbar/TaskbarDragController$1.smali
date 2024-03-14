.class final Lcom/android/launcher3/taskbar/TaskbarDragController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# instance fields
.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method

.method public final onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->shouldStartDrag(D)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v0, Lcom/android/launcher3/taskbar/a0;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/taskbar/a0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragView;->setOnScaleAnimEndCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final shouldStartDrag(D)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->isScaleAnimationFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
