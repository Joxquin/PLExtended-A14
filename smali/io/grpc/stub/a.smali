.class public abstract Lio/grpc/stub/a;
.super La3/b;
.source "SourceFile"


# direct methods
.method public static a(La3/a;Lio/grpc/internal/z1;)La3/b;
    .locals 3

    sget-object v0, LX2/g;->k:LX2/g;

    sget-object v1, La3/e;->b:LX2/f;

    sget-object v2, Lio/grpc/stub/ClientCalls$StubType;->d:Lio/grpc/stub/ClientCalls$StubType;

    invoke-virtual {v0, v1, v2}, LX2/g;->b(LX2/f;Ljava/lang/Object;)LX2/g;

    move-result-object v0

    invoke-interface {p0, p1, v0}, La3/a;->a(Lio/grpc/internal/z1;LX2/g;)La3/b;

    move-result-object p0

    return-object p0
.end method
