.class public final Lio/grpc/internal/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/n1;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/n1;I)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/m1;->d:I

    iput-object p1, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lio/grpc/internal/m1;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v0, v0, Lio/grpc/internal/n1;->k:LX2/C;

    invoke-virtual {v0}, LX2/C;->a()LX2/C;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v3, v2, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v4, v2, Lio/grpc/internal/n1;->l:LX2/u0;

    iget-object v2, v2, Lio/grpc/internal/n1;->m:LX2/g;

    invoke-virtual {v3, v4, v2}, Lio/grpc/internal/o1;->h(LX2/u0;LX2/g;)LX2/k;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v3, v3, Lio/grpc/internal/n1;->k:LX2/C;

    invoke-virtual {v3, v0}, LX2/C;->c(LX2/C;)V

    iget-object v3, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    monitor-enter v3

    :try_start_1
    iget-object v0, v3, Lio/grpc/internal/L;->f:LX2/k;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    monitor-exit v3

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    const-string v6, "realCall already set to %s"

    invoke-static {v6, v0, v5}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, v3, Lio/grpc/internal/L;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iput-object v2, v3, Lio/grpc/internal/L;->f:LX2/k;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lio/grpc/internal/L;->i()V

    :goto_2
    iget-object p0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v0, p0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->r:LX2/P0;

    new-instance v1, Lio/grpc/internal/m1;

    invoke-direct {v1, p0, v4}, Lio/grpc/internal/m1;-><init>(Lio/grpc/internal/n1;I)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object p0, p0, Lio/grpc/internal/n1;->k:LX2/C;

    invoke-virtual {p0, v0}, LX2/C;->c(LX2/C;)V

    throw v1

    :goto_4
    iget-object v0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v2, v0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v2, v2, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v0, v0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v0, v0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v2, v0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    iget-object v0, v0, Lio/grpc/internal/s1;->G:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lio/grpc/internal/t0;->c(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object v0, v0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    iget-object v0, v0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lio/grpc/internal/m1;->e:Lio/grpc/internal/n1;

    iget-object p0, p0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    sget-object v0, Lio/grpc/internal/s1;->m0:LX2/L0;

    invoke-virtual {p0, v0}, Lio/grpc/internal/r1;->a(LX2/L0;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
