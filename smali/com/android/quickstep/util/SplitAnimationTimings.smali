.class public interface abstract Lcom/android/quickstep/util/SplitAnimationTimings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABORT_DURATION:I = 0x1f4

.field public static final PHONE_CONFIRM_DURATION:I = 0x14d

.field public static final PHONE_ENTER_DURATION:I = 0x205

.field public static final PHONE_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

.field public static final PHONE_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;

.field public static final TABLET_CONFIRM_DURATION:I = 0x1f4

.field public static final TABLET_ENTER_DURATION:I = 0x362

.field public static final TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

.field public static final TABLET_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

.field public static final TABLET_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/TabletOverviewToSplitTimings;

    invoke-direct {v0}, Lcom/android/quickstep/util/TabletOverviewToSplitTimings;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    new-instance v0, Lcom/android/quickstep/util/TabletHomeToSplitTimings;

    invoke-direct {v0}, Lcom/android/quickstep/util/TabletHomeToSplitTimings;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    new-instance v0, Lcom/android/quickstep/util/TabletSplitToConfirmTimings;

    invoke-direct {v0}, Lcom/android/quickstep/util/TabletSplitToConfirmTimings;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;

    new-instance v0, Lcom/android/quickstep/util/PhoneOverviewToSplitTimings;

    invoke-direct {v0}, Lcom/android/quickstep/util/PhoneOverviewToSplitTimings;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->PHONE_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    new-instance v0, Lcom/android/quickstep/util/PhoneSplitToConfirmTimings;

    invoke-direct {v0}, Lcom/android/quickstep/util/PhoneSplitToConfirmTimings;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->PHONE_SPLIT_TO_CONFIRM:Lcom/android/quickstep/util/SplitAnimationTimings;

    return-void
.end method


# virtual methods
.method public getActionsFadeEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActionsFadeStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDuration()I
.end method

.method public getGridSlideDurationOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGridSlidePrimaryInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getGridSlideSecondaryInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getGridSlideStaggerOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGridSlideStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconFadeEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconFadeStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsContainerFadeInEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsContainerFadeInStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsFadeEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsFadeStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsTextFadeInEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsTextFadeInStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsUnfoldEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInstructionsUnfoldStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getPlaceholderFadeInEnd()I
.end method

.method public getPlaceholderFadeInEndOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getPlaceholderFadeInEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getPlaceholderFadeInStart()I
.end method

.method public getPlaceholderFadeInStartOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getPlaceholderFadeInStart()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getPlaceholderIconFadeInEnd()I
.end method

.method public getPlaceholderIconFadeInEndOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getPlaceholderIconFadeInEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getPlaceholderIconFadeInStart()I
.end method

.method public getPlaceholderIconFadeInStartOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getPlaceholderIconFadeInStart()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getScrimFadeInEndOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScrimFadeInStartOffset()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getStagedRectScaleXInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectScaleYInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectSlideEnd()I
.end method

.method public getStagedRectSlideEndOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getStagedRectSlideStart()I
.end method

.method public getStagedRectSlideStartOffset()F
    .locals 1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStart()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getStagedRectXInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectYInterpolator()Landroid/view/animation/Interpolator;
.end method
