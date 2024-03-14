.class public final Lio/grpc/binder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/y;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lio/grpc/internal/H1;

.field public final g:Lio/grpc/internal/H1;

.field public final h:Lio/grpc/binder/h;

.field public final i:Lio/grpc/binder/e;

.field public final j:Lio/grpc/binder/a;

.field public k:Ljava/util/concurrent/ScheduledExecutorService;

.field public l:Ljava/util/concurrent/Executor;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lio/grpc/internal/H2;Lio/grpc/internal/H2;Lio/grpc/binder/h;Lio/grpc/binder/a;Lio/grpc/binder/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lio/grpc/binder/c;->e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lio/grpc/binder/c;->f:Lio/grpc/internal/H1;

    iput-object p4, p0, Lio/grpc/binder/c;->g:Lio/grpc/internal/H1;

    iput-object p5, p0, Lio/grpc/binder/c;->h:Lio/grpc/binder/h;

    iput-object p6, p0, Lio/grpc/binder/c;->j:Lio/grpc/binder/a;

    iput-object p7, p0, Lio/grpc/binder/c;->i:Lio/grpc/binder/e;

    invoke-virtual {p3}, Lio/grpc/internal/H2;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/binder/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p4}, Lio/grpc/internal/H2;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/binder/c;->l:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/binder/c;->m:Z

    iget-object v0, p0, Lio/grpc/binder/c;->f:Lio/grpc/internal/H1;

    iget-object v1, p0, Lio/grpc/binder/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lio/grpc/internal/H1;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/binder/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/binder/c;->g:Lio/grpc/internal/H1;

    iget-object v2, p0, Lio/grpc/binder/c;->l:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Lio/grpc/internal/H1;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/binder/c;->l:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final s()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/c;->k:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final w(Ljava/net/SocketAddress;Lio/grpc/internal/x;Lio/grpc/internal/G0;)Lio/grpc/internal/z;
    .locals 10

    iget-boolean p3, p0, Lio/grpc/binder/c;->m:Z

    if-nez p3, :cond_0

    new-instance p3, Lio/grpc/binder/internal/b;

    iget-object v1, p0, Lio/grpc/binder/c;->d:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lio/grpc/binder/AndroidComponentAddress;

    iget-object v3, p0, Lio/grpc/binder/c;->j:Lio/grpc/binder/a;

    iget-object v4, p0, Lio/grpc/binder/c;->e:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lio/grpc/binder/c;->f:Lio/grpc/internal/H1;

    iget-object v6, p0, Lio/grpc/binder/c;->g:Lio/grpc/internal/H1;

    iget-object v7, p0, Lio/grpc/binder/c;->h:Lio/grpc/binder/h;

    iget-object v8, p0, Lio/grpc/binder/c;->i:Lio/grpc/binder/e;

    iget-object v9, p2, Lio/grpc/internal/x;->b:LX2/c;

    move-object v0, p3

    invoke-direct/range {v0 .. v9}, Lio/grpc/binder/internal/b;-><init>(Landroid/content/Context;Lio/grpc/binder/AndroidComponentAddress;Lio/grpc/binder/a;Ljava/util/concurrent/Executor;Lio/grpc/internal/H1;Lio/grpc/internal/H1;Lio/grpc/binder/h;Lio/grpc/binder/e;LX2/c;)V

    return-object p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The transport factory is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
