.class public final Lio/grpc/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:LX2/i0;

.field public static final c:LX2/i0;

.field public static final d:LX2/p0;

.field public static final e:LX2/i0;

.field public static final f:LX2/p0;

.field public static final g:LX2/i0;

.field public static final h:Lio/grpc/internal/S1;

.field public static final i:LX2/f;

.field public static final j:Lio/grpc/internal/m0;

.field public static final k:Lio/grpc/internal/n0;

.field public static final l:Lio/grpc/internal/n0;

.field public static final m:Lio/grpc/internal/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Lio/grpc/internal/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    new-instance v0, Lio/grpc/internal/o0;

    invoke-direct {v0}, Lio/grpc/internal/o0;-><init>()V

    new-instance v1, LX2/i0;

    const-string v2, "grpc-timeout"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r0;->b:LX2/i0;

    sget-object v0, LX2/r0;->d:LX2/h0;

    new-instance v1, LX2/i0;

    const-string v2, "grpc-encoding"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r0;->c:LX2/i0;

    new-instance v1, Lio/grpc/internal/o0;

    invoke-direct {v1}, Lio/grpc/internal/o0;-><init>()V

    const-string v2, "grpc-accept-encoding"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sget-object v7, LX2/n0;->d:Ljava/util/BitSet;

    new-instance v7, LX2/p0;

    invoke-direct {v7, v2, v4, v1}, LX2/p0;-><init>(Ljava/lang/String;ZLX2/q0;)V

    sput-object v7, Lio/grpc/internal/r0;->d:LX2/p0;

    new-instance v1, LX2/i0;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r0;->e:LX2/i0;

    new-instance v1, Lio/grpc/internal/o0;

    invoke-direct {v1}, Lio/grpc/internal/o0;-><init>()V

    const-string v2, "accept-encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-instance v5, LX2/p0;

    invoke-direct {v5, v2, v4, v1}, LX2/p0;-><init>(Ljava/lang/String;ZLX2/q0;)V

    sput-object v5, Lio/grpc/internal/r0;->f:LX2/p0;

    new-instance v1, LX2/i0;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v0}, LX2/i0;-><init>(Ljava/lang/String;LX2/j0;)V

    sput-object v1, Lio/grpc/internal/r0;->g:LX2/i0;

    const-string v1, "content-type"

    invoke-static {v1, v0}, LX2/n0;->a(Ljava/lang/String;LX2/j0;)LX2/i0;

    const-string v1, "te"

    invoke-static {v1, v0}, LX2/n0;->a(Ljava/lang/String;LX2/j0;)LX2/i0;

    const-string v1, "user-agent"

    invoke-static {v1, v0}, LX2/n0;->a(Ljava/lang/String;LX2/j0;)LX2/i0;

    sget v0, LO2/c;->b:I

    sget-object v0, LO2/d;->b:LO2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x2

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    new-instance v0, Lio/grpc/internal/S1;

    invoke-direct {v0}, Lio/grpc/internal/S1;-><init>()V

    sput-object v0, Lio/grpc/internal/r0;->h:Lio/grpc/internal/S1;

    new-instance v0, LX2/f;

    const-string v1, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-direct {v0, v1}, LX2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/internal/r0;->i:LX2/f;

    new-instance v0, Lio/grpc/internal/m0;

    invoke-direct {v0}, Lio/grpc/internal/m0;-><init>()V

    sput-object v0, Lio/grpc/internal/r0;->j:Lio/grpc/internal/m0;

    new-instance v0, Lio/grpc/internal/n0;

    invoke-direct {v0, v3}, Lio/grpc/internal/n0;-><init>(I)V

    sput-object v0, Lio/grpc/internal/r0;->k:Lio/grpc/internal/n0;

    new-instance v0, Lio/grpc/internal/n0;

    invoke-direct {v0, v6}, Lio/grpc/internal/n0;-><init>(I)V

    sput-object v0, Lio/grpc/internal/r0;->l:Lio/grpc/internal/n0;

    new-instance v0, Lio/grpc/internal/o0;

    invoke-direct {v0}, Lio/grpc/internal/o0;-><init>()V

    sput-object v0, Lio/grpc/internal/r0;->m:Lio/grpc/internal/o0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LX2/g;LX2/r0;IZ)[LX2/r;
    .locals 5

    iget-object v0, p0, LX2/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [LX2/r;

    sget-object v3, LX2/c;->b:LX2/c;

    sget-object v4, LX2/g;->k:LX2/g;

    new-instance v4, LX2/q;

    invoke-direct {v4, v3, p0, p2, p3}, LX2/q;-><init>(LX2/c;LX2/g;IZ)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LX2/p;

    instance-of p3, p2, Lio/grpc/internal/c2;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, LX2/p;->a()LX2/r;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-instance p3, Lio/grpc/internal/q0;

    invoke-direct {p3, p2, v4, p1}, Lio/grpc/internal/q0;-><init>(LX2/p;LX2/q;LX2/r0;)V

    move-object p2, p3

    :goto_1
    aput-object p2, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    sget-object p0, Lio/grpc/internal/r0;->j:Lio/grpc/internal/m0;

    aput-object p0, v2, v1

    return-object v2
.end method

.method public static b(Ljava/lang/String;)LR2/k;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v3, LR2/k;

    invoke-direct {v3, v1, p0, v2, v0}, LR2/k;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    return-object v3
.end method

.method public static c(LX2/W;Z)Lio/grpc/internal/w;
    .locals 3

    iget-object v0, p0, LX2/W;->a:LX2/Y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX2/Y;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/L2;

    invoke-interface {v0}, Lio/grpc/internal/L2;->a()Lio/grpc/internal/E1;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, LX2/W;->b:LX2/p;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lio/grpc/internal/p0;

    invoke-direct {p1, p0, v0}, Lio/grpc/internal/p0;-><init>(LX2/p;Lio/grpc/internal/w;)V

    return-object p1

    :cond_2
    iget-object v0, p0, LX2/W;->c:LX2/L0;

    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean p0, p0, LX2/W;->d:Z

    if-eqz p0, :cond_3

    new-instance p0, Lio/grpc/internal/i0;

    sget-object p1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/i0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    new-instance p0, Lio/grpc/internal/i0;

    sget-object p1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/i0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    return-object p0

    :cond_4
    return-object v1
.end method
