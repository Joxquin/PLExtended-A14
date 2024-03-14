.class public final Lcom/google/protobuf/a1;
.super Lcom/google/protobuf/Z0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/a1;->a:I

    invoke-direct {p0}, Lcom/google/protobuf/Z0;-><init>()V

    return-void
.end method

.method public static b([BIJI)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, -0xc

    if-eqz p4, :cond_4

    const/4 v2, 0x1

    if-eq p4, v2, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/protobuf/b1;->e(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/X0;->h([BJ)B

    move-result p0

    sget-object p2, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    if-gt p1, v1, :cond_3

    const/16 p2, -0x41

    if-le p0, p2, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int v0, p1, p0

    :cond_3
    :goto_0
    return v0

    :cond_4
    sget-object p0, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    if-le p1, v1, :cond_5

    move p1, v0

    :cond_5
    return p1
.end method
