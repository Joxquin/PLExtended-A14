.class public final Lio/grpc/internal/h1;
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

    iput p1, p0, Lio/grpc/internal/h1;->d:I

    iput-object p2, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lio/grpc/internal/h1;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object p0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    invoke-static {v0, p0}, Lio/grpc/internal/i1;->f(Lio/grpc/internal/i1;LX2/L0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast v0, LX2/z0;

    iget-object v3, v0, LX2/z0;->a:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v4, Lio/grpc/internal/i1;

    iget-object v4, v4, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v4, v4, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->d:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v0, v0, LX2/z0;->b:LX2/c;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Resolved address: {0}, config={1}"

    invoke-virtual {v4, v5, v6, v0}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v4, v0, Lio/grpc/internal/s1;->V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    sget-object v6, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->e:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    if-eq v4, v6, :cond_0

    const-string v4, "Address resolved: {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    invoke-virtual {v0, v7, v4, v8}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iput-object v6, v0, Lio/grpc/internal/s1;->V:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    const/4 v4, 0x0

    iput-object v4, v0, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    iget-object v0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast v0, LX2/z0;

    iget-object v6, v0, LX2/z0;->c:LX2/w0;

    sget-object v8, LX2/O;->a:LX2/b;

    iget-object v0, v0, LX2/z0;->b:LX2/c;

    invoke-virtual {v0, v8}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/O;

    if-eqz v6, :cond_1

    iget-object v9, v6, LX2/w0;->b:Ljava/lang/Object;

    if-eqz v9, :cond_1

    check-cast v9, Lio/grpc/internal/C1;

    goto :goto_0

    :cond_1
    move-object v9, v4

    :goto_0
    if-eqz v6, :cond_2

    iget-object v10, v6, LX2/w0;->a:LX2/L0;

    goto :goto_1

    :cond_2
    move-object v10, v4

    :goto_1
    iget-object v11, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Lio/grpc/internal/i1;

    iget-object v12, v12, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-boolean v13, v12, Lio/grpc/internal/s1;->Y:Z

    if-nez v13, :cond_5

    if-eqz v9, :cond_3

    iget-object v1, v12, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v2, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v1, v7, v2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/i1;

    iget-object v1, v1, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/grpc/internal/s1;->o0:Lio/grpc/internal/C1;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v2, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v0, v7, v2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    invoke-virtual {v1}, Lio/grpc/internal/C1;->b()Lio/grpc/internal/B1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/internal/o1;->i(LX2/O;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v9, :cond_7

    iget-object v6, v12, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    if-eqz v0, :cond_6

    invoke-virtual {v6, v0}, Lio/grpc/internal/o1;->i(LX2/O;)V

    invoke-virtual {v9}, Lio/grpc/internal/C1;->b()Lio/grpc/internal/B1;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v6, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v0, v5, v6}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Lio/grpc/internal/C1;->b()Lio/grpc/internal/B1;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/grpc/internal/o1;->i(LX2/O;)V

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_9

    check-cast v11, Lio/grpc/internal/i1;

    iget-object v0, v11, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-boolean v9, v0, Lio/grpc/internal/s1;->X:Z

    if-nez v9, :cond_8

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v1, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v0, v7, v1}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/i1;

    iget-object v0, v6, LX2/w0;->a:LX2/L0;

    invoke-virtual {p0, v0}, Lio/grpc/internal/i1;->a(LX2/L0;)V

    goto/16 :goto_8

    :cond_8
    iget-object v9, v0, Lio/grpc/internal/s1;->W:Lio/grpc/internal/C1;

    goto :goto_2

    :cond_9
    sget-object v9, Lio/grpc/internal/s1;->o0:Lio/grpc/internal/C1;

    check-cast v11, Lio/grpc/internal/i1;

    iget-object v0, v11, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->U:Lio/grpc/internal/o1;

    invoke-virtual {v0, v4}, Lio/grpc/internal/o1;->i(LX2/O;)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->W:Lio/grpc/internal/C1;

    invoke-virtual {v9, v0}, Lio/grpc/internal/C1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v10, Lio/grpc/internal/s1;->o0:Lio/grpc/internal/C1;

    if-ne v9, v10, :cond_b

    const-string v10, " to empty"

    goto :goto_3

    :cond_b
    const-string v10, ""

    :goto_3
    aput-object v10, v6, v1

    const-string v1, "Service config changed{0}"

    invoke-virtual {v0, v7, v1, v6}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iput-object v9, v0, Lio/grpc/internal/s1;->W:Lio/grpc/internal/C1;

    :cond_c
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iput-boolean v2, v0, Lio/grpc/internal/s1;->X:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v10, Lio/grpc/internal/i1;

    iget-object v10, v10, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v10, v10, Lio/grpc/internal/s1;->d:LX2/Q;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "] Unexpected exception from parsing service config"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-object v1, v9

    :goto_5
    iget-object v0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast v0, LX2/z0;

    iget-object v0, v0, LX2/z0;->b:LX2/c;

    iget-object v2, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v2, Lio/grpc/internal/i1;

    iget-object v6, v2, Lio/grpc/internal/i1;->a:Lio/grpc/internal/g1;

    iget-object v2, v2, Lio/grpc/internal/i1;->c:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    if-ne v6, v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LX2/a;

    invoke-direct {v2, v0}, LX2/a;-><init>(LX2/c;)V

    invoke-virtual {v2, v8}, LX2/a;->b(LX2/b;)V

    iget-object v0, v1, Lio/grpc/internal/C1;->f:Ljava/util/Map;

    if-eqz v0, :cond_d

    sget-object v6, LX2/a0;->a:LX2/b;

    invoke-virtual {v2, v6, v0}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    invoke-virtual {v2}, LX2/a;->a()LX2/c;

    :cond_d
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/i1;

    iget-object v0, v0, Lio/grpc/internal/i1;->a:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->a:Lio/grpc/internal/b;

    sget-object v6, LX2/c;->b:LX2/c;

    invoke-virtual {v2}, LX2/a;->a()LX2/c;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    const-string v8, "addresses"

    invoke-static {v3, v8}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v6, "attributes"

    invoke-static {v2, v6}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lio/grpc/internal/C1;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/A2;

    iget-object v6, v0, Lio/grpc/internal/b;->a:LX2/V;

    if-nez v1, :cond_e

    :try_start_1
    iget-object v1, v0, Lio/grpc/internal/b;->d:Lio/grpc/internal/f;

    iget-object v8, v1, Lio/grpc/internal/f;->b:Ljava/lang/String;

    invoke-static {v1, v8}, Lio/grpc/internal/f;->a(Lio/grpc/internal/f;Ljava/lang/String;)LX2/c0;

    move-result-object v1
    :try_end_1
    .catch Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v8, Lio/grpc/internal/A2;

    invoke-direct {v8, v1, v4}, Lio/grpc/internal/A2;-><init>(LX2/c0;Ljava/lang/Object;)V

    move-object v1, v8

    goto :goto_6

    :catch_1
    move-exception v1

    sget-object v2, LX2/L0;->m:LX2/L0;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/internal/d;

    invoke-direct {v3, v1}, Lio/grpc/internal/d;-><init>(LX2/L0;)V

    invoke-virtual {v6, v2, v3}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    iget-object v1, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v1}, LX2/a0;->c()V

    iput-object v4, v0, Lio/grpc/internal/b;->c:LX2/c0;

    new-instance v1, Lio/grpc/internal/e;

    invoke-direct {v1}, Lio/grpc/internal/e;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/b;->b:LX2/a0;

    sget-object v0, LX2/L0;->e:LX2/L0;

    goto/16 :goto_7

    :cond_e
    :goto_6
    iget-object v4, v0, Lio/grpc/internal/b;->c:LX2/c0;

    iget-object v8, v1, Lio/grpc/internal/A2;->a:LX2/c0;

    if-eqz v4, :cond_f

    invoke-virtual {v8}, LX2/c0;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lio/grpc/internal/b;->c:LX2/c0;

    invoke-virtual {v9}, LX2/c0;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    sget-object v4, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    new-instance v9, Lio/grpc/internal/c;

    invoke-direct {v9}, Lio/grpc/internal/c;-><init>()V

    invoke-virtual {v6, v4, v9}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    iget-object v4, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v4}, LX2/a0;->c()V

    iput-object v8, v0, Lio/grpc/internal/b;->c:LX2/c0;

    iget-object v4, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v8, v6}, LX2/V;->d(LX2/V;)LX2/a0;

    move-result-object v8

    iput-object v8, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v6}, LX2/V;->b()LX2/i;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v4, v9}, [Ljava/lang/Object;

    move-result-object v4

    const-string v9, "Load balancer changed from {0} to {1}"

    invoke-virtual {v8, v7, v9, v4}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v1, v1, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

    if-eqz v1, :cond_11

    invoke-virtual {v6}, LX2/V;->b()LX2/i;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Load-balancing config: {0}"

    invoke-virtual {v4, v5, v7, v6}, LX2/i;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, v0, Lio/grpc/internal/b;->b:LX2/a0;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LX2/L0;->n:LX2/L0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", attrs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    goto :goto_7

    :cond_12
    sget-object v4, LX2/c;->b:LX2/c;

    new-instance v4, LX2/X;

    invoke-direct {v4, v3, v2, v1}, LX2/X;-><init>(Ljava/util/List;LX2/c;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, LX2/a0;->b(LX2/X;)V

    sget-object v0, LX2/L0;->e:LX2/L0;

    :goto_7
    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/i1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/i1;

    iget-object p0, p0, Lio/grpc/internal/i1;->b:LX2/A0;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was used"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LX2/L0;->a(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    invoke-static {v1, p0}, Lio/grpc/internal/i1;->f(Lio/grpc/internal/i1;LX2/L0;)V

    :cond_13
    :goto_8
    return-void

    :goto_9
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lio/grpc/internal/s1;->p0:Lio/grpc/internal/S0;

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    if-nez v1, :cond_14

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v1, v0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    iget-object v0, v0, Lio/grpc/internal/s1;->G:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/grpc/internal/t0;->c(Ljava/lang/Object;Z)V

    :cond_14
    iget-object v0, p0, Lio/grpc/internal/h1;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->F:Ljava/util/Collection;

    iget-object p0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/n1;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    iget-object p0, p0, Lio/grpc/internal/h1;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/n1;

    iget-object v0, p0, Lio/grpc/internal/n1;->n:Lio/grpc/internal/o1;

    iget-object v0, v0, Lio/grpc/internal/o1;->g:Lio/grpc/internal/s1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lio/grpc/internal/n1;->m:LX2/g;

    iget-object v2, v2, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_16

    iget-object v2, v0, Lio/grpc/internal/s1;->l:Ljava/util/concurrent/Executor;

    :cond_16
    new-instance v0, Lio/grpc/internal/m1;

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/m1;-><init>(Lio/grpc/internal/n1;I)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
