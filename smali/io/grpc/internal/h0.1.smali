.class public final Lio/grpc/internal/h0;
.super Lio/grpc/internal/G1;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:LX2/L0;

.field public final d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public final e:[LX2/r;


# direct methods
.method public constructor <init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/internal/G1;-><init>()V

    .line 3
    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    .line 4
    iput-object p1, p0, Lio/grpc/internal/h0;->c:LX2/L0;

    .line 5
    iput-object p2, p0, Lio/grpc/internal/h0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 6
    iput-object p3, p0, Lio/grpc/internal/h0;->e:[LX2/r;

    return-void
.end method

.method public constructor <init>(LX2/L0;[LX2/r;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V

    return-void
.end method


# virtual methods
.method public final c(Lio/grpc/internal/v;)V
    .locals 5

    iget-boolean v0, p0, Lio/grpc/internal/h0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lio/grpc/internal/h0;->b:Z

    iget-object v0, p0, Lio/grpc/internal/h0;->e:[LX2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lio/grpc/internal/h0;->c:LX2/L0;

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, LX2/r;->l(LX2/L0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, LX2/r0;

    invoke-direct {v0}, LX2/r0;-><init>()V

    iget-object p0, p0, Lio/grpc/internal/h0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-interface {p1, v3, p0, v0}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void
.end method

.method public final k(Lio/grpc/internal/u0;)V
    .locals 2

    const-string v0, "error"

    iget-object v1, p0, Lio/grpc/internal/h0;->c:LX2/L0;

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    iget-object p0, p0, Lio/grpc/internal/h0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-virtual {p1, p0, v0}, Lio/grpc/internal/u0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
