.class public final Lio/grpc/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX2/V;

.field public final synthetic e:Lio/grpc/ConnectivityState;

.field public final synthetic f:Lio/grpc/internal/g1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/g1;LX2/V;Lio/grpc/ConnectivityState;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/f1;->f:Lio/grpc/internal/g1;

    iput-object p2, p0, Lio/grpc/internal/f1;->d:LX2/V;

    iput-object p3, p0, Lio/grpc/internal/f1;->e:Lio/grpc/ConnectivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/f1;->f:Lio/grpc/internal/g1;

    iget-object v1, v0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v2, v1, Lio/grpc/internal/s1;->B:Lio/grpc/internal/g1;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/f1;->d:LX2/V;

    iput-object v0, v1, Lio/grpc/internal/s1;->C:LX2/V;

    iget-object v1, v1, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {v1, v0}, Lio/grpc/internal/O;->h(LX2/V;)V

    iget-object v0, p0, Lio/grpc/internal/f1;->e:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/f1;->f:Lio/grpc/internal/g1;

    iget-object v1, v1, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v1, v1, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/f1;->d:LX2/V;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v1, v2, v3, v0}, Lio/grpc/internal/l;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/f1;->f:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v0, v0, Lio/grpc/internal/s1;->w:Lio/grpc/internal/B;

    iget-object p0, p0, Lio/grpc/internal/f1;->e:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, p0}, Lio/grpc/internal/B;->a(Lio/grpc/ConnectivityState;)V

    :cond_1
    return-void
.end method
