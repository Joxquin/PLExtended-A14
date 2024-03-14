.class public final Lio/grpc/internal/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:LX2/f;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Lio/grpc/internal/s2;

.field public final f:Lio/grpc/internal/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/f;

    const-string v1, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    invoke-direct {v0, v1}, LX2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/internal/A1;->g:LX2/f;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZII)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    invoke-static {v1, v2}, Lio/grpc/internal/O0;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    const-string v2, "waitForReady"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_15

    check-cast v3, Ljava/lang/Boolean;

    :goto_0
    iput-object v3, v0, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    invoke-static {v1, v2}, Lio/grpc/internal/O0;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v7, v2, v6}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    const-string v2, "maxRequestMessageBytes"

    invoke-static {v1, v2}, Lio/grpc/internal/O0;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v7, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v7, v2, v6}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_4
    if-eqz p2, :cond_5

    const-string v2, "retryPolicy"

    invoke-static {v1, v2}, Lio/grpc/internal/O0;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    const-string v9, "%s must not contain OK"

    const-string v10, "maxAttempts must be greater than 1: %s"

    const-string v11, "maxAttempts cannot be empty"

    const-string v12, "maxAttempts"

    if-nez v2, :cond_6

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_6
    invoke-static {v2, v12}, Lio/grpc/internal/O0;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v11}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v6, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    invoke-static {v10, v13, v14}, LO2/m;->c(Ljava/lang/String;IZ)V

    move/from16 v14, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-string v13, "initialBackoff"

    invoke-static {v2, v13}, Lio/grpc/internal/O0;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    invoke-static {v13, v14}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v16, v13, v7

    if-lez v16, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const-string v4, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v3, v4, v13, v14}, LO2/m;->e(ZLjava/lang/String;J)V

    const-string v3, "maxBackoff"

    invoke-static {v2, v3}, Lio/grpc/internal/O0;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxBackoff cannot be empty"

    invoke-static {v3, v4}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v16, v3, v7

    if-lez v16, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    const-string v5, "maxBackoff must be greater than 0: %s"

    invoke-static {v6, v5, v3, v4}, LO2/m;->e(ZLjava/lang/String;J)V

    const-string v5, "backoffMultiplier"

    invoke-static {v2, v5}, Lio/grpc/internal/O0;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "backoffMultiplier cannot be empty"

    invoke-static {v5, v6}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v5, 0x0

    cmpl-double v5, v20, v5

    if-lez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    const-string v6, "backoffMultiplier must be greater than 0: %s"

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v6, v7, v5}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v5, "perAttemptRecvTimeout"

    invoke-static {v2, v5}, Lio/grpc/internal/O0;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v6, v6, v16

    if-ltz v6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v6, 0x1

    :goto_9
    const-string v7, "perAttemptRecvTimeout cannot be negative: %s"

    invoke-static {v7, v5, v6}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v6, "retryableStatusCodes"

    invoke-static {v2, v6}, Lio/grpc/internal/B2;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 v7, 0x1

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    :goto_a
    const-string v8, "%s is required in retry policy"

    invoke-static {v8, v6, v7}, LO2/t;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    sget-object v7, Lio/grpc/Status$Code;->d:Lio/grpc/Status$Code;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v9, v6, v7}, LO2/t;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-nez v5, :cond_f

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v8, 0x1

    :goto_c
    const-string v6, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    invoke-static {v6, v8}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v6, Lio/grpc/internal/s2;

    move-wide v7, v13

    move-object v14, v6

    move-wide/from16 v16, v7

    move-wide/from16 v18, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v2

    invoke-direct/range {v14 .. v23}, Lio/grpc/internal/s2;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    :goto_d
    iput-object v6, v0, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    if-eqz p2, :cond_10

    const-string v2, "hedgingPolicy"

    invoke-static {v1, v2}, Lio/grpc/internal/O0;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_11

    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    invoke-static {v1, v12}, Lio/grpc/internal/O0;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v11}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    const/4 v8, 0x1

    goto :goto_f

    :cond_12
    const/4 v8, 0x0

    :goto_f
    invoke-static {v10, v2, v8}, LO2/m;->c(Ljava/lang/String;IZ)V

    move/from16 v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "hedgingDelay"

    invoke-static {v1, v3}, Lio/grpc/internal/O0;->h(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hedgingDelay cannot be empty"

    invoke-static {v3, v4}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_10

    :cond_13
    const/4 v5, 0x0

    :goto_10
    const-string v6, "hedgingDelay must not be negative: %s"

    invoke-static {v5, v6, v3, v4}, LO2/m;->e(ZLjava/lang/String;J)V

    new-instance v5, Lio/grpc/internal/s0;

    const-string v6, "nonFatalStatusCodes"

    invoke-static {v1, v6}, Lio/grpc/internal/B2;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_14

    const-class v1, Lio/grpc/Status$Code;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_11

    :cond_14
    sget-object v7, Lio/grpc/Status$Code;->d:Lio/grpc/Status$Code;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v9, v6, v7}, LO2/t;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_11
    invoke-direct {v5, v2, v3, v4, v1}, Lio/grpc/internal/s0;-><init>(IJLjava/util/Set;)V

    move-object v4, v5

    :goto_12
    iput-object v4, v0, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v4, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    filled-new-array {v3, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/grpc/internal/A1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/grpc/internal/A1;

    iget-object v0, p1, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    iget-object v2, p0, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    invoke-static {v2, v0}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    iget-object v2, p1, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    iget-object p1, p1, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    iget-object v1, p0, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    iget-object v4, p0, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    iget-object v5, p0, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "timeoutNanos"

    iget-object v2, p0, Lio/grpc/internal/A1;->a:Ljava/lang/Long;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "waitForReady"

    iget-object v2, p0, Lio/grpc/internal/A1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxInboundMessageSize"

    iget-object v2, p0, Lio/grpc/internal/A1;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxOutboundMessageSize"

    iget-object v2, p0, Lio/grpc/internal/A1;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retryPolicy"

    iget-object v2, p0, Lio/grpc/internal/A1;->e:Lio/grpc/internal/s2;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hedgingPolicy"

    iget-object p0, p0, Lio/grpc/internal/A1;->f:Lio/grpc/internal/s0;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
