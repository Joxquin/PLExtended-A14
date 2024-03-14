.class public final Lio/grpc/internal/N;
.super Lio/grpc/internal/W;
.source "SourceFile"


# instance fields
.field public final j:Lio/grpc/internal/P1;

.field public final k:LX2/C;

.field public final l:[LX2/r;

.field public final synthetic m:Lio/grpc/internal/O;


# direct methods
.method public constructor <init>(Lio/grpc/internal/O;Lio/grpc/internal/P1;[LX2/r;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    invoke-direct {p0}, Lio/grpc/internal/W;-><init>()V

    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/N;->k:LX2/C;

    iput-object p2, p0, Lio/grpc/internal/N;->j:Lio/grpc/internal/P1;

    iput-object p3, p0, Lio/grpc/internal/N;->l:[LX2/r;

    return-void
.end method


# virtual methods
.method public final g(LX2/L0;)V
    .locals 2

    invoke-super {p0, p1}, Lio/grpc/internal/W;->g(LX2/L0;)V

    iget-object p1, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    iget-object p1, p1, Lio/grpc/internal/O;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    iget-object v1, v0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/grpc/internal/O;->l:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    invoke-virtual {v1}, Lio/grpc/internal/O;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    iget-object v1, v0, Lio/grpc/internal/O;->g:LX2/P0;

    iget-object v0, v0, Lio/grpc/internal/O;->i:Lio/grpc/internal/M;

    invoke-virtual {v1, v0}, LX2/P0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    iget-object v1, v0, Lio/grpc/internal/O;->m:LX2/L0;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/grpc/internal/O;->g:LX2/P0;

    iget-object v0, v0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, LX2/P0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/grpc/internal/O;->j:Ljava/lang/Runnable;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/internal/N;->m:Lio/grpc/internal/O;

    iget-object p0, p0, Lio/grpc/internal/O;->g:LX2/P0;

    invoke-virtual {p0}, LX2/P0;->a()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k(Lio/grpc/internal/u0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/N;->j:Lio/grpc/internal/P1;

    iget-object v0, v0, Lio/grpc/internal/P1;->a:LX2/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/grpc/internal/u0;->a:Ljava/util/ArrayList;

    const-string v1, "wait_for_ready"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lio/grpc/internal/W;->k(Lio/grpc/internal/u0;)V

    return-void
.end method

.method public final s(LX2/L0;)V
    .locals 3

    iget-object p0, p0, Lio/grpc/internal/N;->l:[LX2/r;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, LX2/r;->l(LX2/L0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
