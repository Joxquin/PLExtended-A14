.class public final Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final getDropTarget()Lcom/android/launcher3/ButtonDropTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object p0
.end method

.method public final getFlingAnimation(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/util/FlingAnimation;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_2

    const v1, 0x7f0a011d

    invoke-virtual {v2, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-gez v4, :cond_4

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v2, v3

    div-float/2addr v4, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    :goto_0
    double-to-float v2, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v2, v3

    div-float/2addr v4, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    goto :goto_0

    :cond_5
    const/high16 v2, 0x42100000    # 36.0f

    :goto_1
    float-to-double v2, v2

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_6

    move-object v5, v1

    goto :goto_3

    :cond_6
    :goto_2
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isFlingToDelete:Z

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    new-instance v0, Lcom/android/launcher3/util/FlingAnimation;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v7, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v3, v0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/util/FlingAnimation;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-object v0
.end method

.method public final recordMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method
