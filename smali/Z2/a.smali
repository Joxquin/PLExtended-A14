.class public final LZ2/a;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements LX2/T;


# instance fields
.field public d:Lcom/google/protobuf/p0;

.field public final e:Lcom/google/protobuf/x0;

.field public f:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/p0;Lcom/google/protobuf/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    iput-object p2, p0, LZ2/a;->e:Lcom/google/protobuf/x0;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    invoke-interface {v1}, Lcom/google/protobuf/p0;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    .line 4
    :cond_0
    iget-object p0, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 4

    .line 6
    iget-object v0, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 8
    iput-object v2, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    .line 9
    iput-object v2, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_2

    .line 10
    sget-object p3, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    .line 11
    new-instance p3, Lcom/google/protobuf/p;

    invoke-direct {p3, p1, p2, v0}, Lcom/google/protobuf/p;-><init>([BII)V

    .line 12
    iget-object p1, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    invoke-interface {p1, p3}, Lcom/google/protobuf/p0;->writeTo(Lcom/google/protobuf/r;)V

    .line 13
    invoke-virtual {p3}, Lcom/google/protobuf/p;->J()I

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iput-object v2, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    .line 15
    iput-object v2, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    return v0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    invoke-interface {v3}, Lcom/google/protobuf/p0;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    .line 18
    iput-object v2, p0, LZ2/a;->d:Lcom/google/protobuf/p0;

    .line 19
    :cond_3
    iget-object p0, p0, LZ2/a;->f:Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_4

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_4
    return v1
.end method
