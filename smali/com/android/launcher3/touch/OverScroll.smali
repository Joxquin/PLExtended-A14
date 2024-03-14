.class public final Lcom/android/launcher3/touch/OverScroll;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static dampedScroll(FI)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p0, v1

    mul-float v2, p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v2, p0

    :cond_1
    const p0, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, p0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
