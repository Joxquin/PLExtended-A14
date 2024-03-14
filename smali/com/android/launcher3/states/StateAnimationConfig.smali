.class public Lcom/android/launcher3/states/StateAnimationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public animFlags:I

.field public duration:J

.field protected final mInterpolators:[Landroid/view/animation/Interpolator;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    const/16 v0, 0x15

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iput-wide v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    iput v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    iget-boolean v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    iput-boolean v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public final hasAnimationFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setInterpolator(ILandroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aput-object p2, p0, p1

    return-void
.end method
