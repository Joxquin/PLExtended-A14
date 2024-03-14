.class public final Lio/grpc/internal/V1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Runnable;

.field public final d:LO2/o;

.field public e:J

.field public f:Z

.field public g:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lio/grpc/internal/T0;LX2/P0;Ljava/util/concurrent/ScheduledExecutorService;LO2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/V1;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/grpc/internal/V1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lio/grpc/internal/V1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lio/grpc/internal/V1;->d:LO2/o;

    invoke-virtual {p4}, LO2/o;->a()V

    return-void
.end method
