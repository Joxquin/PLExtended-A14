.class public final Ll1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/l;


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4

    const-string p0, "sourceColor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sub-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/16 v1, 0x168

    if-gez v0, :cond_0

    int-to-double v0, v1

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    int-to-double v0, v1

    rem-double/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method
