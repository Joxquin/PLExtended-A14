.class final Lcom/android/launcher3/QuickstepTransitionManager$13;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic val$appTargets:[Landroid/view/RemoteAnimationTarget;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$rotationChange:I

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$tmpPos:Landroid/graphics/Point;

.field final synthetic val$tmpRect:Landroid/graphics/Rect;

.field final synthetic val$windowCornerRadius:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;F[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Point;Landroid/graphics/Rect;ILandroid/graphics/Matrix;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 10

    move-object v0, p0

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpPos:Landroid/graphics/Point;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpRect:Landroid/graphics/Rect;

    move/from16 v1, p6

    iput v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$rotationChange:I

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    move/from16 v1, p8

    iput v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$windowCornerRadius:F

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->a(Lcom/android/launcher3/QuickstepTransitionManager;)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xfa

    int-to-float v5, v5

    sget-object v6, Ly0/e;->B:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    move-object p3, v1

    move-object p4, p0

    move p5, v2

    move/from16 p6, v3

    move/from16 p7, v7

    move/from16 p8, v5

    move-object/from16 p9, v6

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object p3, v1

    move p5, v7

    move/from16 p6, v3

    move/from16 p7, v4

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v3, 0x0

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v7, 0x42fa0000    # 125.0f

    sget-object v8, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    move-object p3, v1

    move p5, v2

    move/from16 p6, v9

    move/from16 p7, v4

    move/from16 p8, v7

    move-object/from16 p9, v8

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    move-object p3, v1

    move p5, p2

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p8, v5

    move-object/from16 p9, v6

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final onUpdate(FZ)V
    .locals 7

    new-instance p1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    array-length p2, p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    aget-object v1, v1, p2

    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpPos:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpPos:Landroid/graphics/Point;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Point;->set(II)V

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v4, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpRect:Landroid/graphics/Rect;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$rotationChange:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpPos:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$windowCornerRadius:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShadowRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$tmpPos:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
