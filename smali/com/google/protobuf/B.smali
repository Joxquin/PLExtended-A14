.class public final Lcom/google/protobuf/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/protobuf/B;


# instance fields
.field public final a:Lcom/google/protobuf/L0;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/B;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/B;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/B;->d:Lcom/google/protobuf/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/protobuf/L0;->j:I

    .line 3
    new-instance v0, Lcom/google/protobuf/E0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/protobuf/E0;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    sget p1, Lcom/google/protobuf/L0;->j:I

    .line 6
    new-instance p1, Lcom/google/protobuf/E0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/protobuf/E0;-><init>(I)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/B;->j()V

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/B;->j()V

    return-void
.end method

.method public static b(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/r;->i(I)I

    move-result p1

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->m:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/B;->c(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/protobuf/r;->l(J)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v2

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v1

    :pswitch_4
    instance-of p0, p1, Lcom/google/protobuf/L;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/protobuf/L;

    invoke-interface {p1}, Lcom/google/protobuf/L;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->f(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->f(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/protobuf/ByteString;

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :pswitch_7
    instance-of p0, p1, Lcom/google/protobuf/W;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/protobuf/W;

    invoke-static {p1}, Lcom/google/protobuf/r;->g(Lcom/google/protobuf/X;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Lcom/google/protobuf/p0;

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :pswitch_8
    check-cast p1, Lcom/google/protobuf/p0;

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result p0

    return p0

    :pswitch_9
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/protobuf/ByteString;

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->k(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/r;->h(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v1

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v2

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/r;->f(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/r;->l(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/r;->l(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v1

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget-object p0, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Lcom/google/protobuf/A;Ljava/lang/Object;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/protobuf/A;->f()V

    invoke-interface {p0}, Lcom/google/protobuf/A;->getNumber()V

    invoke-interface {p0}, Lcom/google/protobuf/A;->b()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/B;->b(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/util/Map$Entry;)I
    .locals 6

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/A;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/A;->m()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/A;->b()V

    invoke-interface {v0}, Lcom/google/protobuf/A;->n()V

    instance-of v0, v1, Lcom/google/protobuf/W;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/A;

    invoke-interface {p0}, Lcom/google/protobuf/A;->getNumber()V

    check-cast v1, Lcom/google/protobuf/W;

    invoke-static {v5}, Lcom/google/protobuf/r;->i(I)I

    move-result p0

    mul-int/2addr p0, v4

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->j(II)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v3}, Lcom/google/protobuf/r;->i(I)I

    move-result p0

    invoke-static {v1}, Lcom/google/protobuf/r;->g(Lcom/google/protobuf/X;)I

    move-result v1

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/A;

    invoke-interface {p0}, Lcom/google/protobuf/A;->getNumber()V

    check-cast v1, Lcom/google/protobuf/p0;

    invoke-static {v5}, Lcom/google/protobuf/r;->i(I)I

    move-result p0

    mul-int/2addr p0, v4

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->j(II)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v3}, Lcom/google/protobuf/r;->i(I)I

    move-result p0

    invoke-interface {v1}, Lcom/google/protobuf/p0;->getSerializedSize()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/r;->k(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p0

    add-int/2addr v2, v0

    return v2

    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/B;->d(Lcom/google/protobuf/A;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/A;

    invoke-interface {v0}, Lcom/google/protobuf/A;->m()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/A;->b()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/protobuf/q0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/q0;

    invoke-interface {p0}, Lcom/google/protobuf/q0;->isInitialized()Z

    move-result v3

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/google/protobuf/W;

    if-eqz p0, :cond_1

    :goto_0
    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method public static m(Lcom/google/protobuf/A;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0}, Lcom/google/protobuf/A;->f()V

    sget-object p0, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public static n(Lcom/google/protobuf/r;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->m:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/google/protobuf/p0;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/r;->E(II)V

    invoke-interface {p3, p0}, Lcom/google/protobuf/p0;->writeTo(Lcom/google/protobuf/r;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/r;->E(II)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->c()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/r;->E(II)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->I(J)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->G(I)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->v(J)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->t(I)V

    goto/16 :goto_0

    :pswitch_4
    instance-of p1, p3, Lcom/google/protobuf/L;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/protobuf/L;

    invoke-interface {p3}, Lcom/google/protobuf/L;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->x(I)V

    goto/16 :goto_0

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->x(I)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->G(I)V

    goto/16 :goto_0

    :pswitch_6
    instance-of p1, p3, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/r;->r(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :cond_2
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/r;->p([BI)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p3, Lcom/google/protobuf/p0;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/r;->z(Lcom/google/protobuf/p0;)V

    goto/16 :goto_0

    :pswitch_8
    check-cast p3, Lcom/google/protobuf/p0;

    invoke-interface {p3, p0}, Lcom/google/protobuf/p0;->writeTo(Lcom/google/protobuf/r;)V

    goto :goto_0

    :pswitch_9
    instance-of p1, p3, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/r;->r(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/r;->D(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->n(B)V

    goto :goto_0

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->t(I)V

    goto :goto_0

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->v(J)V

    goto :goto_0

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->x(I)V

    goto :goto_0

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->I(J)V

    goto :goto_0

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->I(J)V

    goto :goto_0

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r;->t(I)V

    goto :goto_0

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r;->v(J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/B;
    .locals 4

    new-instance v0, Lcom/google/protobuf/B;

    invoke-direct {v0}, Lcom/google/protobuf/B;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v2}, Lcom/google/protobuf/L0;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/L0;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/A;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/B;->l(Lcom/google/protobuf/A;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/L0;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/A;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/B;->l(Lcom/google/protobuf/A;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/B;->c:Z

    iput-boolean p0, v0, Lcom/google/protobuf/B;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/B;->a()Lcom/google/protobuf/B;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/A;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/L0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/protobuf/W;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/protobuf/W;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/X;->a(Lcom/google/protobuf/p0;)Lcom/google/protobuf/p0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/B;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/protobuf/B;

    iget-object p0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    iget-object p1, p1, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/L0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v2}, Lcom/google/protobuf/L0;->e()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/L0;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/B;->h(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/L0;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/protobuf/B;->h(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {p0}, Lcom/google/protobuf/L0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/B;->c:Z

    iget-object p0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/V;

    invoke-virtual {p0}, Lcom/google/protobuf/L0;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/V;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/L0;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/B;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v1}, Lcom/google/protobuf/L0;->e()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/protobuf/L0;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/J;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/J;

    invoke-virtual {v1}, Lcom/google/protobuf/J;->makeImmutable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/L0;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/B;->b:Z

    return-void
.end method

.method public final k(Ljava/util/Map$Entry;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/A;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/protobuf/W;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/protobuf/W;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/X;->a(Lcom/google/protobuf/p0;)Lcom/google/protobuf/p0;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/A;->b()V

    invoke-interface {v0}, Lcom/google/protobuf/A;->m()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/B;->e(Lcom/google/protobuf/A;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v1, p1

    invoke-static {p1, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    :cond_1
    invoke-virtual {v4, v0, p1}, Lcom/google/protobuf/L0;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/google/protobuf/p0;

    invoke-interface {p0}, Lcom/google/protobuf/p0;->toBuilder$1()Lcom/google/protobuf/E;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/p0;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/A;->j(Lcom/google/protobuf/o0;Lcom/google/protobuf/p0;)Lcom/google/protobuf/E;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Lcom/google/protobuf/L0;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v1, p1

    invoke-static {p1, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    :cond_4
    invoke-virtual {v4, v0, p1}, Lcom/google/protobuf/L0;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final l(Lcom/google/protobuf/A;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/protobuf/A;->b()V

    invoke-static {p1, p2}, Lcom/google/protobuf/B;->m(Lcom/google/protobuf/A;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
