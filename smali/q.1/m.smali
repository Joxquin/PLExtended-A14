.class public Lq/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public d:[I

.field public e:[Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lr/a;->a:[I

    goto :goto_0

    .line 4
    :cond_0
    new-array v0, p1, [I

    .line 5
    :goto_0
    iput-object v0, p0, Lq/m;->d:[I

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lr/a;->c:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    :goto_1
    iput-object p1, p0, Lq/m;->e:[Ljava/lang/Object;

    return-void
.end method

.method private final d(ILjava/lang/Object;)I
    .locals 5

    iget v0, p0, Lq/m;->f:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lq/m;->d:[I

    invoke-static {v0, p1, v1}, Lr/a;->a(II[I)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-static {p2, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lq/m;->d:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-static {p2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lq/m;->d:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method

.method private final f()I
    .locals 5

    iget v0, p0, Lq/m;->f:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lq/m;->d:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lr/a;->a(II[I)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lq/m;->d:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lq/m;->d:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lq/m;->f:I

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_3

    aget-object v2, p0, p1

    if-nez v2, :cond_0

    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    shr-int/lit8 p0, v2, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final c(I)V
    .locals 3

    iget v0, p0, Lq/m;->f:I

    iget-object v1, p0, Lq/m;->d:[I

    array-length v2, v1

    if-ge v2, p1, :cond_0

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lq/m;->d:[I

    iget-object v1, p0, Lq/m;->e:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lq/m;->e:[Ljava/lang/Object;

    :cond_0
    iget p0, p0, Lq/m;->f:I

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lq/m;->f:I

    if-lez v0, :cond_0

    sget-object v0, Lr/a;->a:[I

    iput-object v0, p0, Lq/m;->d:[I

    sget-object v0, Lr/a;->c:[Ljava/lang/Object;

    iput-object v0, p0, Lq/m;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lq/m;->f:I

    :cond_0
    iget p0, p0, Lq/m;->f:I

    if-gtz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lq/m;->b(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lq/m;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lq/m;->d(ILjava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lq/m;

    if-eqz v2, :cond_6

    iget v2, p0, Lq/m;->f:I

    move-object v3, p1

    check-cast v3, Lq/m;

    iget v3, v3, Lq/m;->f:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lq/m;

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-nez v6, :cond_2

    invoke-virtual {p1, v4}, Lq/m;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    return v1

    :cond_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_c

    iget v2, p0, Lq/m;->f:I

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lq/m;->f:I

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_b

    invoke-virtual {p0, v3}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-nez v6, :cond_8

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    return v1

    :cond_9
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_a

    return v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return v0

    :catch_0
    :cond_c
    return v1
.end method

.method public final g(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lq/m;->f:I

    if-ge p1, v2, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    invoke-static {p0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p2, p0, p1

    :cond_0
    return-object p2
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget v2, p0, Lq/m;->f:I

    if-ge p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_9

    iget-object v2, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    iget v5, p0, Lq/m;->f:I

    if-gt v5, v1, :cond_1

    invoke-virtual {p0}, Lq/m;->clear()V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v6, v5, -0x1

    iget-object v7, p0, Lq/m;->d:[I

    array-length v8, v7

    const/16 v9, 0x8

    if-le v8, v9, :cond_5

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    if-ge v5, v8, :cond_5

    if-le v5, v9, :cond_2

    shr-int/lit8 v8, v5, 0x1

    add-int v9, v5, v8

    :cond_2
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    const-string v10, "copyOf(this, newSize)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, p0, Lq/m;->d:[I

    iget-object v8, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v1, v9, 0x1

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lq/m;->e:[Ljava/lang/Object;

    iget v1, p0, Lq/m;->f:I

    if-ne v5, v1, :cond_4

    if-lez p1, :cond_3

    iget-object v1, p0, Lq/m;->d:[I

    invoke-static {v0, v0, v7, v1, p1}, Lkotlin/collections/m;->d(II[I[II)V

    iget-object v1, p0, Lq/m;->e:[Ljava/lang/Object;

    invoke-static {v0, v0, v3, v2, v1}, Lkotlin/collections/m;->c(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_3
    if-ge p1, v6, :cond_7

    iget-object v0, p0, Lq/m;->d:[I

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v8, v6, 0x1

    invoke-static {p1, v1, v7, v0, v8}, Lkotlin/collections/m;->d(II[I[II)V

    iget-object p1, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v0, v1, 0x1

    shl-int/lit8 v1, v8, 0x1

    invoke-static {v3, v0, v1, v2, p1}, Lkotlin/collections/m;->c(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_5
    if-ge p1, v6, :cond_6

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v6, 0x1

    invoke-static {p1, v0, v7, v7, v2}, Lkotlin/collections/m;->d(II[I[II)V

    iget-object p1, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/2addr v0, v1

    shl-int/2addr v2, v1

    invoke-static {v3, v0, v2, p1, p1}, Lkotlin/collections/m;->c(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/2addr v0, v1

    aput-object v2, p1, v0

    :cond_7
    :goto_1
    iget p1, p0, Lq/m;->f:I

    if-ne v5, p1, :cond_8

    iput v6, p0, Lq/m;->f:I

    :goto_2
    return-object v4

    :cond_8
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_9
    const-string p0, "Expected index to be within 0..size()-1, but was "

    invoke-static {p0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lq/m;->d:[I

    iget-object v1, p0, Lq/m;->e:[Ljava/lang/Object;

    iget p0, p0, Lq/m;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, p0, :cond_1

    aget-object v6, v1, v3

    aget v7, v0, v4

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v5
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget v2, p0, Lq/m;->f:I

    if-ge p1, v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    shl-int/2addr p1, v1

    add-int/2addr p1, v1

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    invoke-static {p0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lq/m;->f:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget v2, p0, Lq/m;->f:I

    if-ge p1, v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/2addr p1, v1

    add-int/2addr p1, v1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    invoke-static {p0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lq/m;->f:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v1, p1}, Lq/m;->d(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lq/m;->f()I

    move-result v2

    :goto_1
    if-ltz v2, :cond_2

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lq/m;->e:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_2
    not-int v2, v2

    iget-object v3, p0, Lq/m;->d:[I

    array-length v4, v3

    if-lt v0, v4, :cond_6

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    if-lt v0, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lq/m;->d:[I

    iget-object v3, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lq/m;->e:[Ljava/lang/Object;

    iget v3, p0, Lq/m;->f:I

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_6
    :goto_3
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lq/m;->d:[I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4, v2, v3, v3, v0}, Lkotlin/collections/m;->d(II[I[II)V

    iget-object v3, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v2, 0x1

    iget v6, p0, Lq/m;->f:I

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6, v3, v3}, Lkotlin/collections/m;->c(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_7
    iget v3, p0, Lq/m;->f:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lq/m;->d:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8

    aput v1, v0, v2

    iget-object v0, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lq/m;->f:I

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lq/m;->h(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lq/m;->h(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lq/m;->i(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lq/m;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lq/m;->i(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lq/m;->f:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lq/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "{}"

    return-object p0

    :cond_0
    iget v0, p0, Lq/m;->f:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lq/m;->f:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(this Map)"

    if-eq v3, v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
