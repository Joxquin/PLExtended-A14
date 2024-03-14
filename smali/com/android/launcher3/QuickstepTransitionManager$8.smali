.class final Lcom/android/launcher3/QuickstepTransitionManager$8;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field mAppWindowScale:F

.field final mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic val$appTargets:[Landroid/view/RemoteAnimationTarget;

.field final synthetic val$appTargetsAreTranslucent:Z

.field final synthetic val$appWindowCrop:Landroid/graphics/Rect;

.field final synthetic val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$navBarTarget:Landroid/view/RemoteAnimationTarget;

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$widgetBackgroundBounds:Landroid/graphics/RectF;

.field final synthetic val$windowTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/views/FloatingWidgetView;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$windowTargetBounds:Landroid/graphics/Rect;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appWindowCrop:Landroid/graphics/Rect;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$matrix:Landroid/graphics/Matrix;

    move/from16 v3, p8

    iput-boolean v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appTargetsAreTranslucent:Z

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$navBarTarget:Landroid/view/RemoteAnimationTarget;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mAppWindowScale:F

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42780000    # 62.0f

    sget-object v8, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    move-object/from16 p6, v3

    move-object/from16 p7, p0

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p10, v9

    move/from16 p11, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x42960000    # 75.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 p6, v3

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v6

    move/from16 p11, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v6, 0x42780000    # 62.0f

    const/high16 v7, 0x42780000    # 62.0f

    move-object/from16 p6, v3

    move/from16 p9, v5

    move/from16 p10, v6

    move/from16 p11, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, v7

    move/from16 p11, v8

    move-object/from16 p12, v6

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/high16 v10, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v9

    move/from16 p11, v10

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->e(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 p6, v3

    move/from16 p8, v6

    move/from16 p9, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 p6, v3

    move/from16 p8, v6

    move/from16 p9, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 p6, v3

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v4

    move/from16 p11, v5

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object p1, v3

    move-object p2, p0

    move p3, v1

    move p4, v2

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v5, 0x43050000    # 133.0f

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move p4, v3

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x436a0000    # 234.0f

    const/high16 v5, 0x43850000    # 266.0f

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final onUpdate(FZ)V
    .locals 8

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float v5, v4, v1

    sub-float v5, v3, v5

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    invoke-virtual {p1, v2, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$windowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mAppWindowScale:F

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appWindowCrop:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$windowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mAppWindowScale:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$matrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mAppWindowScale:F

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p2, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    new-instance p1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-boolean p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appTargetsAreTranslucent:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float/2addr v0, p2

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    aget-object v1, v1, p2

    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v7

    iget v1, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mAppWindowScale:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$navBarTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p2, :cond_4

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v0}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$appWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
