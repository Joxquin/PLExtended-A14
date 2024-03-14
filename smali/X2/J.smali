.class public abstract LX2/J;
.super LX2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    check-cast p0, Lio/grpc/internal/d1;

    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    invoke-virtual {p0}, LX2/k;->b()V

    return-void
.end method

.method public final c(I)V
    .locals 0

    check-cast p0, Lio/grpc/internal/d1;

    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    invoke-virtual {p0, p1}, LX2/k;->c(I)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lio/grpc/internal/d1;

    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    invoke-virtual {p0, p1}, LX2/k;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    check-cast p0, Lio/grpc/internal/d1;

    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LX2/J;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
