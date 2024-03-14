.class public final LX2/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/q0;


# virtual methods
.method public final a(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, LX2/L0;

    iget-object p0, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-static {p0}, Lio/grpc/Status$Code;->a(Lio/grpc/Status$Code;)[B

    move-result-object p0

    return-object p0
.end method

.method public final b([B)Ljava/lang/Object;
    .locals 5

    array-length p0, p1

    const/4 v0, 0x0

    const/16 v1, 0x30

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    aget-byte p0, p1, v0

    if-ne p0, v1, :cond_0

    sget-object p0, LX2/L0;->e:LX2/L0;

    goto :goto_2

    :cond_0
    array-length p0, p1

    const/16 v3, 0x39

    if-eq p0, v2, :cond_3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-byte p0, p1, v0

    if-lt p0, v1, :cond_5

    if-le p0, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    move p0, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    aget-byte v0, p1, v0

    if-lt v0, v1, :cond_5

    if-le v0, v3, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v1

    add-int/2addr v0, p0

    sget-object p0, LX2/L0;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/L0;

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/String;

    sget-object v0, LO2/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "Unknown code "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LX2/L0;->g:LX2/L0;

    invoke-virtual {p1, p0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    :goto_2
    return-object p0
.end method
