.class public final Lio/grpc/internal/j1;
.super LX2/h;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lio/grpc/internal/o1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/o1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    invoke-direct {p0}, LX2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 8

    new-instance v7, Lio/grpc/internal/t;

    iget-object v0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    sget-object v1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v4, v0, Lio/grpc/internal/s1;->h0:Lio/grpc/internal/b1;

    iget-boolean v0, v0, Lio/grpc/internal/s1;->N:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->j:Lio/grpc/internal/j;

    invoke-virtual {v0}, Lio/grpc/internal/j;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_1
    move-object v5, v0

    iget-object v0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v6, v0, Lio/grpc/internal/s1;->Q:Lio/grpc/internal/k;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/t;-><init>(LX2/u0;Ljava/util/concurrent/Executor;LX2/g;Lio/grpc/internal/b1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k;)V

    iget-object p1, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object p1, p1, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, v7, Lio/grpc/internal/t;->q:Z

    iget-object p0, p0, Lio/grpc/internal/j1;->d:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p1, p0, Lio/grpc/internal/s1;->s:LX2/H;

    iput-object p1, v7, Lio/grpc/internal/t;->r:LX2/H;

    iget-object p0, p0, Lio/grpc/internal/s1;->t:LX2/y;

    iput-object p0, v7, Lio/grpc/internal/t;->s:LX2/y;

    return-object v7
.end method
