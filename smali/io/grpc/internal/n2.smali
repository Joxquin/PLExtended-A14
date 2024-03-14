.class public final Lio/grpc/internal/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX2/L0;

.field public final synthetic f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public final synthetic g:LX2/r0;

.field public final synthetic h:Lio/grpc/internal/o2;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/o2;LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;I)V
    .locals 0

    iput p5, p0, Lio/grpc/internal/n2;->d:I

    iput-object p1, p0, Lio/grpc/internal/n2;->h:Lio/grpc/internal/o2;

    iput-object p2, p0, Lio/grpc/internal/n2;->e:LX2/L0;

    iput-object p3, p0, Lio/grpc/internal/n2;->f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iput-object p4, p0, Lio/grpc/internal/n2;->g:LX2/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/grpc/internal/n2;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/n2;->h:Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iput-boolean v1, v0, Lio/grpc/internal/r2;->w:Z

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    iget-object v1, p0, Lio/grpc/internal/n2;->e:LX2/L0;

    iget-object v2, p0, Lio/grpc/internal/n2;->f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object p0, p0, Lio/grpc/internal/n2;->g:LX2/r0;

    invoke-interface {v0, v1, v2, p0}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/n2;->h:Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iput-boolean v1, v0, Lio/grpc/internal/r2;->w:Z

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    iget-object v1, p0, Lio/grpc/internal/n2;->e:LX2/L0;

    iget-object v2, p0, Lio/grpc/internal/n2;->f:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object p0, p0, Lio/grpc/internal/n2;->g:LX2/r0;

    invoke-interface {v0, v1, v2, p0}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
