.class public final Lio/grpc/internal/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/w;


# instance fields
.field public final synthetic d:LX2/p;

.field public final synthetic e:Lio/grpc/internal/w;


# direct methods
.method public constructor <init>(LX2/p;Lio/grpc/internal/w;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/p0;->d:LX2/p;

    iput-object p2, p0, Lio/grpc/internal/p0;->e:Lio/grpc/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 5

    sget-object v0, LX2/c;->b:LX2/c;

    sget-object v1, LX2/g;->k:LX2/g;

    const-string v1, "callOptions cannot be null"

    invoke-static {p3, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, LX2/q;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2, v2}, LX2/q;-><init>(LX2/c;LX2/g;IZ)V

    iget-object v0, p0, Lio/grpc/internal/p0;->d:LX2/p;

    instance-of v3, v0, Lio/grpc/internal/c2;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, LX2/p;->a()LX2/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Lio/grpc/internal/q0;

    invoke-direct {v3, v0, v1, p2}, Lio/grpc/internal/q0;-><init>(LX2/p;LX2/q;LX2/r0;)V

    move-object v0, v3

    :goto_0
    array-length v1, p4

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-object v1, p4, v1

    sget-object v4, Lio/grpc/internal/r0;->j:Lio/grpc/internal/m0;

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    const-string v1, "lb tracer already assigned"

    invoke-static {v1, v2}, LO2/m;->k(Ljava/lang/Object;Z)V

    array-length v1, p4

    sub-int/2addr v1, v3

    aput-object v0, p4, v1

    iget-object p0, p0, Lio/grpc/internal/p0;->e:Lio/grpc/internal/w;

    invoke-interface {p0, p1, p2, p3, p4}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object p0

    return-object p0
.end method

.method public final e()LX2/Q;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/p0;->e:Lio/grpc/internal/w;

    invoke-interface {p0}, LX2/P;->e()LX2/Q;

    move-result-object p0

    return-object p0
.end method
