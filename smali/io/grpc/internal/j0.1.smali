.class public abstract Lio/grpc/internal/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/z;


# virtual methods
.method public abstract a()Lio/grpc/internal/z;
.end method

.method public final b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/j0;->a()Lio/grpc/internal/z;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/grpc/internal/E1;->b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public d(LX2/L0;)V
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/j0;->a()Lio/grpc/internal/z;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/grpc/internal/E1;->d(LX2/L0;)V

    return-void
.end method

.method public final e()LX2/Q;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/j0;->a()Lio/grpc/internal/z;

    move-result-object p0

    invoke-interface {p0}, LX2/P;->e()LX2/Q;

    move-result-object p0

    return-object p0
.end method

.method public f(LX2/L0;)V
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/j0;->a()Lio/grpc/internal/z;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/internal/j0;->a()Lio/grpc/internal/z;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
