.class public final Ll1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 0

    const-string p0, "sourceColor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method
