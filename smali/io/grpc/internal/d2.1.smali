.class public final Lio/grpc/internal/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/d2;->d:I

    iput-object p2, p0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lio/grpc/internal/d2;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/e2;

    iget-object v1, v1, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/r2;

    iget-object v4, v1, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget v4, v4, Lio/grpc/internal/l2;->e:I

    invoke-virtual {v1, v4, v3}, Lio/grpc/internal/r2;->s(IZ)Lio/grpc/internal/p2;

    move-result-object v1

    iget-object v4, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v4, Lio/grpc/internal/e2;

    iget-object v4, v4, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v4, Lio/grpc/internal/r2;

    iget-object v4, v4, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/i2;

    iget-boolean v6, v6, Lio/grpc/internal/i2;->c:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move v3, v2

    goto/16 :goto_3

    :cond_0
    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/r2;

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iget-object v5, v5, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {v5, v1}, Lio/grpc/internal/l2;->a(Lio/grpc/internal/p2;)Lio/grpc/internal/l2;

    move-result-object v5

    iput-object v5, v6, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/r2;

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iget-object v5, v5, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    invoke-virtual {v6, v5}, Lio/grpc/internal/r2;->w(Lio/grpc/internal/l2;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/r2;

    iget-object v6, v6, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    if-eqz v6, :cond_2

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iget-object v5, v5, Lio/grpc/internal/r2;->m:Lio/grpc/internal/q2;

    iget-object v6, v5, Lio/grpc/internal/q2;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v5, v5, Lio/grpc/internal/q2;->b:I

    if-le v6, v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/r2;

    new-instance v7, Lio/grpc/internal/i2;

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iget-object v5, v5, Lio/grpc/internal/r2;->i:Ljava/lang/Object;

    invoke-direct {v7, v5}, Lio/grpc/internal/i2;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/grpc/internal/e2;

    iget-object v6, v6, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/r2;

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iget-object v5, v5, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-boolean v8, v5, Lio/grpc/internal/l2;->h:Z

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Lio/grpc/internal/l2;

    iget-object v10, v5, Lio/grpc/internal/l2;->b:Ljava/util/List;

    iget-object v11, v5, Lio/grpc/internal/l2;->c:Ljava/util/Collection;

    iget-object v12, v5, Lio/grpc/internal/l2;->d:Ljava/util/Collection;

    iget-object v13, v5, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p2;

    iget-boolean v14, v5, Lio/grpc/internal/l2;->g:Z

    iget-boolean v15, v5, Lio/grpc/internal/l2;->a:Z

    const/16 v16, 0x1

    iget v5, v5, Lio/grpc/internal/l2;->e:I

    move-object v9, v8

    move/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Lio/grpc/internal/l2;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/p2;ZZZI)V

    move-object v5, v8

    :goto_2
    iput-object v5, v6, Lio/grpc/internal/r2;->o:Lio/grpc/internal/l2;

    iget-object v5, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/e2;

    iget-object v5, v5, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v5, Lio/grpc/internal/r2;

    iput-object v7, v5, Lio/grpc/internal/r2;->t:Lio/grpc/internal/i2;

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    iget-object v0, v1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    sget-object v1, LX2/L0;->f:LX2/L0;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/u;->g(LX2/L0;)V

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    iget-object v3, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v3, Lio/grpc/internal/e2;

    iget-object v3, v3, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v3, Lio/grpc/internal/r2;

    iget-object v4, v3, Lio/grpc/internal/r2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lio/grpc/internal/e2;

    invoke-direct {v5, v2, v3, v7}, Lio/grpc/internal/e2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lio/grpc/internal/r2;->g:Lio/grpc/internal/s0;

    iget-wide v2, v2, Lio/grpc/internal/s0;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v2, v3, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v7, v2}, Lio/grpc/internal/i2;->a(Ljava/util/concurrent/Future;)V

    :cond_6
    iget-object v0, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/e2;

    iget-object v0, v0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/r2;

    invoke-virtual {v0, v1}, Lio/grpc/internal/r2;->u(Lio/grpc/internal/p2;)V

    :goto_4
    return-void

    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/r2;

    iget-boolean v1, v0, Lio/grpc/internal/r2;->w:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    invoke-interface {v0}, Lio/grpc/internal/v;->a()V

    :cond_7
    return-void

    :goto_6
    iget-object v1, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/m2;

    iget-object v1, v1, Lio/grpc/internal/m2;->e:Lio/grpc/internal/o2;

    iget-object v4, v1, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v1, v1, Lio/grpc/internal/o2;->a:Lio/grpc/internal/p2;

    iget v1, v1, Lio/grpc/internal/p2;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v4, v1, v3}, Lio/grpc/internal/r2;->s(IZ)Lio/grpc/internal/p2;

    move-result-object v1

    iget-object v0, v0, Lio/grpc/internal/d2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/m2;

    iget-object v0, v0, Lio/grpc/internal/m2;->e:Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    invoke-virtual {v0, v1}, Lio/grpc/internal/r2;->u(Lio/grpc/internal/p2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
