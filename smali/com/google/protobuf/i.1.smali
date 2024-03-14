.class public final Lcom/google/protobuf/i;
.super Lcom/google/protobuf/j;
.source "SourceFile"


# instance fields
.field public d:I

.field public final e:I

.field public final synthetic f:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iput-object p1, p0, Lcom/google/protobuf/i;->f:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/google/protobuf/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i;->d:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/i;->e:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i;->d:I

    iget p0, p0, Lcom/google/protobuf/i;->e:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
