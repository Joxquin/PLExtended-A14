.class public final Lio/grpc/internal/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:D

.field public final e:Ljava/lang/Long;

.field public final f:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method public constructor <init>(IJJDLjava/lang/Long;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/grpc/internal/s2;->a:I

    iput-wide p2, p0, Lio/grpc/internal/s2;->b:J

    iput-wide p4, p0, Lio/grpc/internal/s2;->c:J

    iput-wide p6, p0, Lio/grpc/internal/s2;->d:D

    iput-object p8, p0, Lio/grpc/internal/s2;->e:Ljava/lang/Long;

    sget p1, Lcom/google/common/collect/ImmutableSet;->f:I

    instance-of p1, p9, Lcom/google/common/collect/ImmutableSet;

    if-eqz p1, :cond_0

    instance-of p1, p9, Ljava/util/SortedSet;

    if-nez p1, :cond_0

    move-object p1, p9

    check-cast p1, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->l()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p9}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p2, p1}, Lcom/google/common/collect/ImmutableSet;->p(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lio/grpc/internal/s2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/grpc/internal/s2;

    iget v0, p1, Lio/grpc/internal/s2;->a:I

    iget v2, p0, Lio/grpc/internal/s2;->a:I

    if-ne v2, v0, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/s2;->b:J

    iget-wide v4, p1, Lio/grpc/internal/s2;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/s2;->c:J

    iget-wide v4, p1, Lio/grpc/internal/s2;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/s2;->d:D

    iget-wide v4, p1, Lio/grpc/internal/s2;->d:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/s2;->e:Ljava/lang/Long;

    iget-object v2, p1, Lio/grpc/internal/s2;->e:Ljava/lang/Long;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lio/grpc/internal/s2;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lio/grpc/internal/s2;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lio/grpc/internal/s2;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lio/grpc/internal/s2;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/s2;->e:Ljava/lang/Long;

    iget-object v6, p0, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/s2;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxAttempts"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initialBackoffNanos"

    iget-wide v2, p0, Lio/grpc/internal/s2;->b:J

    invoke-virtual {v0, v1, v2, v3}, LO2/i;->b(Ljava/lang/String;J)V

    const-string v1, "maxBackoffNanos"

    iget-wide v2, p0, Lio/grpc/internal/s2;->c:J

    invoke-virtual {v0, v1, v2, v3}, LO2/i;->b(Ljava/lang/String;J)V

    iget-wide v1, p0, Lio/grpc/internal/s2;->d:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backoffMultiplier"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "perAttemptRecvTimeoutNanos"

    iget-object v2, p0, Lio/grpc/internal/s2;->e:Ljava/lang/Long;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/internal/s2;->f:Lcom/google/common/collect/ImmutableSet;

    const-string v1, "retryableStatusCodes"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
