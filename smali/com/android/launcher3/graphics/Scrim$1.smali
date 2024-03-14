.class final Lcom/android/launcher3/graphics/Scrim$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "scrimProgress"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/graphics/Scrim;

    iget p0, p1, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/graphics/Scrim;

    iget p0, p1, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_0

    iput p2, p1, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    iget-object p0, p1, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
