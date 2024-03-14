.class final Lcom/android/launcher3/CellLayout$5;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "animationProgress"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget p0, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    iget p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz p2, :cond_0

    move p0, v0

    :cond_0
    iget p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr p2, p0

    sub-float v1, v0, p0

    iget v2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v2, v1

    add-float/2addr v2, p2

    iget p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr p0, p2

    iget p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    iget-object p0, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/Reorderable;

    invoke-interface {p0}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v1, v3}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(FFI)V

    iget p2, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    iget v1, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, p2

    iget p1, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/android/launcher3/Reorderable;->setReorderBounceScale(F)V

    return-void
.end method
