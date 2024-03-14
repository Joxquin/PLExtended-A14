.class public final Lcom/google/protobuf/T0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Z;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final d:Lcom/google/protobuf/Z;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/T0;->d:Lcom/google/protobuf/Z;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/protobuf/ByteString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()Lcom/google/protobuf/Z;
    .locals 0

    return-object p0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/T0;->d:Lcom/google/protobuf/Z;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Z;->e(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/T0;->d:Lcom/google/protobuf/Z;

    invoke-interface {p0}, Lcom/google/protobuf/Z;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/T0;->d:Lcom/google/protobuf/Z;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/S0;

    invoke-direct {v0, p0}, Lcom/google/protobuf/S0;-><init>(Lcom/google/protobuf/T0;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/R0;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/R0;-><init>(Lcom/google/protobuf/T0;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/T0;->d:Lcom/google/protobuf/Z;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
