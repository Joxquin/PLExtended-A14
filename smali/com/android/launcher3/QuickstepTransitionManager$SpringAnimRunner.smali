.class Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final mAppTargets:[Landroid/view/RemoteAnimationTarget;

.field private final mCurrentRect:Landroid/graphics/Rect;

.field private final mEndRadius:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mStartRadius:F

.field private final mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mAppTargets:[Landroid/view/RemoteAnimationTarget;

    iput p5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mStartRadius:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mEndRadius:F

    new-instance p2, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {p2, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final getCornerRadius(F)F
    .locals 1

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mEndRadius:F

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mStartRadius:F

    invoke-static {v0, p0, p1, p0}, Lw/f;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p2

    new-instance v8, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v8}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mAppTargets:[Landroid/view/RemoteAnimationTarget;

    array-length v1, v9

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v11, v1

    :goto_0
    if-ltz v11, :cond_6

    aget-object v1, v9, v11

    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_0
    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Point;->set(II)V

    :goto_1
    iget v1, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v1, v10, :cond_4

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    move-object/from16 v12, p1

    invoke-virtual {v12, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    if-le v6, v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v16, v5, v6

    mul-float v13, v13, v16

    float-to-int v13, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v16, v16, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v4, v16

    invoke-virtual {v14, v15, v15, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v16, v5, v6

    mul-float v13, v13, v16

    float-to-int v13, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v16, v16, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v13, v13, v16

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v14, v15, v15, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    move v13, v6

    invoke-virtual {v3, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v14

    const/4 v1, 0x0

    cmpg-float v2, v7, v1

    if-gtz v2, :cond_2

    goto :goto_3

    :cond_2
    const v2, 0x3f59999a    # 0.85f

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const v3, 0x3f59999a    # 0.85f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    sget-object v6, Ly0/e;->w:Landroid/view/animation/Interpolator;

    move/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    :goto_3
    invoke-virtual {v14, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v0, v7}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->getCornerRadius(F)F

    move-result v2

    div-float/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_4

    :cond_4
    move-object/from16 v12, p1

    if-nez v1, :cond_5

    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v8}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
