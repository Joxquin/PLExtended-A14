.class final Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;
.super Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;
.source "SourceFile"


# instance fields
.field final synthetic val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field final synthetic val$initialRelativePivot:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$initialRelativePivot:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)V

    return-void
.end method


# virtual methods
.method public final onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$initialRelativePivot:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setRelativePivot(FF)V

    return-void
.end method

.method public final onDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$initialRelativePivot:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->getRelativePivotX()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->getRelativePivotY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setRelativePivot(FF)V

    return-void
.end method

.method public final onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;->val$bubbleBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
