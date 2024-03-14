.class public final Lio/grpc/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v;


# instance fields
.field public final a:LX2/j;

.field public b:LX2/L0;

.field public final synthetic c:Lio/grpc/internal/t;


# direct methods
.method public constructor <init>(Lio/grpc/internal/t;LX2/j;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/q;->a:LX2/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v1, v0, Lio/grpc/internal/t;->a:LX2/u0;

    iget-object v1, v1, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->f:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lc3/c;->a()V

    sget-object v1, Lc3/c;->a:Lc3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/n;

    invoke-direct {v1, p0}, Lio/grpc/internal/n;-><init>(Lio/grpc/internal/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final b(LX2/r0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v1, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v1, Lc3/c;->a:Lc3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/o;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/o;-><init>(Lio/grpc/internal/q;LX2/r0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final c(Lio/grpc/binder/internal/e;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v1, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v1, Lc3/c;->a:Lc3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/o;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/o;-><init>(Lio/grpc/internal/q;Lio/grpc/binder/internal/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V
    .locals 0

    iget-object p2, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p2, p2, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lio/grpc/internal/q;->e(LX2/L0;LX2/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lc3/c;->b()V

    throw p0
.end method

.method public final e(LX2/L0;LX2/r0;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v1, v0, Lio/grpc/internal/t;->i:LX2/g;

    iget-object v1, v1, LX2/g;->a:LX2/E;

    iget-object v2, v0, Lio/grpc/internal/t;->f:LX2/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    sget-object v3, Lio/grpc/Status$Code;->e:Lio/grpc/Status$Code;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LX2/E;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lio/grpc/internal/u0;

    invoke-direct {p1}, Lio/grpc/internal/u0;-><init>()V

    iget-object p2, v0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p2, p1}, Lio/grpc/internal/u;->k(Lio/grpc/internal/u0;)V

    sget-object p2, LX2/L0;->h:LX2/L0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCall was cancelled at or after deadline. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LX2/L0;->a(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    new-instance p2, LX2/r0;

    invoke-direct {p2}, LX2/r0;-><init>()V

    :cond_1
    sget-object v1, Lc3/c;->a:Lc3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/grpc/internal/p;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/p;-><init>(Lio/grpc/internal/q;LX2/L0;LX2/r0;)V

    iget-object p0, v0, Lio/grpc/internal/t;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
