.class public final synthetic Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    sget-object p0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    check-cast p0, Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
