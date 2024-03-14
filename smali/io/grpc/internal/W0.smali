.class public final Lio/grpc/internal/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/W0;->a:Lio/grpc/internal/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    sget-object p1, Lio/grpc/internal/s1;->j0:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/grpc/internal/W0;->a:Lio/grpc/internal/s1;

    iget-object v2, v2, Lio/grpc/internal/s1;->d:LX2/Q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/grpc/internal/W0;->a:Lio/grpc/internal/s1;

    iget-boolean p1, p0, Lio/grpc/internal/s1;->D:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/internal/s1;->D:Z

    invoke-virtual {p0, p1}, Lio/grpc/internal/s1;->l(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/grpc/internal/s1;->q(Z)V

    new-instance p1, Lio/grpc/internal/V0;

    invoke-direct {p1, p2}, Lio/grpc/internal/V0;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/grpc/internal/s1;->C:LX2/V;

    iget-object p2, p0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {p2, p1}, Lio/grpc/internal/O;->h(LX2/V;)V

    iget-object p1, p0, Lio/grpc/internal/s1;->S:Lio/grpc/internal/l;

    sget-object p2, Lio/grpc/ChannelLogger$ChannelLogLevel;->g:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v0, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p1, p2, v0}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    sget-object p1, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    iget-object p0, p0, Lio/grpc/internal/s1;->w:Lio/grpc/internal/B;

    invoke-virtual {p0, p1}, Lio/grpc/internal/B;->a(Lio/grpc/ConnectivityState;)V

    :goto_0
    return-void
.end method
