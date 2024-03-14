.class public final Lio/grpc/internal/N1;
.super LX2/a0;
.source "SourceFile"


# instance fields
.field public final b:LX2/V;

.field public c:LX2/Y;


# direct methods
.method public constructor <init>(LX2/V;)V
    .locals 1

    invoke-direct {p0}, LX2/a0;-><init>()V

    const-string v0, "helper"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/N1;->b:LX2/V;

    return-void
.end method


# virtual methods
.method public final a(LX2/L0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/N1;->c:LX2/Y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX2/Y;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/N1;->c:LX2/Y;

    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/K1;

    invoke-static {p1}, LX2/W;->a(LX2/L0;)LX2/W;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/internal/K1;-><init>(LX2/W;)V

    iget-object p0, p0, Lio/grpc/internal/N1;->b:LX2/V;

    invoke-virtual {p0, v0, v1}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    return-void
.end method

.method public final b(LX2/X;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/N1;->c:LX2/Y;

    iget-object p1, p1, LX2/X;->a:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, LX2/c;->b:LX2/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "addrs is empty"

    invoke-static {v4, v3}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v3, LX2/U;

    invoke-direct {v3, p1, v0, v1}, LX2/U;-><init>(Ljava/util/List;LX2/c;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/grpc/internal/N1;->b:LX2/V;

    invoke-virtual {p1, v3}, LX2/V;->a(LX2/U;)LX2/Y;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/J1;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/J1;-><init>(Lio/grpc/internal/N1;LX2/Y;)V

    invoke-virtual {v0, v1}, LX2/Y;->f(LX2/Z;)V

    iput-object v0, p0, Lio/grpc/internal/N1;->c:LX2/Y;

    sget-object p0, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/K1;

    new-instance v3, LX2/W;

    sget-object v4, LX2/L0;->e:LX2/L0;

    invoke-direct {v3, v0, v4, v2}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    invoke-direct {v1, v3}, Lio/grpc/internal/K1;-><init>(LX2/W;)V

    invoke-virtual {p1, p0, v1}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    invoke-virtual {v0}, LX2/Y;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, LX2/Y;->g(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/N1;->c:LX2/Y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LX2/Y;->e()V

    :cond_0
    return-void
.end method
