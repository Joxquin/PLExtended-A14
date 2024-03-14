.class public final Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/a;
    .locals 4

    new-instance v0, Lq0/a;

    sget-object v1, Lu0/g;->a:Lu0/g;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq0/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;
    .locals 3

    new-instance v0, Lq0/b;

    if-eqz p2, :cond_0

    invoke-static {}, Lw0/h;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lu0/l;->a:Lu0/l;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq0/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/d;
    .locals 4

    new-instance v0, Lq0/d;

    sget-object v1, Lu0/r;->a:Lu0/r;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq0/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/f;
    .locals 4

    new-instance v0, Lq0/f;

    invoke-static {}, Lw0/h;->c()F

    move-result v1

    sget-object v2, Lu0/z;->a:Lu0/z;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lu0/u;->a(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq0/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method
