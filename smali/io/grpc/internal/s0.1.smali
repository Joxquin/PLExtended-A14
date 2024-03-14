.class public final Lio/grpc/internal/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method public constructor <init>(IJLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/grpc/internal/s0;->a:I

    iput-wide p2, p0, Lio/grpc/internal/s0;->b:J

    sget p1, Lcom/google/common/collect/ImmutableSet;->f:I

    instance-of p1, p4, Lcom/google/common/collect/ImmutableSet;

    if-eqz p1, :cond_0

    instance-of p1, p4, Ljava/util/SortedSet;

    if-nez p1, :cond_0

    move-object p1, p4

    check-cast p1, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->l()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p2, p1}, Lcom/google/common/collect/ImmutableSet;->p(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/grpc/internal/s0;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/grpc/internal/s0;

    iget v2, p0, Lio/grpc/internal/s0;->a:I

    iget v3, p1, Lio/grpc/internal/s0;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lio/grpc/internal/s0;->b:J

    iget-wide v4, p1, Lio/grpc/internal/s0;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lio/grpc/internal/s0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/s0;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/s0;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxAttempts"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hedgingDelayNanos"

    iget-wide v2, p0, Lio/grpc/internal/s0;->b:J

    invoke-virtual {v0, v1, v2, v3}, LO2/i;->b(Ljava/lang/String;J)V

    iget-object p0, p0, Lio/grpc/internal/s0;->c:Lcom/google/common/collect/ImmutableSet;

    const-string v1, "nonFatalStatusCodes"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
