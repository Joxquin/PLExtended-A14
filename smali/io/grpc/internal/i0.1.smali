.class public final Lio/grpc/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/w;


# instance fields
.field public final d:LX2/L0;

.field public final e:Lio/grpc/internal/ClientStreamListener$RpcProgress;


# direct methods
.method public constructor <init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    iput-object p1, p0, Lio/grpc/internal/i0;->d:LX2/L0;

    iput-object p2, p0, Lio/grpc/internal/i0;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-void
.end method


# virtual methods
.method public final c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 0

    new-instance p1, Lio/grpc/internal/h0;

    iget-object p2, p0, Lio/grpc/internal/i0;->d:LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/i0;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p1, p2, p0, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    return-object p1
.end method

.method public final e()LX2/Q;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not a real transport"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
