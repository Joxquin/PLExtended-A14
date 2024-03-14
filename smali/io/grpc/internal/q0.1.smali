.class public final Lio/grpc/internal/q0;
.super LX2/r;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/internal/m0;

.field public volatile b:LX2/r;

.field public final synthetic c:LX2/p;

.field public final synthetic d:LX2/q;

.field public final synthetic e:LX2/r0;


# direct methods
.method public constructor <init>(LX2/p;LX2/q;LX2/r0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/q0;->c:LX2/p;

    iput-object p2, p0, Lio/grpc/internal/q0;->d:LX2/q;

    iput-object p3, p0, Lio/grpc/internal/q0;->e:LX2/r0;

    invoke-direct {p0}, LX2/r;-><init>()V

    new-instance p1, Lio/grpc/internal/m0;

    invoke-direct {p1}, Lio/grpc/internal/m0;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/q0;->a:Lio/grpc/internal/m0;

    iput-object p1, p0, Lio/grpc/internal/q0;->b:LX2/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0}, LX2/r;->a()V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1}, LX2/r;->b(I)V

    return-void
.end method

.method public final c(IJJ)V
    .locals 6

    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, LX2/r;->c(IJJ)V

    return-void
.end method

.method public final d(LX2/r0;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1}, LX2/r;->d(LX2/r0;)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1, p2}, LX2/r;->e(J)V

    return-void
.end method

.method public final f(J)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1, p2}, LX2/r;->f(J)V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0}, LX2/r;->g()V

    return-void
.end method

.method public final h(I)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1}, LX2/r;->h(I)V

    return-void
.end method

.method public final i(IJJ)V
    .locals 6

    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, LX2/r;->i(IJJ)V

    return-void
.end method

.method public final j(J)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1, p2}, LX2/r;->j(J)V

    return-void
.end method

.method public final k(J)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1, p2}, LX2/r;->k(J)V

    return-void
.end method

.method public final l(LX2/L0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    iget-object v1, p0, Lio/grpc/internal/q0;->a:Lio/grpc/internal/m0;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    iget-object v1, p0, Lio/grpc/internal/q0;->a:Lio/grpc/internal/m0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/q0;->c:LX2/p;

    invoke-virtual {v0}, LX2/p;->a()LX2/r;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1}, LX2/r;->l(LX2/L0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(LX2/c;LX2/r0;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/q0;->d:LX2/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LX2/c;->b:LX2/c;

    sget-object v1, LX2/g;->k:LX2/g;

    iget-object v1, v0, LX2/q;->c:LX2/g;

    const-string v2, "callOptions cannot be null"

    invoke-static {v1, v2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, LX2/q;->b:LX2/c;

    const-string v1, "transportAttrs cannot be null"

    invoke-static {v0, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    iget-object v1, p0, Lio/grpc/internal/q0;->a:Lio/grpc/internal/m0;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    iget-object v1, p0, Lio/grpc/internal/q0;->a:Lio/grpc/internal/m0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/q0;->c:LX2/p;

    invoke-virtual {v0}, LX2/p;->a()LX2/r;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    invoke-virtual {p0, p1, p2}, LX2/r;->m(LX2/c;LX2/r0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object p0, p0, Lio/grpc/internal/q0;->b:LX2/r;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/q0;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
