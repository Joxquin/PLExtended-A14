.class public final Lio/grpc/internal/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/s1;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/s1;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lio/grpc/internal/T0;->d:I

    .line 2
    invoke-direct {p0, p1, v0}, Lio/grpc/internal/T0;-><init>(Lio/grpc/internal/s1;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/s1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/grpc/internal/T0;->d:I

    iput-object p1, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lio/grpc/internal/T0;->d:I

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    iput-object v2, p0, Lio/grpc/internal/s1;->f0:LX2/O0;

    iget-object v0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-boolean v0, p0, Lio/grpc/internal/s1;->A:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {p0}, LX2/A0;->b()V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    iget-boolean v0, p0, Lio/grpc/internal/s1;->L:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lio/grpc/internal/s1;->L:Z

    invoke-static {p0}, Lio/grpc/internal/s1;->j(Lio/grpc/internal/s1;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v2, "Entering SHUTDOWN state"

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->w:Lio/grpc/internal/B;

    sget-object v0, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    invoke-virtual {p0, v0}, Lio/grpc/internal/B;->a(Lio/grpc/ConnectivityState;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    invoke-virtual {p0, v3}, Lio/grpc/internal/s1;->l(Z)V

    return-void

    :goto_1
    iget-object p0, p0, Lio/grpc/internal/T0;->e:Lio/grpc/internal/s1;

    invoke-virtual {p0, v3}, Lio/grpc/internal/s1;->q(Z)V

    iget-object v0, p0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {v0, v2}, Lio/grpc/internal/O;->h(LX2/V;)V

    iget-object v2, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    const-string v4, "Entering IDLE state"

    invoke-virtual {v2, v1, v4}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    sget-object v1, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    iget-object v2, p0, Lio/grpc/internal/s1;->w:Lio/grpc/internal/B;

    invoke-virtual {v2, v1}, Lio/grpc/internal/B;->a(Lio/grpc/ConnectivityState;)V

    iget-object v1, p0, Lio/grpc/internal/s1;->G:Ljava/lang/Object;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v4

    iget-object v6, v1, Lio/grpc/internal/t0;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lio/grpc/internal/s1;->m()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
