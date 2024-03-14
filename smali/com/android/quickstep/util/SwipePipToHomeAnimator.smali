.class public Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.super Lcom/android/quickstep/util/RectFSpringAnim;
.source "SourceFile"


# static fields
.field private static final END_PROGRESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SwipePipToHomeAnimator"


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mAppBounds:Landroid/graphics/Rect;

.field private final mCurrentBounds:Landroid/graphics/Rect;

.field private final mCurrentBoundsF:Landroid/graphics/RectF;

.field private final mDestinationBounds:Landroid/graphics/Rect;

.field private final mDestinationBoundsTransformed:Landroid/graphics/Rect;

.field private final mFromRotation:I

.field private mHasAnimationEnded:Z

.field private final mHomeToWindowPositionMap:Landroid/graphics/Matrix;

.field private final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private mPipContentOverlay:Lcom/android/wm/shell/pip/d;

.field private final mSourceHintRectInsets:Landroid/graphics/Rect;

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRectHint:Landroid/graphics/Rect;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

.field private final mTaskId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p12

    .line 2
    new-instance v7, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-direct {v7, v1, v9, v5, v8}, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-direct {p0, v7}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;)V

    .line 3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    .line 4
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iput-object v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    .line 6
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 7
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    .line 8
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    .line 9
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v13, Landroid/animation/RectEvaluator;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v13, v14}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    .line 11
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    .line 12
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    move/from16 v14, p2

    .line 13
    iput v14, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    .line 14
    iput-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 15
    iput-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 16
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v14, p8

    .line 17
    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 18
    invoke-virtual {v5, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v5, p10

    .line 19
    invoke-virtual {v12, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v10, p11

    .line 20
    iput v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    .line 21
    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 22
    new-instance v6, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    move/from16 v10, p13

    move/from16 v11, p14

    invoke-direct {v6, v10, v11}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;-><init>(II)V

    iput-object v6, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    if-eqz p6, :cond_1

    .line 23
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lt v6, v10, :cond_0

    .line 24
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v6, v5, :cond_1

    :cond_0
    move-object v5, v9

    goto :goto_0

    :cond_1
    move-object/from16 v5, p6

    :goto_0
    if-nez v5, :cond_2

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 26
    iput-object v9, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    .line 27
    new-instance v4, Lcom/android/wm/shell/pip/c;

    invoke-virtual/range {p15 .. p15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v6, v1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v6, v2}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move/from16 v2, p4

    invoke-direct {v4, v5, v8, v1, v2}, Lcom/android/wm/shell/pip/c;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    iput-object v4, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/d;

    .line 29
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 30
    iget-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/d;

    check-cast v2, Lcom/android/wm/shell/pip/c;

    .line 31
    iget-object v4, v2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    .line 32
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 33
    iget-object v4, v2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 34
    iget-object v4, v2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    iget-object v5, v2, Lcom/android/wm/shell/pip/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 35
    iget-object v4, v2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 36
    iget-object v2, v2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 37
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    .line 40
    :goto_1
    new-instance v1, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;

    move-object/from16 v2, p15

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    new-instance v1, Lcom/android/quickstep/util/W;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/W;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V

    return-void
.end method

.method private getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
    .locals 6

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_0

    sub-float/2addr v4, p1

    mul-float/2addr v1, v4

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v3

    add-float/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    :goto_0
    add-float/2addr p0, p1

    goto :goto_2

    :cond_0
    sub-float/2addr v4, p1

    mul-float/2addr v2, v4

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    if-ne v0, v3, :cond_2

    mul-float/2addr v1, p1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    mul-float/2addr v2, p1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_1
    sub-int/2addr v0, p0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float p0, p0

    goto :goto_0

    :goto_2
    new-instance p1, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;-><init>(FFFI)V

    return-object p1
.end method

.method public static synthetic l(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return p0
.end method

.method public static bridge synthetic n(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return-void
.end method

.method public static bridge synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 8

    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->a(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v5

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->b(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v6

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->c(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v7

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method private onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 12

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    move-object v4, p2

    move-object v8, p3

    move-object v9, v0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->a(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v9

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->b(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v10

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->c(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v11

    move-object v4, p2

    move-object v7, p3

    move-object v8, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndRotate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method private onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 7
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/d;

    if-eqz p2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    check-cast p2, Lcom/android/wm/shell/pip/c;

    .line 9
    iget-object v1, p2, Lcom/android/wm/shell/pip/c;->c:Landroid/graphics/Matrix;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 11
    iget-object v2, p2, Lcom/android/wm/shell/pip/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 15
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 16
    iget-object v0, p2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    iget-object v2, p2, Lcom/android/wm/shell/pip/c;->d:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p2, p2, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sub-float v1, p3, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 17
    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_2

    .line 19
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    goto :goto_1

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private onAnimationUpdate(Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4
    iget-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getContentOverlay()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/d;->a:Landroid/view/SurfaceControl;

    :goto_0
    return-object p0
.end method

.method public getDestinationBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->setShouldDisableCanAffectSystemUiFlags(Z)V

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    return p0
.end method
