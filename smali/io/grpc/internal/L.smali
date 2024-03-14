.class public Lio/grpc/internal/L;
.super LX2/k;
.source "SourceFile"


# static fields
.field public static final j:Lio/grpc/internal/I;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledFuture;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LX2/C;

.field public volatile d:Z

.field public e:LX2/j;

.field public f:LX2/k;

.field public g:LX2/L0;

.field public h:Ljava/util/List;

.field public i:Lio/grpc/internal/K;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/L;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lio/grpc/internal/I;

    invoke-direct {v0}, Lio/grpc/internal/I;-><init>()V

    sput-object v0, Lio/grpc/internal/L;->j:Lio/grpc/internal/I;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/internal/p1;LX2/E;)V
    .locals 8

    invoke-direct {p0}, LX2/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    const-string v0, "callExecutor"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/L;->b:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, LX2/C;->b()LX2/C;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/L;->c:LX2/C;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1}, LX2/E;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    rem-long/2addr v6, v4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-string v4, "ClientCall started after deadline exceeded. Deadline exceeded after -"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, "Deadline exceeded after "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, ".%09d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s. "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lio/grpc/internal/E;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p3}, Lio/grpc/internal/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v0, v1, p1}, Lio/grpc/internal/p1;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lio/grpc/internal/L;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LX2/L0;->f:LX2/L0;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/L;->g(LX2/L0;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lio/grpc/internal/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/grpc/internal/H;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/L;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/L;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/L;->f:LX2/k;

    invoke-virtual {p0, p1}, LX2/k;->c(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/G;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/G;-><init>(Lio/grpc/internal/L;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/L;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/L;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/L;->f:LX2/k;

    invoke-virtual {p0, p1}, LX2/k;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/E;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lio/grpc/internal/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/L;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e(LX2/j;LX2/r0;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/L;->e:LX2/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "already started"

    invoke-static {v2, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/L;->e:LX2/j;

    iget-object v0, p0, Lio/grpc/internal/L;->g:LX2/L0;

    iget-boolean v2, p0, Lio/grpc/internal/L;->d:Z

    if-nez v2, :cond_1

    new-instance v3, Lio/grpc/internal/K;

    invoke-direct {v3, p1}, Lio/grpc/internal/K;-><init>(LX2/j;)V

    iput-object v3, p0, Lio/grpc/internal/L;->i:Lio/grpc/internal/K;

    move-object p1, v3

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lio/grpc/internal/L;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/J;

    invoke-direct {v1, p0, p1, v0}, Lio/grpc/internal/J;-><init>(Lio/grpc/internal/L;LX2/j;LX2/L0;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p0, Lio/grpc/internal/L;->f:LX2/k;

    invoke-virtual {p0, p1, p2}, LX2/k;->e(LX2/j;LX2/r0;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lio/grpc/internal/D;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/grpc/internal/D;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX2/r0;I)V

    invoke-virtual {p0, v0}, Lio/grpc/internal/L;->h(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g(LX2/L0;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/L;->f:LX2/k;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object p2, Lio/grpc/internal/L;->j:Lio/grpc/internal/I;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "realCall already set to %s"

    invoke-static {v4, v0, v3}, LO2/m;->l(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lio/grpc/internal/L;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iput-object p2, p0, Lio/grpc/internal/L;->f:LX2/k;

    iget-object p2, p0, Lio/grpc/internal/L;->e:LX2/j;

    iput-object p1, p0, Lio/grpc/internal/L;->g:LX2/L0;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/4 p2, 0x0

    move v2, v1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    new-instance p2, Lio/grpc/internal/E;

    invoke-direct {p2, v1, p0, p1}, Lio/grpc/internal/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lio/grpc/internal/L;->h(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lio/grpc/internal/L;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/J;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/J;-><init>(Lio/grpc/internal/L;LX2/j;LX2/L0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {p0}, Lio/grpc/internal/L;->i()V

    :goto_3
    invoke-virtual {p0}, Lio/grpc/internal/L;->f()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/L;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/L;->d:Z

    iget-object v0, p0, Lio/grpc/internal/L;->i:Lio/grpc/internal/K;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/grpc/internal/L;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/F;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/F;-><init>(Lio/grpc/internal/L;Lio/grpc/internal/K;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/internal/L;->h:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "realCall"

    iget-object p0, p0, Lio/grpc/internal/L;->f:LX2/k;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
