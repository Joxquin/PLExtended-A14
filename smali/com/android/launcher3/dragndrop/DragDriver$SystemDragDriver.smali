.class final Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "SourceFile"


# instance fields
.field private final mDragStartTime:J

.field mLastX:F

.field mLastY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mDragStartTime:J

    return-void
.end method


# virtual methods
.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v1

    :goto_0
    iget-wide v4, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mDragStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    check-cast v3, Lcom/android/launcher3/dragndrop/DragController;

    iget-object p0, v3, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz p0, :cond_3

    iget-object p1, v3, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p0, p1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    const/4 p0, 0x0

    iput-object p0, v3, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    :cond_3
    :pswitch_1
    return v2

    :pswitch_2
    check-cast v3, Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    check-cast v3, Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    iget p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->onDriverDragEnd(FF)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    check-cast v3, Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3, p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;->mLastY:F

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
