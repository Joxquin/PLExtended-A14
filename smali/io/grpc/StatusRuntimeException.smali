.class public Lio/grpc/StatusRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1b131cbf794914f0L


# instance fields
.field private final fillInStackTrace:Z

.field private final status:LX2/L0;

.field private final trailers:LX2/r0;


# direct methods
.method public constructor <init>(LX2/L0;LX2/r0;)V
    .locals 2

    invoke-static {p1}, LX2/L0;->b(LX2/L0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, LX2/L0;->c:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/grpc/StatusRuntimeException;->status:LX2/L0;

    iput-object p2, p0, Lio/grpc/StatusRuntimeException;->trailers:LX2/r0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/StatusRuntimeException;->fillInStackTrace:Z

    invoke-virtual {p0}, Lio/grpc/StatusRuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()LX2/L0;
    .locals 0

    iget-object p0, p0, Lio/grpc/StatusRuntimeException;->status:LX2/L0;

    return-object p0
.end method

.method public final b()LX2/r0;
    .locals 0

    iget-object p0, p0, Lio/grpc/StatusRuntimeException;->trailers:LX2/r0;

    return-object p0
.end method

.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/StatusRuntimeException;->fillInStackTrace:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
