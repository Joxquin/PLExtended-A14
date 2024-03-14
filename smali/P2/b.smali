.class public final LP2/b;
.super LP2/d;
.source "SourceFile"


# instance fields
.field public final d:[C


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LP2/d;-><init>(LP2/a;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, LP2/b;->d:[C

    iget-object p1, p1, LP2/a;->b:[C

    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    const/16 v0, 0x100

    if-ge v2, v0, :cond_1

    iget-object v0, p0, LP2/b;->d:[C

    ushr-int/lit8 v1, v2, 0x4

    aget-char v1, p1, v1

    aput-char v1, v0, v2

    or-int/lit16 v1, v2, 0x100

    and-int/lit8 v3, v2, 0xf

    aget-char v3, p1, v3

    aput-char v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
