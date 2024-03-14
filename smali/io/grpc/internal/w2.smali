.class public final Lio/grpc/internal/w2;
.super Lio/grpc/internal/v2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/v2;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/w2;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/y2;)Z
    .locals 2

    const/4 v0, -0x1

    iget-object p0, p0, Lio/grpc/internal/w2;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public final b(Lio/grpc/internal/y2;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lio/grpc/internal/w2;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method
