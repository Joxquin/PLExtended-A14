.class public final Lf0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ld0/a;

    check-cast p2, Ld0/a;

    invoke-interface {p1}, Ld0/a;->a()I

    move-result p0

    invoke-interface {p2}, Ld0/a;->a()I

    move-result p1

    const/4 p2, 0x0

    if-gez p0, :cond_0

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-gez p0, :cond_1

    :goto_0
    move p2, v0

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    if-gez p1, :cond_2

    :goto_1
    move p2, v1

    goto :goto_2

    :cond_2
    if-ge p1, p0, :cond_3

    goto :goto_0

    :cond_3
    if-le p1, p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return p2
.end method
