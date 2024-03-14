.class public final Lio/grpc/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:LX2/c;

.field public c:Ljava/lang/String;

.field public d:Lio/grpc/HttpConnectProxiedSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    iput-object v0, p0, Lio/grpc/internal/x;->a:Ljava/lang/String;

    sget-object v0, LX2/c;->b:LX2/c;

    iput-object v0, p0, Lio/grpc/internal/x;->b:LX2/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/grpc/internal/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/grpc/internal/x;

    iget-object v0, p0, Lio/grpc/internal/x;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/grpc/internal/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/x;->b:LX2/c;

    iget-object v2, p1, Lio/grpc/internal/x;->b:LX2/c;

    invoke-virtual {v0, v2}, LX2/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/x;->c:Ljava/lang/String;

    iget-object v2, p1, Lio/grpc/internal/x;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/x;->d:Lio/grpc/HttpConnectProxiedSocketAddress;

    iget-object p1, p1, Lio/grpc/internal/x;->d:Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-static {p0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/x;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/internal/x;->b:LX2/c;

    iget-object v2, p0, Lio/grpc/internal/x;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/grpc/internal/x;->d:Lio/grpc/HttpConnectProxiedSocketAddress;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
