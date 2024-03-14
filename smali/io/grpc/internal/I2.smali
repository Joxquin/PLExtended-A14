.class public final Lio/grpc/internal/I2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[LX2/r;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/internal/I2;

    const/4 v1, 0x0

    new-array v1, v1, [LX2/r;

    invoke-direct {v0, v1}, Lio/grpc/internal/I2;-><init>([LX2/r;)V

    return-void
.end method

.method public constructor <init>([LX2/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/grpc/internal/I2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/grpc/internal/I2;->a:[LX2/r;

    return-void
.end method
