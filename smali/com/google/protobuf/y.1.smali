.class public final Lcom/google/protobuf/y;
.super Lcom/google/protobuf/x;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/protobuf/v;

    invoke-direct {p0, p3, p2}, Lcom/google/protobuf/v;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/protobuf/w;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/I;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/protobuf/B;
    .locals 0

    check-cast p1, Lcom/google/protobuf/G;

    iget-object p0, p1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/protobuf/B;
    .locals 1

    check-cast p1, Lcom/google/protobuf/G;

    iget-object p0, p1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    iget-boolean v0, p0, Lcom/google/protobuf/B;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/B;->a()Lcom/google/protobuf/B;

    move-result-object p0

    iput-object p0, p1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    :cond_0
    iget-object p0, p1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/p0;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/G;

    return p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/G;

    iget-object p0, p1, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    invoke-virtual {p0}, Lcom/google/protobuf/B;->j()V

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/I;

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/I;

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/I;

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
