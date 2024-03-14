.class public final Lcom/google/android/apps/nexuslauncher/allapps/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/l0;


# virtual methods
.method public final a(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lf2/X;

    invoke-virtual {p1}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final b([B)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/w;

    move-result-object p0

    invoke-static {p1, p0}, Lf2/X;->c([BLcom/google/protobuf/w;)Lf2/X;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
