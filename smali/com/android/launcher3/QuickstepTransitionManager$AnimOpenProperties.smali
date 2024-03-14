.class final Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cropCenterXEnd:I

.field public final cropCenterXStart:I

.field public final cropCenterYEnd:I

.field public final cropCenterYStart:I

.field public final cropHeightEnd:I

.field public final cropHeightStart:I

.field public final cropWidthEnd:I

.field public final cropWidthStart:I

.field public final dX:F

.field public final dY:F

.field public final finalAppIconScale:F

.field public final iconAlphaStart:F

.field public final initialAppIconScale:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    instance-of v2, p4, Lcom/android/launcher3/BubbleTextView;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v2, :cond_0

    check-cast p4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p4

    instance-of v2, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v3

    :goto_0
    iput p4, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->initialAppIconScale:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iput p4, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->finalAppIconScale:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    sub-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p5

    sub-int/2addr p5, p6

    int-to-float p5, p5

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p6

    sub-float/2addr p4, p6

    iput p4, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dX:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    sub-float/2addr p5, p3

    iput p5, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dY:F

    if-eqz p7, :cond_1

    if-nez p8, :cond_1

    const/4 v3, 0x0

    :cond_1
    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->iconAlphaStart:F

    const-string p3, "starting_surface_icon_size"

    const/16 p4, 0x6c

    invoke-static {p4, p1, p3}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(ILandroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthEnd:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightEnd:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXEnd:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYEnd:I

    return-void
.end method
