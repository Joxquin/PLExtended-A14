.class public final Lio/grpc/binder/f;
.super Lio/grpc/binder/h;
.source "SourceFile"


# virtual methods
.method public final a(I)LX2/L0;
    .locals 0

    sget p0, Lio/grpc/binder/g;->a:I

    if-ne p1, p0, :cond_0

    sget-object p0, LX2/L0;->e:LX2/L0;

    goto :goto_0

    :cond_0
    sget-object p0, LX2/L0;->i:LX2/L0;

    const-string p1, "Rejected by (internal-only) security policy"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
