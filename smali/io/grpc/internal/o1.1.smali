.class public final Lio/grpc/internal/o1;
.super LX2/h;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/lang/String;

.field public final f:Lio/grpc/internal/j1;

.field public final synthetic g:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    invoke-direct {p0}, LX2/h;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lio/grpc/internal/j1;

    invoke-direct {p1, p0}, Lio/grpc/internal/j1;-><init>(Lio/grpc/internal/o1;)V

    iput-object p1, p0, Lio/grpc/internal/o1;->f:Lio/grpc/internal/j1;

    const-string p1, "authority"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/o1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/o1;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 6

    iget-object v0, p0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/o1;->h(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v3, v1, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v4, Lio/grpc/internal/k1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lio/grpc/internal/k1;-><init>(Lio/grpc/internal/o1;I)V

    invoke-virtual {v3, v4}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/o1;->h(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, v1, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lio/grpc/internal/l1;

    invoke-direct {p0}, Lio/grpc/internal/l1;-><init>()V

    return-object p0

    :cond_2
    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object v0

    new-instance v2, Lio/grpc/internal/n1;

    invoke-direct {v2, p0, v0, p1, p2}, Lio/grpc/internal/n1;-><init>(Lio/grpc/internal/o1;LX2/C;LX2/u0;LX2/g;)V

    new-instance p1, Lio/grpc/internal/h1;

    invoke-direct {p1, v5, p0, v2}, Lio/grpc/internal/h1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v1, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {p0, p1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public final h(LX2/u0;LX2/g;)LX2/k;
    .locals 7

    iget-object v0, p0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LX2/O;

    iget-object v3, p0, Lio/grpc/internal/o1;->f:Lio/grpc/internal/j1;

    if-nez v2, :cond_0

    invoke-virtual {v3, p1, p2}, Lio/grpc/internal/j1;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v2, Lio/grpc/internal/B1;

    if-eqz v0, :cond_4

    check-cast v2, Lio/grpc/internal/B1;

    iget-object p0, v2, Lio/grpc/internal/B1;->b:Lio/grpc/internal/C1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LX2/u0;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/internal/C1;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/A1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/C1;->c:Ljava/util/Map;

    iget-object v1, p1, LX2/u0;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/A1;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lio/grpc/internal/C1;->a:Lio/grpc/internal/A1;

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, Lio/grpc/internal/A1;->g:LX2/f;

    invoke-virtual {p2, p0, v0}, LX2/g;->b(LX2/f;Ljava/lang/Object;)LX2/g;

    move-result-object p2

    :cond_3
    invoke-virtual {v3, p1, p2}, Lio/grpc/internal/j1;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lio/grpc/internal/d1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v4, p0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/d1;-><init>(LX2/O;Lio/grpc/internal/j1;Ljava/util/concurrent/Executor;LX2/u0;LX2/g;)V

    return-object v0
.end method

.method public final i(LX2/O;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX2/O;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-ne v1, p1, :cond_1

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/n1;

    iget-object v0, p1, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    sget-object v1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lio/grpc/internal/n1;->m:LX2/g;

    iget-object v1, v1, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    :cond_0
    new-instance v0, Lio/grpc/internal/m1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lio/grpc/internal/m1;-><init>(Lio/grpc/internal/n1;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
