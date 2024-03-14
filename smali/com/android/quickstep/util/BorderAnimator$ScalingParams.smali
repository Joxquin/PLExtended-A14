.class public final Lcom/android/quickstep/util/BorderAnimator$ScalingParams;
.super Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
.source "SourceFile"


# instance fields
.field private final mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAlignmentAdjustmentInset()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderWidthPx:I

    return p0
.end method

.method public getRadiusAdjustment()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getAlignmentAdjustment()F

    move-result p0

    return p0
.end method

.method public onHideBorder()V
    .locals 4

    invoke-super {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onHideBorder()V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onShowBorder()V
    .locals 7

    invoke-super {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onShowBorder()V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderWidthPx:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, v4

    :goto_0
    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderWidthPx:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    :goto_1
    iget-object v5, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    div-float v1, v4, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;->mContentView:Landroid/view/View;

    div-float/2addr v4, v2

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
