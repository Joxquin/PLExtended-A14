.class public final Lcom/android/systemui/animation/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/systemui/animation/o;FJJ)F
    .locals 2

    const-string v0, "timings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/animation/o;->a:J

    long-to-float p0, v0

    mul-float/2addr p1, p0

    long-to-float p0, p2

    sub-float/2addr p1, p0

    long-to-float p0, p4

    div-float/2addr p1, p0

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p0, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method
