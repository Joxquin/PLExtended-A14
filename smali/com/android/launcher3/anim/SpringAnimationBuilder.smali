.class public final Lcom/android/launcher3/anim/SpringAnimationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private beta:D

.field private gamma:D

.field private final mContext:Landroid/content/Context;

.field private mDampingRatio:F

.field private mDuration:F

.field private mEndValue:F

.field private mMinVisibleChange:F

.field private mStartValue:F

.field private mStiffness:F

.field private mValueThreshold:D

.field private mVelocity:F

.field private mVelocityThreshold:D

.field private va:D

.field private vb:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    const v1, 0x44bb8000    # 1500.0f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    iput-object p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/anim/SpringAnimationBuilder;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    return p0
.end method

.method private exponentialComponent(D)D
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->beta:D

    neg-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    const-wide p0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->computeParams()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/anim/j;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/anim/j;-><init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder$1;-><init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final computeParams()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    mul-float/2addr v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    mul-float/2addr v7, v6

    float-to-double v6, v7

    mul-double/2addr v6, v2

    iput-wide v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->beta:D

    iput-wide v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    iget v2, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    iget v3, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a:D

    mul-double v8, v6, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v4, v10

    div-double v12, v8, v12

    iget v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    float-to-double v14, v14

    div-double/2addr v14, v4

    add-double/2addr v14, v12

    iput-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->b:D

    div-double/2addr v8, v10

    mul-double v12, v14, v4

    sub-double/2addr v8, v12

    iput-wide v8, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->va:D

    mul-double/2addr v4, v2

    mul-double/2addr v6, v14

    div-double/2addr v6, v10

    add-double/2addr v6, v4

    iput-wide v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->vb:D

    iget v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    const v5, 0x3f266666    # 0.65f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mValueThreshold:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    neg-double v1, v2

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    div-double/2addr v1, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v3

    :goto_0
    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->va:D

    iget-wide v3, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->vb:D

    iget-wide v10, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    mul-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v3

    add-double v10, v10, v18

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v10, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    cmpl-double v3, v3, v10

    if-ltz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v3

    sub-double v3, v1, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide v8, 0x409f400000000000L    # 2000.0

    div-double v10, v6, v8

    :goto_1
    sub-double v5, v1, v3

    cmpg-double v5, v5, v10

    if-gez v5, :cond_1

    double-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    return-void

    :cond_1
    add-double v5, v3, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v7

    iget-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a:D

    iget-wide v12, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->b:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v12

    add-double v1, v1, v18

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v12, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mValueThreshold:D

    cmpl-double v1, v1, v12

    if-ltz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v1, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->va:D

    iget-wide v12, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->vb:D

    iget-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    mul-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v12

    add-double v1, v1, v18

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v7, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    cmpg-double v1, v1, v7

    if-gez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    move-wide v1, v5

    goto :goto_1

    :cond_4
    move-wide v3, v5

    move-wide/from16 v1, v16

    goto :goto_1

    :cond_5
    :goto_4
    add-double/2addr v1, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    goto/16 :goto_0
.end method

.method public final getDuration()J
    .locals 4

    iget p0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    float-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public final getInterpolatedValue(F)F
    .locals 10

    iget v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a:D

    iget-wide v6, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->b:D

    iget-wide v8, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v8

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iget p0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final setDampingRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEndValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    return-void
.end method

.method public final setMinimumVisibleChange(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setStartValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    return-void
.end method

.method public final setStartVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    return-void
.end method

.method public final setStiffness(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs setValues([F)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget v0, p1, v1

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    goto :goto_0

    :cond_0
    aget p1, p1, v1

    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    :goto_0
    return-void
.end method
