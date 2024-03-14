.class abstract Lcom/android/quickstep/util/SplitToConfirmTimings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/SplitAnimationTimings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDuration()I
.end method

.method public getInstructionsFadeEnd()I
    .locals 0

    const/16 p0, 0x43

    return p0
.end method

.method public getInstructionsFadeEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitToConfirmTimings;->getInstructionsFadeEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitToConfirmTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsFadeStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsFadeStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitToConfirmTimings;->getInstructionsFadeStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitToConfirmTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getPlaceholderFadeInEnd()I
.end method

.method public abstract getPlaceholderFadeInStart()I
.end method

.method public abstract getPlaceholderIconFadeInEnd()I
.end method

.method public abstract getPlaceholderIconFadeInStart()I
.end method

.method public getStagedRectScaleXInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getStagedRectScaleYInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public abstract getStagedRectSlideEnd()I
.end method

.method public abstract getStagedRectSlideStart()I
.end method

.method public getStagedRectXInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getStagedRectYInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method
