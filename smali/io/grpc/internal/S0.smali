.class public final Lio/grpc/internal/S0;
.super LX2/O;
.source "SourceFile"


# virtual methods
.method public final a()LX2/N;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Resolution is pending"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
