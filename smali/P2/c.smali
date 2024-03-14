.class public final LP2/c;
.super LP2/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(LP2/a;Ljava/lang/Character;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LP2/d;-><init>(LP2/a;Ljava/lang/Character;)V

    .line 3
    iget-object p0, p1, LP2/a;->b:[C

    array-length p0, p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, LP2/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, LP2/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, LP2/c;-><init>(LP2/a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Appendable;[BI)V
    .locals 6

    const/4 v0, 0x0

    add-int v1, v0, p3

    array-length v2, p2

    invoke-static {v0, v1, v2}, LO2/m;->j(III)V

    :goto_0
    const/4 v2, 0x3

    if-lt p3, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x12

    iget-object v4, p0, LP2/d;->a:LP2/a;

    iget-object v5, v4, LP2/a;->b:[C

    aget-char v3, v5, v3

    move-object v5, p1

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    iget-object v4, v4, LP2/a;->b:[C

    aget-char v3, v4, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v4, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v4, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, -0x3

    move v0, v2

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v0, v1}, LP2/d;->a(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method public final c(LP2/a;)LP2/d;
    .locals 1

    new-instance p0, LP2/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LP2/c;-><init>(LP2/a;Ljava/lang/Character;)V

    return-object p0
.end method
