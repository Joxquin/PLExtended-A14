.class final Lcom/android/launcher3/util/FlingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private mCount:I

.field private mOffset:F

.field final synthetic val$duration:I

.field final synthetic val$startTime:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    iput p3, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    add-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
