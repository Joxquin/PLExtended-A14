.class public abstract Lio/grpc/internal/k0;
.super LX2/f0;
.source "SourceFile"


# instance fields
.field public final d:LX2/f0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    invoke-direct {p0}, LX2/f0;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    invoke-virtual {p0}, LX2/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    invoke-virtual {p0, p1, p2}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    invoke-virtual {p0}, LX2/f0;->h()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "delegate"

    iget-object p0, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
