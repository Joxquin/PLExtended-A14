.class public final Lio/grpc/internal/d1;
.super LX2/J;
.source "SourceFile"


# instance fields
.field public final a:LX2/O;

.field public final b:LX2/h;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:LX2/u0;

.field public final e:LX2/C;

.field public f:LX2/g;

.field public g:LX2/k;


# direct methods
.method public constructor <init>(LX2/O;Lio/grpc/internal/j1;Ljava/util/concurrent/Executor;LX2/u0;LX2/g;)V
    .locals 0

    invoke-direct {p0}, LX2/J;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/d1;->a:LX2/O;

    iput-object p2, p0, Lio/grpc/internal/d1;->b:LX2/h;

    iput-object p4, p0, Lio/grpc/internal/d1;->d:LX2/u0;

    iget-object p1, p5, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lio/grpc/internal/d1;->c:Ljava/util/concurrent/Executor;

    new-instance p1, LX2/g;

    invoke-direct {p1, p5}, LX2/g;-><init>(LX2/g;)V

    iput-object p3, p1, LX2/g;->b:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/d1;->f:LX2/g;

    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/d1;->e:LX2/C;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, LX2/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final e(LX2/j;LX2/r0;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/d1;->f:LX2/g;

    const-string v1, "method"

    iget-object v2, p0, Lio/grpc/internal/d1;->d:LX2/u0;

    invoke-static {v2, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "callOptions"

    invoke-static {v0, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/d1;->a:LX2/O;

    invoke-virtual {v0}, LX2/O;->a()LX2/N;

    move-result-object v0

    iget-object v1, v0, LX2/N;->a:LX2/L0;

    invoke-virtual {v1}, LX2/L0;->d()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p2, Lio/grpc/internal/c1;

    invoke-direct {p2, p0, p1, v1}, Lio/grpc/internal/c1;-><init>(Lio/grpc/internal/d1;LX2/j;LX2/L0;)V

    iget-object p1, p0, Lio/grpc/internal/d1;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lio/grpc/internal/s1;->q0:Lio/grpc/internal/Y0;

    iput-object p1, p0, Lio/grpc/internal/d1;->g:LX2/k;

    return-void

    :cond_0
    iget-object v1, v0, LX2/N;->b:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/C1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LX2/u0;->b:Ljava/lang/String;

    iget-object v4, v1, Lio/grpc/internal/C1;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/A1;

    if-nez v3, :cond_1

    iget-object v3, v1, Lio/grpc/internal/C1;->c:Ljava/util/Map;

    iget-object v4, v2, LX2/u0;->c:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/A1;

    :cond_1
    if-nez v3, :cond_2

    iget-object v3, v1, Lio/grpc/internal/C1;->a:Lio/grpc/internal/A1;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, p0, Lio/grpc/internal/d1;->f:LX2/g;

    sget-object v4, Lio/grpc/internal/A1;->g:LX2/f;

    invoke-virtual {v1, v4, v3}, LX2/g;->b(LX2/f;Ljava/lang/Object;)LX2/g;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/d1;->f:LX2/g;

    :cond_3
    iget-object v0, v0, LX2/N;->c:LX2/l;

    if-eqz v0, :cond_4

    invoke-interface {v0}, LX2/l;->a()LX2/k;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/grpc/internal/d1;->f:LX2/g;

    iget-object v1, p0, Lio/grpc/internal/d1;->b:LX2/h;

    invoke-virtual {v1, v2, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/d1;->g:LX2/k;

    invoke-virtual {p0, p1, p2}, LX2/k;->e(LX2/j;LX2/r0;)V

    return-void
.end method
