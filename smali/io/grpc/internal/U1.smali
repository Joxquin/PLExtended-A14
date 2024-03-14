.class public final Lio/grpc/internal/U1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/V1;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/V1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/grpc/internal/U1;->d:I

    iput-object p1, p0, Lio/grpc/internal/U1;->e:Lio/grpc/internal/V1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/V1;II)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/U1;->d:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/U1;-><init>(Lio/grpc/internal/V1;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/U1;-><init>(Lio/grpc/internal/V1;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lio/grpc/internal/U1;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/U1;->e:Lio/grpc/internal/V1;

    iget-boolean v2, v0, Lio/grpc/internal/V1;->f:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, v0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lio/grpc/internal/V1;->d:LO2/o;

    iget-boolean v4, v0, LO2/o;->b:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v0, LO2/o;->a:LO2/s;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, LO2/l;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, v0, LO2/o;->c:J

    sub-long/2addr v7, v9

    add-long/2addr v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    invoke-virtual {v2, v7, v8, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    iget-object p0, p0, Lio/grpc/internal/U1;->e:Lio/grpc/internal/V1;

    iget-wide v9, p0, Lio/grpc/internal/V1;->e:J

    sub-long/2addr v9, v7

    cmp-long v0, v9, v5

    if-lez v0, :cond_2

    new-instance v0, Lio/grpc/internal/U1;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1}, Lio/grpc/internal/U1;-><init>(Lio/grpc/internal/V1;II)V

    iget-object v1, p0, Lio/grpc/internal/V1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, v9, v10, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lio/grpc/internal/V1;->f:Z

    iput-object v3, p0, Lio/grpc/internal/V1;->g:Ljava/util/concurrent/ScheduledFuture;

    iget-object p0, p0, Lio/grpc/internal/V1;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lio/grpc/internal/U1;->e:Lio/grpc/internal/V1;

    iget-object v0, p0, Lio/grpc/internal/V1;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/U1;

    invoke-direct {v2, p0, v1, v1}, Lio/grpc/internal/U1;-><init>(Lio/grpc/internal/V1;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
