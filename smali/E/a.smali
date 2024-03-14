.class public final LE/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LE/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(DDD)I
    .locals 20

    sget-object v0, LE/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double v4, p0, v2

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v4, v6

    const-wide v8, 0x407f400000000000L    # 500.0

    div-double v8, p2, v8

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    div-double v10, p4, v10

    sub-double v10, v4, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v14, v16

    const-wide v18, 0x408c3a6666666666L    # 903.3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    mul-double/2addr v8, v6

    sub-double/2addr v8, v2

    div-double v14, v8, v18

    :goto_0
    const-wide v8, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v0, p0, v8

    if-lez v0, :cond_2

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_1

    :cond_2
    div-double v4, p0, v18

    :goto_1
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v0, v8, v16

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    mul-double/2addr v10, v6

    sub-double/2addr v10, v2

    div-double v8, v10, v18

    :goto_2
    const-wide v2, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v2, v14

    const/4 v0, 0x0

    aput-wide v2, v1, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const/4 v0, 0x1

    aput-wide v4, v1, v0

    const-wide v6, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v6, v8

    const/4 v0, 0x2

    aput-wide v6, v1, v0

    move-wide/from16 p0, v2

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    invoke-static/range {p0 .. p5}, LE/a;->c(DDD)I

    move-result v0

    return v0
.end method

.method public static b(III[D)V
    .locals 16

    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v7, :cond_0

    div-double/2addr v1, v12

    goto :goto_0

    :cond_0
    add-double/2addr v1, v14

    div-double/2addr v1, v8

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_0
    move/from16 v7, p1

    int-to-double v10, v7

    div-double/2addr v10, v3

    cmpg-double v7, v10, v5

    if-gez v7, :cond_1

    div-double/2addr v10, v12

    goto :goto_1

    :cond_1
    add-double/2addr v10, v14

    div-double/2addr v10, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_1
    move/from16 v7, p2

    int-to-double v8, v7

    div-double/2addr v8, v3

    cmpg-double v3, v8, v5

    if-gez v3, :cond_2

    div-double/2addr v8, v12

    goto :goto_2

    :cond_2
    add-double/2addr v8, v14

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v8, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    :goto_2
    const-wide v3, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v3, v1

    const-wide v5, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v5, v10

    add-double/2addr v5, v3

    const-wide v3, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v3, v8

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const/4 v7, 0x0

    aput-wide v3, v0, v7

    const-wide v3, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v3, v1

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v10

    add-double/2addr v12, v3

    const-wide v3, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v3, v8

    add-double/2addr v3, v12

    mul-double/2addr v3, v5

    const/4 v7, 0x1

    aput-wide v3, v0, v7

    const-wide v3, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v3

    const-wide v3, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v10, v3

    add-double/2addr v10, v1

    const-wide v1, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v8, v1

    add-double/2addr v8, v10

    mul-double/2addr v8, v5

    const/4 v1, 0x2

    aput-wide v8, v0, v1

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(DDD)I
    .locals 17

    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v2, v0

    const-wide v0, -0x402016f0068db8bbL    # -0.4986

    mul-double v0, v0, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v6, v4

    const-wide v4, 0x3fa53f7ced916873L    # 0.0415

    mul-double v4, v4, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v8, v6

    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v6, v6, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_0

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v13

    sub-double/2addr v0, v9

    goto :goto_0

    :cond_0
    mul-double/2addr v0, v15

    :goto_0
    cmpl-double v8, v4, v2

    if-lez v8, :cond_1

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v13

    sub-double/2addr v4, v9

    goto :goto_1

    :cond_1
    mul-double/2addr v4, v15

    :goto_1
    cmpl-double v2, v6, v2

    if-lez v2, :cond_2

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_2

    :cond_2
    mul-double v2, v6, v15

    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, LE/a;->i(I)I

    move-result v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, LE/a;->i(I)I

    move-result v1

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, LE/a;->i(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static d(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static e(II)D
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, LE/a;->h(II)I

    move-result p0

    :cond_0
    invoke-static {p0}, LE/a;->f(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    invoke-static {p1}, LE/a;->f(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background can not be translucent: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(I)D
    .locals 4

    sget-object v0, LE/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v2, p0, v1}, LE/a;->b(III[D)V

    const/4 p0, 0x1

    aget-wide v0, v1, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static g(I[D)V
    .locals 12

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, LE/a;->b(III[D)V

    const/4 p0, 0x0

    aget-wide v0, p1, p0

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    const/4 v5, 0x2

    aget-wide v6, p1, v5

    array-length v8, p1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const-wide v8, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v0, v8

    invoke-static {v0, v1}, LE/a;->j(D)D

    move-result-wide v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, LE/a;->j(D)D

    move-result-wide v3

    const-wide v8, 0x405b3883126e978dL    # 108.883

    div-double/2addr v6, v8

    invoke-static {v6, v7}, LE/a;->j(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x405d000000000000L    # 116.0

    mul-double/2addr v8, v3

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aput-wide v8, p1, p0

    const-wide v8, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v3

    mul-double/2addr v0, v8

    aput-wide v0, p1, v2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr v3, v6

    mul-double/2addr v3, v0

    aput-wide v3, p1, v5

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(II)I
    .locals 8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v5, v0

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v5, v4

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-nez v2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v7, v0

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v7, v4

    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, v1

    mul-int/2addr p1, v0

    mul-int/2addr p1, v3

    add-int/2addr p1, p0

    mul-int/lit16 p0, v2, 0xff

    div-int v6, p1, p0

    :goto_2
    invoke-static {v2, v5, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static j(D)D
    .locals 2

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static k(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
