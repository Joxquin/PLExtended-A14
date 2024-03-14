.class public final Lio/grpc/internal/n;
.super Lio/grpc/internal/C;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/grpc/internal/q;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    iget-object p1, p1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p1, p1, Lio/grpc/internal/t;->f:LX2/C;

    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v0, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v0, Lc3/c;->a:Lc3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/grpc/internal/q;

    iget-object v1, v1, Lio/grpc/internal/q;->b:LX2/L0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->a:LX2/j;

    invoke-virtual {v0}, LX2/j;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/q;

    sget-object v2, LX2/L0;->f:LX2/L0;

    invoke-virtual {v2, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    const-string v2, "Failed to call onReady."

    invoke-virtual {v0, v2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    iput-object v0, v1, Lio/grpc/internal/q;->b:LX2/L0;

    iget-object v1, v1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v1, v1, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v1, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lio/grpc/internal/n;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    throw v0
.end method
