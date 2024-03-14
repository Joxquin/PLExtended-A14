.class abstract Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

.field private mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

.field private final mPressToDragTimeout:J

.field private mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

.field private final mTouchDownLocation:Landroid/graphics/PointF;

.field private mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewInitialPosition:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchDownLocation:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mPressToDragTimeout:J

    sget-object p1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->IDLE:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchSlop:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUp(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->onDragEnd()V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->DRAGGING:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->onDragStart()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->animateFocused()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->setupDismissView(Landroid/view/View;Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->showDismissView()V

    return-void
.end method

.method private cleanUp(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUpLongClickHandler(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    sget-object p1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->IDLE:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    return-void
.end method

.method private cleanUpLongClickHandler(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

    :cond_1
    :goto_0
    return-void
.end method

.method private stopDragging(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/taskbar/bubbles/c;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->animateDismiss(Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->onDragRelease()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->animateToInitialState(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->hideDismissView()V

    return-void
.end method


# virtual methods
.method public abstract onDragEnd()V
.end method

.method public onDragRelease()V
    .locals 0

    return-void
.end method

.method public abstract onDragStart()V
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    sget-object v1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->DRAGGING:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->stopDragging(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUp(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchDownLocation:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchDownLocation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v2, :cond_5

    if-eq v4, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v3

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_5
    float-to-double v0, v0

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchSlop:I

    int-to-double v3, p2

    cmpl-double p2, v0, v3

    if-lez p2, :cond_6

    move p2, v2

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_a

    sget-object p2, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->CANCELLED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUpLongClickHandler(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUp(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->stopDragging(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUp(Landroid/view/View;)V

    :cond_a
    :goto_1
    return v2

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->TOUCHED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mState:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchSlop:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mViewInitialPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->cleanUpLongClickHandler(Landroid/view/View;)V

    new-instance p2, Lcom/android/launcher3/taskbar/bubbles/c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/c;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;I)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mLongClickRunnable:Lcom/android/launcher3/taskbar/bubbles/c;

    iget-wide v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->mPressToDragTimeout:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method
