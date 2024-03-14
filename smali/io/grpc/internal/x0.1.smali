.class public final Lio/grpc/internal/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/x0;->d:I

    iput-object p2, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/x0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lio/grpc/internal/x0;->d:I

    sget-object v1, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    sget-object v2, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    iget-object v6, v0, Lio/grpc/internal/D0;->a:Ljava/util/List;

    iget v7, v0, Lio/grpc/internal/D0;->b:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX2/I;

    iget-object v6, v6, LX2/I;->a:Ljava/util/List;

    iget v0, v0, Lio/grpc/internal/D0;->c:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iget-object v6, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/H0;

    iget-object v6, v6, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    iget-object v7, p0, Lio/grpc/internal/x0;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iput-object v7, v6, Lio/grpc/internal/D0;->a:Ljava/util/List;

    invoke-virtual {v6}, Lio/grpc/internal/D0;->a()V

    iget-object v6, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/H0;

    iget-object v7, p0, Lio/grpc/internal/x0;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iput-object v7, v6, Lio/grpc/internal/H0;->p:Ljava/util/List;

    iget-object v6, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/H0;

    iget-object v6, v6, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v6, v6, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v7, Lio/grpc/ConnectivityState;->e:Lio/grpc/ConnectivityState;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/H0;

    iget-object v6, v6, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v6, v6, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-ne v6, v2, :cond_4

    :cond_0
    iget-object v2, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/H0;

    iget-object v2, v2, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    move v6, v3

    :goto_0
    iget-object v8, v2, Lio/grpc/internal/D0;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, v2, Lio/grpc/internal/D0;->a:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LX2/I;

    iget-object v8, v8, LX2/I;->a:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iput v6, v2, Lio/grpc/internal/D0;->b:I

    iput v8, v2, Lio/grpc/internal/D0;->c:I

    move v3, v5

    :cond_2
    if-nez v3, :cond_4

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/H0;

    iput-object v4, v2, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/H0;

    iget-object v2, v2, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    invoke-virtual {v2}, Lio/grpc/internal/D0;->a()V

    iget-object v2, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/H0;

    invoke-static {v2, v1}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    sget-object v1, LX2/L0;->n:LX2/L0;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v1, v2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    iput-object v4, v0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    invoke-virtual {v0}, Lio/grpc/internal/D0;->a()V

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/H0;

    invoke-static {v0}, Lio/grpc/internal/H0;->h(Lio/grpc/internal/H0;)V

    :cond_4
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_6

    iget-object v1, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/H0;

    iget-object v2, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    sget-object v2, LX2/L0;->n:LX2/L0;

    const-string v3, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v2, v3}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    iget-object v1, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    invoke-virtual {v1}, LX2/O0;->a()V

    iget-object v1, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/H0;

    iput-object v4, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    iput-object v4, v1, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    :cond_5
    iget-object v1, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/H0;

    iput-object v0, v1, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    iget-object v2, v1, Lio/grpc/internal/H0;->n:LX2/P0;

    new-instance v3, Lio/grpc/internal/E0;

    const/4 v0, 0x2

    invoke-direct {v3, v0, p0}, Lio/grpc/internal/E0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v1, Lio/grpc/internal/H0;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v2 .. v7}, LX2/P0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LX2/O0;

    move-result-object p0

    iput-object p0, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    :cond_6
    return-void

    :goto_2
    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v6, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    if-ne v0, v6, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v6, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v6, Lio/grpc/internal/F0;

    iget-object v7, v6, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    if-ne v0, v7, :cond_8

    iget-object v0, v6, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iput-object v4, v0, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    invoke-virtual {v0}, Lio/grpc/internal/D0;->a()V

    iget-object p0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/F0;

    iget-object p0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    invoke-static {p0, v1}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    goto/16 :goto_6

    :cond_8
    iget-object v0, v6, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    if-ne v1, v7, :cond_10

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_9

    move v0, v5

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    iget-object v1, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/F0;

    iget-object v1, v1, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v1, v1, LX2/z;->a:Lio/grpc/ConnectivityState;

    const-string v2, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v2, v1, v0}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    iget-object v1, v0, Lio/grpc/internal/D0;->a:Ljava/util/List;

    iget v2, v0, Lio/grpc/internal/D0;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX2/I;

    iget v2, v0, Lio/grpc/internal/D0;->c:I

    add-int/2addr v2, v5

    iput v2, v0, Lio/grpc/internal/D0;->c:I

    iget-object v1, v1, LX2/I;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_a

    iget v1, v0, Lio/grpc/internal/D0;->b:I

    add-int/2addr v1, v5

    iput v1, v0, Lio/grpc/internal/D0;->b:I

    iput v3, v0, Lio/grpc/internal/D0;->c:I

    :cond_a
    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    iget v1, v0, Lio/grpc/internal/D0;->b:I

    iget-object v0, v0, Lio/grpc/internal/D0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    move v0, v5

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_4
    if-nez v0, :cond_f

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iput-object v4, v0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    iget-object v0, v0, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    invoke-virtual {v0}, Lio/grpc/internal/D0;->a()V

    iget-object v0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object p0, p0, Lio/grpc/internal/x0;->e:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    iget-object v1, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v1}, LX2/P0;->d()V

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result v1

    xor-int/2addr v1, v5

    const-string v2, "The error status must not be OK"

    invoke-static {v2, v1}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v1, LX2/z;

    sget-object v2, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    invoke-direct {v1, v2, p0}, LX2/z;-><init>(Lio/grpc/ConnectivityState;LX2/L0;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/H0;->i(LX2/z;)V

    iget-object v1, v0, Lio/grpc/internal/H0;->q:Lio/grpc/internal/g0;

    if-nez v1, :cond_c

    iget-object v1, v0, Lio/grpc/internal/H0;->g:Lio/grpc/internal/f0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/grpc/internal/g0;

    invoke-direct {v1}, Lio/grpc/internal/g0;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/H0;->q:Lio/grpc/internal/g0;

    :cond_c
    iget-object v1, v0, Lio/grpc/internal/H0;->q:Lio/grpc/internal/g0;

    invoke-virtual {v1}, Lio/grpc/internal/g0;->a()J

    move-result-wide v1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v0, Lio/grpc/internal/H0;->r:LO2/o;

    iget-boolean v6, v4, LO2/o;->b:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_d

    iget-object v6, v4, LO2/o;->a:LO2/s;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, LO2/l;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    iget-wide v13, v4, LO2/o;->c:J

    sub-long/2addr v11, v13

    add-long/2addr v7, v11

    :cond_d
    invoke-virtual {v10, v7, v8, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long v8, v1, v6

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    invoke-static {p0}, Lio/grpc/internal/H0;->j(LX2/L0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    iget-object v2, v0, Lio/grpc/internal/H0;->m:LX2/i;

    const-string v4, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v2, v1, v4, p0}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v0, Lio/grpc/internal/H0;->s:LX2/O0;

    if-nez p0, :cond_e

    goto :goto_5

    :cond_e
    move v5, v3

    :goto_5
    const-string p0, "previous reconnectTask is not done"

    invoke-static {p0, v5}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object v6, v0, Lio/grpc/internal/H0;->n:LX2/P0;

    new-instance v7, Lio/grpc/internal/w0;

    invoke-direct {v7, v0, v3}, Lio/grpc/internal/w0;-><init>(Lio/grpc/internal/H0;I)V

    iget-object v11, v0, Lio/grpc/internal/H0;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v6 .. v11}, LX2/P0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LX2/O0;

    move-result-object p0

    iput-object p0, v0, Lio/grpc/internal/H0;->s:LX2/O0;

    goto :goto_6

    :cond_f
    iget-object p0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/F0;

    iget-object p0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    invoke-static {p0}, Lio/grpc/internal/H0;->h(Lio/grpc/internal/H0;)V

    :cond_10
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
