.class public final Lio/grpc/internal/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v;


# instance fields
.field public final synthetic a:Lio/grpc/internal/v;

.field public final synthetic b:Lio/grpc/internal/B0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/B0;Lio/grpc/internal/v;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/A0;->b:Lio/grpc/internal/B0;

    iput-object p2, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    invoke-interface {p0}, Lio/grpc/internal/v;->a()V

    return-void
.end method

.method public final b(LX2/r0;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    invoke-interface {p0, p1}, Lio/grpc/internal/v;->b(LX2/r0;)V

    return-void
.end method

.method public final c(Lio/grpc/binder/internal/e;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    invoke-interface {p0, p1}, Lio/grpc/internal/v;->c(Lio/grpc/binder/internal/e;)V

    return-void
.end method

.method public final d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/A0;->b:Lio/grpc/internal/B0;

    iget-object v0, v0, Lio/grpc/internal/B0;->b:Lio/grpc/internal/C0;

    iget-object v0, v0, Lio/grpc/internal/C0;->e:Lio/grpc/internal/k;

    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/grpc/internal/k;->c:Lio/grpc/internal/Q0;

    invoke-interface {v0}, Lio/grpc/internal/Q0;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lio/grpc/internal/k;->d:Lio/grpc/internal/Q0;

    invoke-interface {v0}, Lio/grpc/internal/Q0;->a()V

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    invoke-interface {p0, p1, p2, p3}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object p0, p0, Lio/grpc/internal/A0;->a:Lio/grpc/internal/v;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/A0;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
