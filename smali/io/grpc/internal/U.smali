.class public final Lio/grpc/internal/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX2/L0;

.field public final synthetic e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public final synthetic f:LX2/r0;

.field public final synthetic g:Lio/grpc/internal/V;


# direct methods
.method public constructor <init>(Lio/grpc/internal/V;LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/U;->g:Lio/grpc/internal/V;

    iput-object p2, p0, Lio/grpc/internal/U;->d:LX2/L0;

    iput-object p3, p0, Lio/grpc/internal/U;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iput-object p4, p0, Lio/grpc/internal/U;->f:LX2/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/U;->g:Lio/grpc/internal/V;

    iget-object v0, v0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    iget-object v1, p0, Lio/grpc/internal/U;->d:LX2/L0;

    iget-object v2, p0, Lio/grpc/internal/U;->e:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object p0, p0, Lio/grpc/internal/U;->f:LX2/r0;

    invoke-interface {v0, v1, v2, p0}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void
.end method
