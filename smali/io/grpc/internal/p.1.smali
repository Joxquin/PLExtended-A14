.class public final Lio/grpc/internal/p;
.super Lio/grpc/internal/C;
.source "SourceFile"


# instance fields
.field public final synthetic e:LX2/L0;

.field public final synthetic f:LX2/r0;

.field public final synthetic g:Lio/grpc/internal/q;


# direct methods
.method public constructor <init>(Lio/grpc/internal/q;LX2/L0;LX2/r0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iput-object p2, p0, Lio/grpc/internal/p;->e:LX2/L0;

    iput-object p3, p0, Lio/grpc/internal/p;->f:LX2/r0;

    iget-object p1, p1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p1, p1, Lio/grpc/internal/t;->f:LX2/C;

    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v0, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v0, Lc3/c;->a:Lc3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/p;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    throw v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/p;->e:LX2/L0;

    iget-object v1, p0, Lio/grpc/internal/p;->f:LX2/r0;

    iget-object v2, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v2, v2, Lio/grpc/internal/q;->b:LX2/L0;

    if-eqz v2, :cond_0

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    move-object v0, v2

    :cond_0
    iget-object v2, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v2, v2, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lio/grpc/internal/t;->k:Z

    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v3, v2, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v2, v2, Lio/grpc/internal/q;->a:LX2/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, LX2/j;->a(LX2/L0;LX2/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v1, v1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    invoke-virtual {v1}, Lio/grpc/internal/t;->g()V

    iget-object p0, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->e:Lio/grpc/internal/k;

    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/k;->c:Lio/grpc/internal/Q0;

    invoke-interface {p0}, Lio/grpc/internal/Q0;->a()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/grpc/internal/k;->d:Lio/grpc/internal/Q0;

    invoke-interface {p0}, Lio/grpc/internal/Q0;->a()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object v2, v2, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    invoke-virtual {v2}, Lio/grpc/internal/t;->g()V

    iget-object p0, p0, Lio/grpc/internal/p;->g:Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->e:Lio/grpc/internal/k;

    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/grpc/internal/k;->c:Lio/grpc/internal/Q0;

    invoke-interface {p0}, Lio/grpc/internal/Q0;->a()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lio/grpc/internal/k;->d:Lio/grpc/internal/Q0;

    invoke-interface {p0}, Lio/grpc/internal/Q0;->a()V

    :goto_1
    throw v1
.end method
