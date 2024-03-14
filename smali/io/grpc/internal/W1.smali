.class public final Lio/grpc/internal/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p0, LX2/L0;->d:Ljava/util/List;

    const-string p0, "t"

    invoke-static {p2, p0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, p2

    :goto_0
    if-eqz p0, :cond_2

    instance-of p1, p0, Lio/grpc/StatusException;

    if-nez p1, :cond_1

    instance-of p1, p0, Lio/grpc/StatusRuntimeException;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lio/grpc/StatusRuntimeException;

    invoke-virtual {p0}, Lio/grpc/StatusRuntimeException;->a()LX2/L0;

    move-result-object p0

    goto :goto_1

    :cond_1
    check-cast p0, Lio/grpc/StatusException;

    invoke-virtual {p0}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, LX2/L0;->g:LX2/L0;

    invoke-virtual {p0, p2}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    :goto_1
    const-string p1, "Uncaught exception in the SynchronizationContext. Re-thrown."

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusRuntimeException;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/grpc/StatusRuntimeException;-><init>(LX2/L0;LX2/r0;)V

    throw p1
.end method
