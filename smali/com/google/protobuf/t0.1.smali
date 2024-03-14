.class public final Lcom/google/protobuf/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/C0;


# instance fields
.field public final a:Lcom/google/protobuf/p0;

.field public final b:Lcom/google/protobuf/O0;

.field public final c:Z

.field public final d:Lcom/google/protobuf/x;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/p0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/t0;->c:Z

    iput-object p2, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    iput-object p3, p0, Lcom/google/protobuf/t0;->a:Lcom/google/protobuf/p0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/O0;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/D0;->y(Lcom/google/protobuf/x;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/google/protobuf/s;)V
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/B;->i()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/A;

    invoke-interface {v2}, Lcom/google/protobuf/A;->m()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/A;->b()V

    invoke-interface {v2}, Lcom/google/protobuf/A;->n()V

    instance-of v3, v1, Lcom/google/protobuf/U;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/protobuf/A;->getNumber()V

    check-cast v1, Lcom/google/protobuf/U;

    iget-object v1, v1, Lcom/google/protobuf/U;->d:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/W;

    invoke-virtual {v1}, Lcom/google/protobuf/X;->b()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lcom/google/protobuf/s;->g(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/A;->getNumber()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lcom/google/protobuf/s;->g(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/O0;->r(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/w;)V
    .locals 11

    iget-object v7, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v7, p1}, Lcom/google/protobuf/O0;->f(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v8

    iget-object v9, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {v9, p1}, Lcom/google/protobuf/x;->d(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v10

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/protobuf/o;->a()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/t0;->k(Lcom/google/protobuf/o;Lcom/google/protobuf/w;Lcom/google/protobuf/x;Lcom/google/protobuf/B;Lcom/google/protobuf/O0;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v7, p1, v8}, Lcom/google/protobuf/O0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7, p1, v8}, Lcom/google/protobuf/O0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->j(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/B;->g()Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/P0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/t0;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/B;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/protobuf/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/J;

    iget-object v2, v1, Lcom/google/protobuf/J;->unknownFields:Lcom/google/protobuf/P0;

    sget-object v3, Lcom/google/protobuf/P0;->f:Lcom/google/protobuf/P0;

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/google/protobuf/P0;

    invoke-direct {v2}, Lcom/google/protobuf/P0;-><init>()V

    iput-object v2, v1, Lcom/google/protobuf/J;->unknownFields:Lcom/google/protobuf/P0;

    :cond_0
    move-object v10, v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/G;

    iget-object v2, v1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    iget-boolean v3, v2, Lcom/google/protobuf/B;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/B;->a()Lcom/google/protobuf/B;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    :cond_1
    const/4 v11, 0x0

    move/from16 v1, p3

    move-object v2, v11

    :goto_0
    if-ge v1, v8, :cond_d

    invoke-static {v7, v1, v9}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v3

    iget v1, v9, Lcom/google/protobuf/e;->a:I

    const/4 v4, 0x2

    const/16 v5, 0xb

    iget-object v6, v0, Lcom/google/protobuf/t0;->a:Lcom/google/protobuf/p0;

    iget-object v12, v0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    iget-object v13, v9, Lcom/google/protobuf/e;->d:Lcom/google/protobuf/w;

    if-eq v1, v5, :cond_4

    and-int/lit8 v5, v1, 0x7

    if-ne v5, v4, :cond_3

    ushr-int/lit8 v2, v1, 0x3

    invoke-virtual {v12, v13, v6, v2}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;

    move-result-object v12

    if-nez v12, :cond_2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/f;->i(I[BIILcom/google/protobuf/P0;Lcom/google/protobuf/e;)I

    move-result v1

    move-object v2, v12

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    throw v11

    :cond_3
    invoke-static {v1, v7, v3, v8, v9}, Lcom/google/protobuf/f;->o(I[BIILcom/google/protobuf/e;)I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v5, v11

    :goto_1
    if-ge v3, v8, :cond_b

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v3

    iget v14, v9, Lcom/google/protobuf/e;->a:I

    ushr-int/lit8 v15, v14, 0x3

    and-int/lit8 v11, v14, 0x7

    if-eq v15, v4, :cond_8

    const/4 v4, 0x3

    if-eq v15, v4, :cond_5

    goto :goto_2

    :cond_5
    if-nez v2, :cond_7

    const/4 v4, 0x2

    if-ne v11, v4, :cond_6

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/f;->a([BILcom/google/protobuf/e;)I

    move-result v3

    iget-object v4, v9, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    const/4 v4, 0x0

    throw v4

    :cond_8
    const/4 v4, 0x0

    if-nez v11, :cond_9

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v2, v9, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v12, v13, v6, v2}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;

    move-result-object v3

    move-object/from16 v16, v3

    move v3, v1

    move v1, v2

    move-object/from16 v2, v16

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v11, 0xc

    if-ne v14, v11, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v14, v7, v3, v8, v9}, Lcom/google/protobuf/f;->o(I[BIILcom/google/protobuf/e;)I

    move-result v3

    :goto_4
    move-object v11, v4

    const/4 v4, 0x2

    goto :goto_1

    :cond_b
    move-object v4, v11

    :goto_5
    if-eqz v5, :cond_c

    shl-int/lit8 v1, v1, 0x3

    const/4 v6, 0x2

    or-int/2addr v1, v6

    invoke-virtual {v10, v1, v5}, Lcom/google/protobuf/P0;->c(ILjava/lang/Object;)V

    :cond_c
    move v1, v3

    move-object v11, v4

    goto/16 :goto_0

    :cond_d
    if-ne v1, v8, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/O0;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/protobuf/t0;->c:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v2}, Lcom/google/protobuf/L0;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/L0;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/B;->f(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/L0;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/protobuf/B;->f(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/t0;->a:Lcom/google/protobuf/p0;

    instance-of v0, p0, Lcom/google/protobuf/J;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/J;

    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/J;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/J;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/p0;->newBuilderForType$1()Lcom/google/protobuf/E;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->buildPartial()Lcom/google/protobuf/J;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/P0;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/t0;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/t0;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/B;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final k(Lcom/google/protobuf/o;Lcom/google/protobuf/w;Lcom/google/protobuf/x;Lcom/google/protobuf/B;Lcom/google/protobuf/O0;Ljava/lang/Object;)Z
    .locals 6

    iget p4, p1, Lcom/google/protobuf/o;->b:I

    const/16 v0, 0xb

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/t0;->a:Lcom/google/protobuf/p0;

    if-eq p4, v0, :cond_2

    and-int/lit8 v0, p4, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    ushr-int/lit8 p4, p4, 0x3

    invoke-virtual {p3, p2, p0, p4}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p0}, Lcom/google/protobuf/x;->h(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/O0;->l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/o;->y()Z

    move-result p0

    return p0

    :cond_2
    const/4 p4, 0x0

    const/4 v0, 0x0

    move v3, p4

    move-object v2, v0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/o;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    iget v4, p1, Lcom/google/protobuf/o;->b:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    invoke-virtual {p1, p4}, Lcom/google/protobuf/o;->x(I)V

    iget-object v0, p1, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {v0}, Lcom/google/protobuf/n;->y()I

    move-result v3

    invoke-virtual {p3, p2, p0, v3}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p3, v0}, Lcom/google/protobuf/x;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/o;->f()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/o;->y()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    iget p0, p1, Lcom/google/protobuf/o;->b:I

    const/16 p1, 0xc

    if-ne p0, p1, :cond_a

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p3, v0}, Lcom/google/protobuf/x;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v3, v2}, Lcom/google/protobuf/O0;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v1

    :cond_a
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
