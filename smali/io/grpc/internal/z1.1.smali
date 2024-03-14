.class public final Lio/grpc/internal/z1;
.super Lio/grpc/internal/k0;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ref/ReferenceQueue;

.field public static final g:Ljava/util/concurrent/ConcurrentMap;

.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final e:Lio/grpc/internal/y1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/grpc/internal/z1;->f:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/grpc/internal/z1;->g:Ljava/util/concurrent/ConcurrentMap;

    const-class v0, Lio/grpc/internal/z1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/z1;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 3

    sget-object v0, Lio/grpc/internal/z1;->f:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lio/grpc/internal/z1;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lio/grpc/internal/k0;-><init>(Lio/grpc/internal/s1;)V

    new-instance v2, Lio/grpc/internal/y1;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/grpc/internal/y1;-><init>(Lio/grpc/internal/z1;Lio/grpc/internal/s1;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v2, p0, Lio/grpc/internal/z1;->e:Lio/grpc/internal/y1;

    return-void
.end method


# virtual methods
.method public final i()LX2/f0;
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/z1;->e:Lio/grpc/internal/y1;

    iget-object v1, v0, Lio/grpc/internal/y1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/grpc/internal/y1;->clear()V

    :cond_0
    iget-object p0, p0, Lio/grpc/internal/k0;->d:LX2/f0;

    invoke-virtual {p0}, LX2/f0;->i()LX2/f0;

    move-result-object p0

    return-object p0
.end method
