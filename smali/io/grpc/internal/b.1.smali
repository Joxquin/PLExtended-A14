.class public final Lio/grpc/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/V;

.field public b:LX2/a0;

.field public c:LX2/c0;

.field public final synthetic d:Lio/grpc/internal/f;


# direct methods
.method public constructor <init>(Lio/grpc/internal/f;Lio/grpc/internal/g1;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/internal/b;->d:Lio/grpc/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/internal/b;->a:LX2/V;

    iget-object v0, p1, Lio/grpc/internal/f;->a:LX2/e0;

    iget-object p1, p1, Lio/grpc/internal/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, LX2/e0;->a(Ljava/lang/String;)LX2/c0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/b;->c:LX2/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, LX2/V;->d(LX2/V;)LX2/a0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/b;->b:LX2/a0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find policy \'"

    const-string v0, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-static {p2, p1, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
