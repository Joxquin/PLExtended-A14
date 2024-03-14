.class public Lcom/android/quickstep/util/RectFSpringAnim$TaskbarHotseatSpringConfig;
.super Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Ln1/m;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->tracking:I

    const p2, 0x7f070541

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessX:F

    const p2, 0x7f070543

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessY:F

    const p2, 0x7f070540

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingX:F

    const p2, 0x7f070542

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingY:F

    const p2, 0x7f07053f

    invoke-interface {p1, p2}, Ln1/m;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->rectStiffness:F

    return-void
.end method
