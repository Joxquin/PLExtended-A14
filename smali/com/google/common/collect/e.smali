.class public final Lcom/google/common/collect/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Lcom/google/common/collect/d;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/e;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableMap;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/d;

    if-nez v1, :cond_16

    iget v1, v0, Lcom/google/common/collect/e;->b:I

    iget-object v2, v0, Lcom/google/common/collect/e;->a:[Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->j:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Lcom/google/common/collect/RegularImmutableMap;

    goto/16 :goto_b

    :cond_0
    sget-object v3, Lcom/google/common/collect/RegularImmutableMap;->j:Lcom/google/common/collect/ImmutableMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    aget-object v1, v2, v5

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1
    array-length v6, v2

    shr-int/2addr v6, v3

    invoke-static {v1, v6}, LO2/m;->i(II)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->o(I)I

    move-result v6

    if-ne v1, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v7, v6, -0x1

    const/16 v8, 0x80

    const/4 v9, -0x1

    if-gt v6, v8, :cond_8

    new-array v6, v6, [B

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    move v8, v5

    move v9, v8

    :goto_0
    if-ge v8, v1, :cond_6

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v5

    mul-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v5

    aget-object v12, v2, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v10, v3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/common/collect/b;->a(I)I

    move-result v13

    :goto_1
    and-int/2addr v13, v7

    aget-byte v14, v6, v13

    const/16 v15, 0xff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_4

    int-to-byte v14, v11

    aput-byte v14, v6, v13

    if-ge v9, v8, :cond_3

    aput-object v12, v2, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v10, v2, v11

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    aget-object v15, v2, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v4, Lcom/google/common/collect/d;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v2, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v12, v10, v13}, Lcom/google/common/collect/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    if-ne v9, v1, :cond_7

    :goto_3
    move-object v4, v6

    goto/16 :goto_a

    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_a

    :cond_8
    const v8, 0x8000

    if-gt v6, v8, :cond_e

    new-array v6, v6, [S

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([SS)V

    move v8, v5

    move v9, v8

    :goto_4
    if-ge v8, v1, :cond_c

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v5

    mul-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v5

    aget-object v12, v2, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v10, v3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/common/collect/b;->a(I)I

    move-result v13

    :goto_5
    and-int/2addr v13, v7

    aget-short v14, v6, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_a

    int-to-short v14, v11

    aput-short v14, v6, v13

    if-ge v9, v8, :cond_9

    aput-object v12, v2, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v10, v2, v11

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_a
    aget-object v15, v2, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    new-instance v4, Lcom/google/common/collect/d;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v2, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v12, v10, v13}, Lcom/google/common/collect/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v11

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_c
    if-ne v9, v1, :cond_d

    goto :goto_3

    :cond_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    goto :goto_a

    :cond_e
    new-array v6, v6, [I

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    move v8, v5

    move v10, v8

    :goto_7
    if-ge v8, v1, :cond_12

    mul-int/lit8 v11, v8, 0x2

    add-int/2addr v11, v5

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v5

    aget-object v13, v2, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v11, v3

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/common/collect/b;->a(I)I

    move-result v14

    :goto_8
    and-int/2addr v14, v7

    aget v15, v6, v14

    if-ne v15, v9, :cond_10

    aput v12, v6, v14

    if-ge v10, v8, :cond_f

    aput-object v13, v2, v12

    xor-int/lit8 v12, v12, 0x1

    aput-object v11, v2, v12

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_10
    aget-object v9, v2, v15

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v4, Lcom/google/common/collect/d;

    xor-int/lit8 v9, v15, 0x1

    aget-object v12, v2, v9

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v13, v11, v12}, Lcom/google/common/collect/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v2, v9

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v9, -0x1

    goto :goto_7

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v9, -0x1

    goto :goto_8

    :cond_12
    if-ne v10, v1, :cond_13

    goto/16 :goto_3

    :cond_13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    :goto_a
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_14

    check-cast v4, [Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v1, v4, v1

    check-cast v1, Lcom/google/common/collect/d;

    iput-object v1, v0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/d;

    aget-object v1, v4, v5

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    move v1, v3

    :cond_14
    new-instance v3, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v3, v1, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    move-object v1, v3

    :goto_b
    iget-object v0, v0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/d;

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {v0}, Lcom/google/common/collect/d;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-virtual {v1}, Lcom/google/common/collect/d;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final b(I)V
    .locals 3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/common/collect/e;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_3

    array-length v1, v0

    if-ltz p1, :cond_2

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 v1, p1, 0x1

    :cond_0
    if-gez v1, :cond_1

    const v1, 0x7fffffff

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/e;->a:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/e;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e;->b(I)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/e;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/e;->b:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/e;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "null value in entry: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "=null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "null key in entry: null="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
