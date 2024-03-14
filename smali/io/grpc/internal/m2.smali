.class public final Lio/grpc/internal/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/internal/o2;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/o2;I)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/m2;->d:I

    iput-object p1, p0, Lio/grpc/internal/m2;->e:Lio/grpc/internal/o2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/grpc/internal/m2;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/m2;->e:Lio/grpc/internal/o2;

    iget-object v0, v0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-object v0, v0, Lio/grpc/internal/r2;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/d2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lio/grpc/internal/d2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/m2;->e:Lio/grpc/internal/o2;

    iget-object p0, p0, Lio/grpc/internal/o2;->b:Lio/grpc/internal/r2;

    iget-boolean v0, p0, Lio/grpc/internal/r2;->w:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/r2;->r:Lio/grpc/internal/v;

    invoke-interface {p0}, Lio/grpc/internal/v;->a()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
