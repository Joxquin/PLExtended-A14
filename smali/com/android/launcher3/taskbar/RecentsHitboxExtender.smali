.class public final Lcom/android/launcher3/taskbar/RecentsHitboxExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private mAnimatingFromTaskbarToOverview:Z

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mHandler:Landroid/os/Handler;

.field private mLastIconAlignment:F

.field private mParentCoordSupplier:Ljava/util/function/Supplier;

.field private mRecentsButton:Landroid/view/View;

.field private mRecentsButtonClicked:Z

.field private final mRecentsHitBox:Landroid/graphics/Rect;

.field private final mRecentsHitboxResetRunnable:Lcom/android/launcher3/taskbar/D;

.field private mRecentsParent:Landroid/view/View;

.field private mRecentsTouchDelegate:Landroid/view/TouchDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/taskbar/D;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/D;-><init>(Lcom/android/launcher3/taskbar/RecentsHitboxExtender;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitboxResetRunnable:Lcom/android/launcher3/taskbar/D;

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/RecentsHitboxExtender;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    return-void
.end method


# virtual methods
.method public final extendedHitboxEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    return p0
.end method

.method public final init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/B;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsParent:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mParentCoordSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onAnimationProgressToOverview(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mLastIconAlignment:F

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitboxResetRunnable:Lcom/android/launcher3/taskbar/D;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    iget p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mLastIconAlignment:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mParentCoordSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v2, v0, v2

    float-to-int v2, v2

    aget p1, v0, p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, p1, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Landroid/view/TouchDelegate;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    invoke-direct {p1, v1, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsTouchDelegate:Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsParent:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_4
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {p0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onRecentsButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    return-void
.end method
