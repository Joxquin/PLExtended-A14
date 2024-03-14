.class public final Ly3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lokio/SegmentedByteString;I)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lokio/SegmentedByteString;->h:[I

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lokio/SegmentedByteString;->g:[[B

    array-length p0, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_1

    add-int v2, v0, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v1, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v0

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    not-int v2, v2

    :goto_1
    return v2
.end method
