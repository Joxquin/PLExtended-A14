.class public final Lio/grpc/internal/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/o1;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/o1;I)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/k1;->d:I

    iput-object p1, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lio/grpc/internal/k1;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/n1;

    const-string v3, "Channel is forcefully shutdown"

    invoke-virtual {v2, v3, v1}, Lio/grpc/internal/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    sget-object v0, Lio/grpc/internal/s1;->l0:LX2/L0;

    invoke-virtual {p0, v0}, Lio/grpc/internal/r1;->a(LX2/L0;)V

    iget-object v2, p0, Lio/grpc/internal/r1;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/grpc/internal/r1;->b:Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/u;

    invoke-interface {v2, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {p0, v0}, Lio/grpc/internal/O;->d(LX2/L0;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object v2, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    if-nez v2, :cond_4

    iget-object v0, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->J:Lio/grpc/internal/r1;

    sget-object v0, Lio/grpc/internal/s1;->m0:LX2/L0;

    invoke-virtual {p0, v0}, Lio/grpc/internal/r1;->a(LX2/L0;)V

    :cond_4
    return-void

    :goto_2
    iget-object p0, p0, Lio/grpc/internal/k1;->e:Lio/grpc/internal/o1;

    iget-object p0, p0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    invoke-virtual {p0}, Lio/grpc/internal/s1;->m()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
