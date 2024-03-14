.class public final Lcom/android/quickstep/util/BorderAnimator$SimpleParams;
.super Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getAlignmentAdjustmentInset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRadiusAdjustment()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getAlignmentAdjustment()F

    move-result p0

    neg-float p0, p0

    return p0
.end method
