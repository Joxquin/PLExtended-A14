.class public final Lio/grpc/internal/G0;
.super LX2/i;
.source "SourceFile"


# instance fields
.field public a:LX2/Q;


# virtual methods
.method public final a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lio/grpc/ChannelLogger$ChannelLogLevel;->e:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object p0, p0, Lio/grpc/internal/G0;->a:LX2/Q;

    invoke-static {p1}, Lio/grpc/internal/l;->c(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Lio/grpc/internal/m;->d:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/grpc/internal/m;->a(LX2/Q;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lio/grpc/internal/G0;->a:LX2/Q;

    invoke-static {p1}, Lio/grpc/internal/l;->c(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Lio/grpc/internal/m;->d:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/grpc/internal/m;->a(LX2/Q;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
