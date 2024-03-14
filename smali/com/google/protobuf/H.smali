.class public final Lcom/google/protobuf/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/A;


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/H;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final getNumber()V
    .locals 0

    return-void
.end method

.method public final j(Lcom/google/protobuf/o0;Lcom/google/protobuf/p0;)Lcom/google/protobuf/E;
    .locals 0

    check-cast p1, Lcom/google/protobuf/E;

    check-cast p2, Lcom/google/protobuf/J;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/E;->mergeFrom(Lcom/google/protobuf/J;)V

    return-object p1
.end method

.method public final m()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()V
    .locals 0

    return-void
.end method
