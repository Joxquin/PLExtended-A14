.class public final Lx3/h;
.super Lkotlin/collections/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final d:[Lokio/ByteString;

.field public final e:[I


# direct methods
.method public constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/f;-><init>()V

    iput-object p1, p0, Lx3/h;->d:[Lokio/ByteString;

    iput-object p2, p0, Lx3/h;->e:[I

    return-void
.end method

.method public static final varargs i([Lokio/ByteString;)Lx3/h;
    .locals 14

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_1

    new-instance p0, Lx3/h;

    new-array v0, v2, [Lokio/ByteString;

    filled-new-array {v2, v3}, [I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lx3/h;-><init>([Lokio/ByteString;[I)V

    goto/16 :goto_e

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    new-instance v0, Lkotlin/collections/i;

    invoke-direct {v0, p0, v2}, Lkotlin/collections/i;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-array v4, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "elements"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    if-nez v4, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    new-instance v5, Lkotlin/collections/i;

    invoke-direct {v5, v0, v1}, Lkotlin/collections/i;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v4

    :goto_2
    array-length v0, p0

    move v4, v2

    move v5, v4

    :goto_3
    if-ge v4, v0, :cond_d

    aget-object v6, p0, v4

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v12, ")."

    if-ltz v9, :cond_c

    if-gt v9, v11, :cond_b

    add-int/lit8 v9, v9, -0x1

    move v11, v2

    :goto_4
    if-gt v11, v9, :cond_9

    add-int v12, v11, v9

    ushr-int/2addr v12, v1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Comparable;

    if-ne v13, v6, :cond_5

    move v13, v2

    goto :goto_5

    :cond_5
    if-nez v13, :cond_6

    move v13, v3

    goto :goto_5

    :cond_6
    if-nez v6, :cond_7

    move v13, v1

    goto :goto_5

    :cond_7
    invoke-interface {v13, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    :goto_5
    if-gez v13, :cond_8

    add-int/lit8 v11, v12, 0x1

    goto :goto_4

    :cond_8
    if-lez v13, :cond_a

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    goto :goto_4

    :cond_9
    add-int/lit8 v11, v11, 0x1

    neg-int v12, v11

    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toIndex ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex (0) is greater than toIndex ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->d()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    goto :goto_6

    :cond_e
    move v0, v2

    :goto_6
    if-eqz v0, :cond_19

    move v0, v2

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_13

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v0, 0x1

    move v5, v4

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "prefix"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lokio/ByteString;->d()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Lokio/ByteString;->k(Lokio/ByteString;I)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v6}, Lokio/ByteString;->d()I

    move-result v8

    invoke-virtual {v3}, Lokio/ByteString;->d()I

    move-result v9

    if-eq v8, v9, :cond_f

    move v8, v1

    goto :goto_9

    :cond_f
    move v8, v2

    :goto_9
    if-eqz v8, :cond_11

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v6, v8, :cond_10

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "duplicate option: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move v0, v4

    goto :goto_7

    :cond_13
    new-instance v0, Lx3/b;

    invoke-direct {v0}, Lx3/b;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v5, v0

    invoke-static/range {v3 .. v10}, Lx3/g;->a(JLx3/b;ILjava/util/List;IILjava/util/List;)V

    iget-wide v3, v0, Lx3/b;->e:J

    const/4 v5, 0x4

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    new-array v3, v3, [I

    move v4, v2

    :goto_a
    iget-wide v5, v0, Lx3/b;->e:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_14

    move v7, v1

    goto :goto_b

    :cond_14
    move v7, v2

    :goto_b
    if-nez v7, :cond_18

    add-int/lit8 v7, v4, 0x1

    const-wide/16 v8, 0x4

    cmp-long v5, v5, v8

    if-ltz v5, :cond_17

    iget-object v5, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v6, v5, Lx3/l;->b:I

    iget v10, v5, Lx3/l;->c:I

    sub-int v11, v10, v6

    int-to-long v11, v11

    cmp-long v11, v11, v8

    if-gez v11, :cond_15

    invoke-virtual {v0}, Lx3/b;->c()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    invoke-virtual {v0}, Lx3/b;->c()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    invoke-virtual {v0}, Lx3/b;->c()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    invoke-virtual {v0}, Lx3/b;->c()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    goto :goto_d

    :cond_15
    add-int/lit8 v11, v6, 0x1

    iget-object v12, v5, Lx3/l;->a:[B

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v6, v11

    add-int/lit8 v11, v13, 0x1

    aget-byte v13, v12, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v6, v13

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v6, v11

    iget-wide v11, v0, Lx3/b;->e:J

    sub-long/2addr v11, v8

    iput-wide v11, v0, Lx3/b;->e:J

    if-ne v13, v10, :cond_16

    invoke-virtual {v5}, Lx3/l;->a()Lx3/l;

    move-result-object v8

    iput-object v8, v0, Lx3/b;->d:Lx3/l;

    invoke-static {v5}, Lx3/m;->a(Lx3/l;)V

    goto :goto_c

    :cond_16
    iput v13, v5, Lx3/l;->b:I

    :goto_c
    move v5, v6

    :goto_d
    aput v5, v3, v4

    move v4, v7

    goto/16 :goto_a

    :cond_17
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_18
    new-instance v0, Lx3/h;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "copyOf(this, size)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v3}, Lx3/h;-><init>([Lokio/ByteString;[I)V

    move-object p0, v0

    :goto_e
    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx3/h;->d:[Lokio/ByteString;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Lx3/h;->d:[Lokio/ByteString;

    array-length p0, p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/f;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/f;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
