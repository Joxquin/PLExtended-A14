.class public final Lio/grpc/internal/A2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/c0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LX2/c0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/A2;->a:LX2/c0;

    iput-object p2, p0, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lio/grpc/internal/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/grpc/internal/A2;

    iget-object v2, p0, Lio/grpc/internal/A2;->a:LX2/c0;

    iget-object v3, p1, Lio/grpc/internal/A2;->a:LX2/c0;

    invoke-static {v2, v3}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

    iget-object p1, p1, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

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
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/A2;->a:LX2/c0;

    iget-object p0, p0, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lio/grpc/internal/A2;->a:LX2/c0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    iget-object p0, p0, Lio/grpc/internal/A2;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
