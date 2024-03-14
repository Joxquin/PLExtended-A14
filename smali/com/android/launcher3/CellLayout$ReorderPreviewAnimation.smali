.class final Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field animationProgress:F

.field final child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field final finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final mode:I

.field repeating:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    const/4 v11, 0x0

    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v12, v6, v10

    const/4 v13, 0x1

    aget v14, v6, v13

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v2, v1, v10

    aget v1, v1, v13

    sub-int/2addr v2, v12

    sub-int/2addr v1, v14

    iput-object v8, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    iput v9, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    move-object v3, v8

    check-cast v3, Lcom/android/launcher3/Reorderable;

    invoke-interface {v3}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v4

    iput v4, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    invoke-interface {v3}, Lcom/android/launcher3/Reorderable;->getReorderBounceScale()F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v4, v3

    iget v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    if-nez v9, :cond_0

    const/4 v13, -0x1

    :cond_0
    if-ne v2, v1, :cond_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    neg-int v1, v13

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v1

    iget v1, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    neg-int v2, v13

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v2

    iget v2, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    int-to-float v2, v2

    div-float v3, v1, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    neg-int v5, v13

    int-to-float v5, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v5

    float-to-double v8, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v2, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v12, v2

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-int v2, v10

    int-to-float v2, v2

    iput v2, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    :goto_0
    return-void
.end method


# virtual methods
.method public final finishAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    invoke-static {}, Lcom/android/launcher3/CellLayout;->a()Landroid/util/Property;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    sget-object v1, Ly0/e;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
