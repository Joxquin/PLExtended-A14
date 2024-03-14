.class public final Lcom/google/protobuf/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/r;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    iput-object p0, p1, Lcom/google/protobuf/r;->a:Lcom/google/protobuf/s;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "output"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(ILcom/google/protobuf/ByteString;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->q(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final b(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/r;->E(II)V

    return-void
.end method

.method public final c(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->s(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/r;->u(IJ)V

    return-void
.end method

.method public final e(ILcom/google/protobuf/C0;Ljava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/google/protobuf/p0;

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/r;->E(II)V

    iget-object v0, p0, Lcom/google/protobuf/r;->a:Lcom/google/protobuf/s;

    invoke-interface {p2, p3, v0}, Lcom/google/protobuf/C0;->b(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->E(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/r;->H(IJ)V

    return-void
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->B(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/protobuf/p0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->A(ILcom/google/protobuf/p0;)V

    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/r;->E(II)V

    return-void
.end method
