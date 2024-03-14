.class public final Lio/grpc/internal/v1;
.super LX2/x0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/SocketAddress;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LX2/x0;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/v1;->a:Ljava/net/SocketAddress;

    iput-object p2, p0, Lio/grpc/internal/v1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "directaddress"

    return-object p0
.end method

.method public final c(Ljava/net/URI;LX2/v0;)LX2/A0;
    .locals 0

    new-instance p1, Lio/grpc/internal/u1;

    invoke-direct {p1, p0}, Lio/grpc/internal/u1;-><init>(Lio/grpc/internal/v1;)V

    return-object p1
.end method
