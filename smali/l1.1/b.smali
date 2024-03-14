.class public final Ll1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    const-string p0, "sourceColor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    add-double/2addr p0, v0

    return-wide p0
.end method
