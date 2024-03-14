.class public final Lm1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    neg-float p0, p1

    float-to-double p0, p0

    const-wide v0, 0x3ff6666666666666L    # 1.4

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method
