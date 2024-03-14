.class final Lcom/android/launcher3/QuickstepTransitionManager$6;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appTargets:[Landroid/view/RemoteAnimationTarget;

.field final synthetic val$crop:Landroid/graphics/Rect;

.field final synthetic val$dragLayerBounds:[I

.field final synthetic val$floatingIconBounds:Landroid/graphics/RectF;

.field final synthetic val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

.field final synthetic val$launcherIconBounds:Landroid/graphics/RectF;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$navBarTarget:Landroid/view/RemoteAnimationTarget;

.field final synthetic val$rotationChange:I

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$tmpPos:Landroid/graphics/Point;

.field final synthetic val$tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Matrix;Landroid/graphics/Point;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$launcherIconBounds:Landroid/graphics/RectF;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    move/from16 v3, p8

    iput v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$rotationChange:I

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$dragLayerBounds:[I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpPos:Landroid/graphics/Point;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$navBarTarget:Landroid/view/RemoteAnimationTarget;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dX:F

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->e(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move-object/from16 p7, p0

    move/from16 p8, v9

    move/from16 p9, v5

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dY:F

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/high16 v10, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p10, v9

    move/from16 p11, v10

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->initialAppIconScale:F

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->finalAppIconScale:F

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 p6, v3

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->iconAlphaStart:F

    const/4 v5, 0x0

    const/high16 v6, 0x41c80000    # 25.0f

    const/high16 v7, 0x42480000    # 50.0f

    sget-object v8, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move-object/from16 p6, v3

    move/from16 p8, v4

    move/from16 p9, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v4, 0x0

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object/from16 p6, v3

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v4

    move/from16 p11, v5

    move-object/from16 p12, v6

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v5, 0x0

    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move/from16 p8, v4

    move/from16 p9, p5

    move/from16 p10, v8

    move/from16 p11, v9

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    int-to-float v4, v4

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXEnd:I

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    move-object p3, v3

    move-object/from16 p4, p0

    move/from16 p5, v4

    move/from16 p6, v7

    move/from16 p7, v9

    move/from16 p8, v10

    move-object/from16 p9, v8

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    int-to-float v4, v4

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYEnd:I

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object p3, v3

    move/from16 p5, v4

    move/from16 p6, v7

    move-object/from16 p9, v8

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    int-to-float v4, v4

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthEnd:I

    int-to-float v7, v7

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object p3, v3

    move/from16 p5, v4

    move/from16 p6, v7

    move/from16 p7, v5

    move/from16 p8, v6

    move-object/from16 p9, v8

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    int-to-float v4, v4

    iget v1, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightEnd:I

    int-to-float v1, v1

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object p1, v3

    move-object p2, p0

    move p3, v4

    move/from16 p4, v1

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43050000    # 133.0f

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x436a0000    # 234.0f

    const/high16 v5, 0x43850000    # 266.0f

    sget-object v6, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final onUpdate(FZ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float v8, v7, v5

    sub-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v8, v3

    add-float/2addr v8, v4

    float-to-int v4, v8

    int-to-float v8, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v6, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$rotationChange:I

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v7}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v8}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$rotationChange:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_0
    int-to-float v3, v3

    div-float v6, v1, v3

    int-to-float v4, v4

    div-float v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$dragLayerBounds:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-virtual {v5, v10, v8}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v5, v8, v10}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v5, v8, v8}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpRectF:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v1

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v8, v12

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v5, v10

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v10, v12, v12}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    iget-object v15, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget v10, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v1

    iput v10, v15, Landroid/graphics/RectF;->left:F

    iget v10, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v2

    iput v10, v15, Landroid/graphics/RectF;->top:F

    iget v10, v15, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v1

    iput v10, v15, Landroid/graphics/RectF;->right:F

    iget v1, v15, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v15, Landroid/graphics/RectF;->bottom:F

    if-eqz p2, :cond_1

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v18, v0, v6

    const/16 v19, 0x1

    move/from16 v16, p1

    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher3/views/FloatingIconView;->update(FLandroid/graphics/RectF;FFFZ)V

    return-void

    :cond_1
    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    array-length v2, v2

    sub-int/2addr v2, v11

    :goto_0
    if-ltz v2, :cond_9

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$appTargets:[Landroid/view/RemoteAnimationTarget;

    aget-object v10, v10, v2

    iget-object v12, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v12}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v12

    iget v13, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v14, 0x2

    if-nez v13, :cond_5

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$rotationChange:I

    if-ne v10, v11, :cond_2

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v13}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v13, v13

    add-float v14, v8, v3

    sub-float/2addr v13, v14

    invoke-virtual {v10, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_2
    if-ne v10, v14, :cond_3

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v13}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v13, v13

    add-float v14, v8, v3

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v14}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v14

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v14, v14

    add-float v15, v5, v4

    sub-float/2addr v14, v15

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v13}, Lcom/android/launcher3/QuickstepTransitionManager;->b(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v13, v13

    add-float v14, v5, v4

    sub-float/2addr v13, v14

    invoke-virtual {v10, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v14, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v15, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$floatingIconBounds:Landroid/graphics/RectF;

    const/16 v17, 0x0

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v18, v10, v6

    const/16 v19, 0x1

    move/from16 v16, p1

    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher3/views/FloatingIconView;->update(FLandroid/graphics/RectF;FFFZ)V

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v10

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v10

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float v12, v7, v12

    invoke-virtual {v10, v12}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v10

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v12}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v10

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v12}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShadowRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_3

    :cond_5
    if-ne v13, v11, :cond_8

    iget-object v13, v10, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    if-eqz v13, :cond_6

    iget-object v15, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpPos:Landroid/graphics/Point;

    iget v7, v13, Landroid/graphics/Rect;->left:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v7, v13}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :cond_6
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpPos:Landroid/graphics/Point;

    iget-object v13, v10, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v15, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v15, v13}, Landroid/graphics/Point;->set(II)V

    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$rotationChange:I

    rem-int/2addr v10, v14

    if-ne v10, v11, :cond_7

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Landroid/graphics/Rect;->right:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpPos:Landroid/graphics/Point;

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    iput v14, v10, Landroid/graphics/Point;->x:I

    iput v13, v10, Landroid/graphics/Point;->y:I

    :cond_7
    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$tmpPos:Landroid/graphics/Point;

    iget v14, v13, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_4

    :cond_8
    :goto_3
    move v10, v7

    :goto_4
    add-int/lit8 v2, v2, -0x1

    move v7, v10

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$navBarTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_b

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_a

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_5

    :cond_a
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_b
    :goto_5
    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
