.class public final Lio/grpc/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:J

.field public final synthetic e:Lio/grpc/internal/t;


# direct methods
.method public constructor <init>(Lio/grpc/internal/t;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/s;->e:Lio/grpc/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/grpc/internal/s;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    new-instance v0, Lio/grpc/internal/u0;

    invoke-direct {v0}, Lio/grpc/internal/u0;-><init>()V

    iget-object v1, p0, Lio/grpc/internal/s;->e:Lio/grpc/internal/t;

    iget-object v1, v1, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {v1, v0}, Lio/grpc/internal/u;->k(Lio/grpc/internal/u0;)V

    iget-wide v1, p0, Lio/grpc/internal/s;->d:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    iget-wide v6, p0, Lio/grpc/internal/s;->d:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deadline exceeded after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lio/grpc/internal/s;->d:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, ".%09d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s. "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/grpc/internal/s;->e:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    sget-object v0, LX2/L0;->h:LX2/L0;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LX2/L0;->a(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    return-void
.end method
