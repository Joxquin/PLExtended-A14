.class public final Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field public static final VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;


# instance fields
.field private final mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field private final mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

.field private mScrollDirections:I

.field private mTouchSlopMultiplier:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    .line 7
    iput-object p3, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    .line 8
    iput-object p4, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method


# virtual methods
.method public final reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDragEnd(F)V

    return-void
.end method

.method public final reportDragStartInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v0

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDragStart(ZF)V

    return-void
.end method

.method public final reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    check-cast v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    iget v0, v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :goto_0
    iget p1, p1, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mListener:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;->onDrag(FFLandroid/view/MotionEvent;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setDetectableScrollConditions(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    iput-boolean p2, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method public final setTouchSlopMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    return-void
.end method

.method public final shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 5

    iget v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    iget v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    iget v2, v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :goto_0
    iget v2, p1, Landroid/graphics/PointF;->y:F

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v2, v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result p1

    iget p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mScrollDirections:I

    and-int/lit8 v0, p0, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;

    iget v0, v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    goto :goto_3

    :goto_2
    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_1
    move v0, v2

    :goto_4
    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_5

    :cond_2
    move v0, v2

    :goto_5
    if-nez v0, :cond_4

    and-int/2addr p0, v3

    if-lez p0, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_6

    :cond_3
    move p0, v2

    :goto_6
    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final wasInitialTouchPositive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result p0

    return p0
.end method
