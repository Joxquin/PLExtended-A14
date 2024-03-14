.class public final Lio/grpc/internal/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/H0;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/H0;I)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/w0;->d:I

    iput-object p1, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lio/grpc/internal/w0;->d:I

    sget-object v1, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v3, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->m:LX2/i;

    const-string v3, "CONNECTING as requested"

    invoke-virtual {v0, v2, v3}, LX2/i;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    invoke-static {v0, v1}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    iget-object p0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    invoke-static {p0}, Lio/grpc/internal/H0;->h(Lio/grpc/internal/H0;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    const/4 v3, 0x0

    iput-object v3, v0, Lio/grpc/internal/H0;->s:LX2/O0;

    iget-object v0, v0, Lio/grpc/internal/H0;->m:LX2/i;

    const-string v3, "CONNECTING after backoff"

    invoke-virtual {v0, v2, v3}, LX2/i;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    invoke-static {v0, v1}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    iget-object p0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    invoke-static {p0}, Lio/grpc/internal/H0;->h(Lio/grpc/internal/H0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->m:LX2/i;

    const-string v1, "Terminated"

    invoke-virtual {v0, v2, v1}, LX2/i;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/internal/w0;->e:Lio/grpc/internal/H0;

    iget-object v0, p0, Lio/grpc/internal/H0;->h:Lio/grpc/internal/U0;

    iget-object v1, v0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/q1;

    iget-object v1, v1, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v1, v1, Lio/grpc/internal/s1;->E:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast v1, Lio/grpc/internal/q1;

    iget-object v1, v1, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    iget-object v1, v1, Lio/grpc/internal/s1;->T:LX2/M;

    iget-object v1, v1, LX2/M;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p0}, LX2/M;->b(Ljava/util/Map;LX2/P;)V

    iget-object p0, v0, Lio/grpc/internal/U0;->b:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q1;

    iget-object p0, p0, Lio/grpc/internal/q1;->k:Lio/grpc/internal/s1;

    invoke-static {p0}, Lio/grpc/internal/s1;->k(Lio/grpc/internal/s1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
