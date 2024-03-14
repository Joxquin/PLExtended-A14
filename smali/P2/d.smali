.class public LP2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LP2/c;


# instance fields
.field public final a:LP2/a;

.field public final b:Ljava/lang/Character;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, LP2/c;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, LP2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, LP2/d;->c:LP2/c;

    new-instance v0, LP2/c;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    const-string v3, "base64Url()"

    invoke-direct {v0, v3, v2, v1}, LP2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, LP2/d;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    const-string v3, "base32()"

    invoke-direct {v0, v3, v2, v1}, LP2/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, LP2/d;

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const-string v3, "base32Hex()"

    invoke-direct {v0, v3, v2, v1}, LP2/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, LP2/b;

    new-instance v1, LP2/a;

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, LP2/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, LP2/b;-><init>(LP2/a;)V

    return-void
.end method

.method public constructor <init>(LP2/a;Ljava/lang/Character;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, LP2/d;->a:LP2/a;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 5
    iget-object p1, p1, LP2/a;->g:[B

    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    aget-byte p1, p1, v1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    const-string p1, "Padding character %s was already in alphabet"

    .line 6
    invoke-static {p1, p2, v0}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 7
    iput-object p2, p0, LP2/d;->b:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 8
    new-instance v0, LP2/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, LP2/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, LP2/d;-><init>(LP2/a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;[BII)V
    .locals 8

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, LO2/m;->j(III)V

    iget-object v0, p0, LP2/d;->a:LP2/a;

    iget v1, v0, LP2/a;->f:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    const-wide/16 v3, 0x0

    move v1, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v1, p4, :cond_1

    add-int v6, p3, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v3, v6

    shl-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v5

    iget p3, v0, LP2/a;->d:I

    sub-int/2addr p2, p3

    :goto_2
    mul-int/lit8 v1, p4, 0x8

    if-ge v2, v1, :cond_2

    sub-int v1, p2, v2

    ushr-long v6, v3, v1

    long-to-int v1, v6

    iget v6, v0, LP2/a;->c:I

    and-int/2addr v1, v6

    iget-object v6, v0, LP2/a;->b:[C

    aget-char v1, v6, v1

    move-object v6, p1

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_2

    :cond_2
    iget-object p0, p0, LP2/d;->b:Ljava/lang/Character;

    if-eqz p0, :cond_3

    :goto_3
    iget p2, v0, LP2/a;->f:I

    mul-int/2addr p2, v5

    if-ge v2, p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p2

    move-object p4, p1

    check-cast p4, Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LP2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LP2/d;

    iget-object v0, p1, LP2/d;->a:LP2/a;

    iget-object v2, p0, LP2/d;->a:LP2/a;

    invoke-virtual {v2, v0}, LP2/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LP2/d;->b:Ljava/lang/Character;

    iget-object p1, p1, LP2/d;->b:Ljava/lang/Character;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LP2/d;->a:LP2/a;

    invoke-virtual {v0}, LP2/a;->hashCode()I

    move-result v0

    iget-object p0, p0, LP2/d;->b:Ljava/lang/Character;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LP2/d;->a:LP2/a;

    iget-object v2, v1, LP2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    iget v1, v1, LP2/a;->d:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, LP2/d;->b:Ljava/lang/Character;

    if-nez p0, :cond_0

    const-string p0, ".omitPadding()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
