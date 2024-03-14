.class public final LX2/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:LX2/h0;

.field public static final e:LP2/c;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, LX2/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LX2/r0;->c:Ljava/util/logging/Logger;

    new-instance v0, LX2/h0;

    invoke-direct {v0}, LX2/h0;-><init>()V

    sput-object v0, LX2/r0;->d:LX2/h0;

    sget-object v0, LP2/d;->c:LP2/c;

    iget-object v1, v0, LP2/d;->b:Ljava/lang/Character;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, LP2/d;->a:LP2/a;

    invoke-virtual {v0, v1}, LP2/c;->c(LP2/a;)LP2/d;

    move-result-object v0

    :goto_0
    check-cast v0, LP2/c;

    sput-object v0, LX2/r0;->e:LP2/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LX2/r0;->b:I

    .line 3
    iput-object p2, p0, LX2/r0;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LX2/n0;)V
    .locals 7

    iget v0, p0, LX2/r0;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    move v0, v1

    move v2, v0

    :goto_1
    iget v3, p0, LX2/r0;->b:I

    if-ge v0, v3, :cond_5

    iget-object v3, p1, LX2/n0;->b:[B

    iget-object v4, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, LX2/r0;->a:[Ljava/lang/Object;

    aget-object v4, v3, v5

    check-cast v4, [B

    mul-int/lit8 v6, v2, 0x2

    aput-object v4, v3, v6

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v3, v5

    instance-of v5, v3, [[B

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    array-length v3, v3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, LX2/r0;->b(I)V

    :cond_4
    iget-object v3, p0, LX2/r0;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    aput-object v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p0, LX2/r0;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 3

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, LX2/r0;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object p1, p0, LX2/r0;->a:[Ljava/lang/Object;

    return-void
.end method

.method public final c(LX2/n0;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LX2/r0;->b:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p1, LX2/n0;->b:[B

    iget-object v2, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LX2/r0;->a:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object p0, p0, v3

    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    invoke-virtual {p1, p0}, LX2/n0;->b([B)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, LX2/o0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LX2/o0;->a()[B

    move-result-object p0

    invoke-virtual {p1, p0}, LX2/n0;->b([B)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(LX2/n0;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "value"

    invoke-static {p2, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, LX2/r0;->b:I

    mul-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v2, p0, LX2/r0;->a:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, LX2/r0;->b(I)V

    :cond_2
    iget v0, p0, LX2/r0;->b:I

    iget-object v1, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p1, LX2/n0;->b:[B

    aput-object v3, v1, v2

    invoke-virtual {p1, p2}, LX2/n0;->c(Ljava/lang/Object;)[B

    move-result-object p1

    iget-object p2, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aput-object p1, p2, v0

    iget p1, p0, LX2/r0;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LX2/r0;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LX2/r0;->b:I

    if-ge v2, v3, :cond_4

    if-eqz v2, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, LX2/r0;->a:[Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x2

    aget-object v4, v4, v5

    check-cast v4, [B

    sget-object v6, LO2/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "-bin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LX2/r0;->a:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v3, v5

    instance-of v4, v3, [B

    if-eqz v4, :cond_1

    check-cast v3, [B

    goto :goto_1

    :cond_1
    check-cast v3, LX2/o0;

    invoke-virtual {v3}, LX2/o0;->a()[B

    move-result-object v3

    :goto_1
    sget-object v4, LX2/r0;->e:LP2/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    add-int/lit8 v6, v5, 0x0

    array-length v7, v3

    invoke-static {v1, v6, v7}, LO2/m;->j(III)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v4, LP2/d;->a:LP2/a;

    iget v8, v7, LP2/a;->e:I

    iget v7, v7, LP2/a;->f:I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v5, v7, v9}, LQ2/b;->a(IILjava/math/RoundingMode;)I

    move-result v7

    mul-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {v4, v6, v3, v5}, LP2/c;->b(Ljava/lang/Appendable;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, LX2/r0;->a:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    instance-of v5, v4, [B

    if-eqz v5, :cond_3

    check-cast v4, [B

    goto :goto_2

    :cond_3
    check-cast v4, LX2/o0;

    invoke-virtual {v4}, LX2/o0;->a()[B

    move-result-object v4

    :goto_2
    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
