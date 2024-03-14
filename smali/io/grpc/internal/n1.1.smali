.class public final Lio/grpc/internal/n1;
.super Lio/grpc/internal/L;
.source "SourceFile"


# instance fields
.field public final k:LX2/C;

.field public final l:LX2/u0;

.field public final m:LX2/g;

.field public final synthetic n:Lio/grpc/internal/o1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/o1;LX2/C;LX2/u0;LX2/g;)V
    .locals 2

    iput-object p1, p0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, p1, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    sget-object v1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p4, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object p1, p1, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p1, p1, Lio/grpc/internal/s1;->k:Lio/grpc/internal/p1;

    iget-object v0, p4, LX2/g;->a:LX2/E;

    invoke-direct {p0, v1, p1, v0}, Lio/grpc/internal/L;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/internal/p1;LX2/E;)V

    iput-object p2, p0, Lio/grpc/internal/n1;->k:LX2/C;

    iput-object p3, p0, Lio/grpc/internal/n1;->l:LX2/u0;

    iput-object p4, p0, Lio/grpc/internal/n1;->m:LX2/g;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v1, Lio/grpc/internal/m1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/m1;-><init>(Lio/grpc/internal/n1;I)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
