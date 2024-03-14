.class public abstract Lcom/google/protobuf/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IILjava/lang/Object;)V
.end method

.method public abstract b(IJLjava/lang/Object;)V
.end method

.method public abstract c(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract e(IJLjava/lang/Object;)V
.end method

.method public abstract f(Ljava/lang/Object;)Lcom/google/protobuf/P0;
.end method

.method public abstract g(Ljava/lang/Object;)Lcom/google/protobuf/P0;
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/P0;
.end method

.method public final l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z
    .locals 7

    iget v0, p2, Lcom/google/protobuf/o;->b:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/n;->m()I

    move-result p2

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/protobuf/O0;->a(IILjava/lang/Object;)V

    return v4

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/O0;->m()Lcom/google/protobuf/P0;

    move-result-object v0

    shl-int/lit8 v2, v1, 0x3

    or-int/2addr v2, v6

    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/o;->a()I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/O0;->l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    iget p2, p2, Lcom/google/protobuf/o;->b:I

    if-ne v2, p2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/O0;->q(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/O0;->c(ILjava/lang/Object;Ljava/lang/Object;)V

    return v4

    :cond_5
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/o;->f()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/protobuf/O0;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    return v4

    :cond_7
    invoke-virtual {p2, v4}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/n;->n()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/google/protobuf/O0;->b(IJLjava/lang/Object;)V

    return v4

    :cond_8
    invoke-virtual {p2, v2}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/n;->q()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/google/protobuf/O0;->e(IJLjava/lang/Object;)V

    return v4
.end method

.method public abstract m()Lcom/google/protobuf/P0;
.end method

.method public abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract p()V
.end method

.method public abstract q(Ljava/lang/Object;)Lcom/google/protobuf/P0;
.end method

.method public abstract r(Ljava/lang/Object;Lcom/google/protobuf/s;)V
.end method

.method public abstract s(Ljava/lang/Object;Lcom/google/protobuf/s;)V
.end method
