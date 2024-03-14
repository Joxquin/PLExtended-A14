.class public final Lio/grpc/internal/l;
.super LX2/i;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/internal/m;

.field public final b:Lio/grpc/internal/K2;


# direct methods
.method public constructor <init>(Lio/grpc/internal/m;Lio/grpc/internal/K2;)V
    .locals 0

    invoke-direct {p0}, LX2/i;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/m;

    const-string p1, "time"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/l;->b:Lio/grpc/internal/K2;

    return-void
.end method

.method public static c(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/m;

    iget-object v1, v0, Lio/grpc/internal/m;->b:LX2/Q;

    invoke-static {p1}, Lio/grpc/internal/l;->c(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/m;->d:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, p2}, Lio/grpc/internal/m;->a(LX2/Q;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->d:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    iget-object v3, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/m;

    iget-object v4, v3, Lio/grpc/internal/m;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, v3, Lio/grpc/internal/m;->c:Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    monitor-exit v4

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    sget-object p1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->d:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    goto :goto_2

    :cond_4
    sget-object p1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->f:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    goto :goto_2

    :cond_5
    sget-object p1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->e:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    :goto_2
    move-object v5, p1

    iget-object p0, p0, Lio/grpc/internal/l;->b:Lio/grpc/internal/K2;

    invoke-interface {p0}, Lio/grpc/internal/K2;->a()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "description"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "timestampNanos"

    invoke-static {p0, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LX2/L;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, LX2/L;-><init>(Ljava/lang/String;Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;JLX2/P;)V

    iget-object p0, v0, Lio/grpc/internal/m;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object p2, v0, Lio/grpc/internal/m;->c:Ljava/util/Collection;

    if-eqz p2, :cond_6

    check-cast p2, Lio/grpc/internal/ChannelTracer$1;

    invoke-virtual {p2, p1}, Lio/grpc/internal/ChannelTracer$1;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method public final varargs b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-static {p1}, Lio/grpc/internal/l;->c(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->d:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/m;

    iget-object v3, v1, Lio/grpc/internal/m;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lio/grpc/internal/m;->c:Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v3

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    sget-object v1, Lio/grpc/internal/m;->d:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/l;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    return-void
.end method
