.class public final Lio/grpc/internal/g1;
.super LX2/V;
.source "SourceFile"


# instance fields
.field public a:Lio/grpc/internal/b;

.field public b:Z

.field public final synthetic c:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    invoke-direct {p0}, LX2/V;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LX2/U;)LX2/Y;
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    iget-boolean v1, v0, Lio/grpc/internal/s1;->M:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Channel is being terminated"

    invoke-static {v2, v1}, LO2/m;->k(Ljava/lang/Object;Z)V

    new-instance v1, Lio/grpc/internal/q1;

    invoke-direct {v1, v0, p1, p0}, Lio/grpc/internal/q1;-><init>(Lio/grpc/internal/s1;LX2/U;Lio/grpc/internal/g1;)V

    return-object v1
.end method

.method public final b()LX2/i;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    return-object p0
.end method

.method public final c()LX2/P0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    return-object p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/g1;->b:Z

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v2, Lio/grpc/internal/Z0;

    invoke-direct {v2, v1, p0}, Lio/grpc/internal/Z0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lio/grpc/ConnectivityState;LX2/V;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    new-instance v1, Lio/grpc/internal/f1;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/f1;-><init>(Lio/grpc/internal/g1;LX2/V;Lio/grpc/ConnectivityState;)V

    iget-object p0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
