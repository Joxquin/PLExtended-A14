.class public final Ll1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FLjava/util/List;)D
    .locals 6

    const-string v0, "hueAndRotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_5

    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_4

    cmpg-float v3, v0, v5

    if-gez v3, :cond_4

    float-to-double v2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v2

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/16 v1, 0x168

    if-gez v0, :cond_2

    int-to-double v0, v1

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    goto :goto_3

    :cond_2
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_3

    int-to-double v0, v1

    rem-double/2addr p0, v0

    :cond_3
    :goto_3
    return-wide p0

    :cond_4
    if-eq v1, v2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    float-to-double p0, p0

    return-wide p0
.end method
