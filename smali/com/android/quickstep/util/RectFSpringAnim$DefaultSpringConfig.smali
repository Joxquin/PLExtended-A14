.class public Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;
.super Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Ln1/m;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;->getDefaultTracking(Lcom/android/launcher3/DeviceProfile;)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->tracking:I

    const v1, 0x7f0704e3

    invoke-interface {p1, v1}, Ln1/m;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessX:F

    invoke-interface {p1, v1}, Ln1/m;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessY:F

    const v1, 0x7f0704e1

    invoke-interface {p1, v1}, Ln1/m;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingX:F

    invoke-interface {p1, v1}, Ln1/m;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingY:F

    iput-object p3, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->startRect:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->targetRect:Landroid/graphics/RectF;

    if-eqz p2, :cond_1

    iget-boolean p3, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p3, :cond_0

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const p2, 0x7f0704df

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p1

    goto :goto_0

    :cond_2
    const p2, 0x7f0704e0

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->rectStiffness:F

    return-void
.end method

.method private getDefaultTracking(Lcom/android/launcher3/DeviceProfile;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->startRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->targetRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget-object p0, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->targetRect:Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method
