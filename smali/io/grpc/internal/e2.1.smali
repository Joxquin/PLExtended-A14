.class public final Lio/grpc/internal/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/e2;->d:I

    iput-object p2, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/grpc/internal/e2;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object p0, p0, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/p2;

    invoke-virtual {v0, p0}, Lio/grpc/internal/r2;->u(Lio/grpc/internal/p2;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    iget-object p0, p0, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    check-cast p0, LX2/r0;

    invoke-interface {v0, p0}, Lio/grpc/internal/v;->b(LX2/r0;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/d2;

    invoke-direct {v2, v1, p0}, Lio/grpc/internal/d2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/r2;

    iput-boolean v1, v0, Lio/grpc/internal/r2;->w:Z

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    iget-object p0, p0, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, LX2/r0;

    invoke-direct {v2}, LX2/r0;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/e2;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    iget-object p0, p0, Lio/grpc/internal/e2;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/binder/internal/e;

    invoke-interface {v0, p0}, Lio/grpc/internal/v;->c(Lio/grpc/binder/internal/e;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
