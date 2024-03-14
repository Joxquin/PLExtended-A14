.class public final Lio/grpc/internal/M1;
.super LX2/V;
.source "SourceFile"


# instance fields
.field public final a:LX2/Y;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lio/grpc/internal/N1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/N1;LX2/Y;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/internal/M1;->c:Lio/grpc/internal/N1;

    invoke-direct {p0}, LX2/V;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/internal/M1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/M1;->a:LX2/Y;

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/M1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/M1;->c:Lio/grpc/internal/N1;

    iget-object v0, v0, Lio/grpc/internal/N1;->b:LX2/V;

    invoke-virtual {v0}, LX2/V;->c()LX2/P0;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/L1;

    invoke-direct {v1, p0}, Lio/grpc/internal/L1;-><init>(Lio/grpc/internal/M1;)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, LX2/W;->e:LX2/W;

    return-object p0
.end method
