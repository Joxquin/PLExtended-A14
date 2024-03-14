.class public final Lio/grpc/internal/u1;
.super LX2/A0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/grpc/internal/v1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/v1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/u1;->a:Lio/grpc/internal/v1;

    invoke-direct {p0}, LX2/A0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/u1;->a:Lio/grpc/internal/v1;

    iget-object p0, p0, Lio/grpc/internal/v1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(LX2/x0;)V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    sget-object v0, LX2/c;->b:LX2/c;

    new-instance v0, LX2/I;

    iget-object p0, p0, Lio/grpc/internal/u1;->a:Lio/grpc/internal/v1;

    iget-object p0, p0, Lio/grpc/internal/v1;->a:Ljava/net/SocketAddress;

    invoke-direct {v0, p0}, LX2/I;-><init>(Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, LX2/c;->b:LX2/c;

    new-instance v1, LX2/z0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, LX2/z0;-><init>(Ljava/util/List;LX2/c;LX2/w0;)V

    invoke-virtual {p1, v1}, LX2/x0;->d(LX2/z0;)V

    return-void
.end method
