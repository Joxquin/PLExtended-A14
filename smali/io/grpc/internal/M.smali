.class public final Lio/grpc/internal/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lio/grpc/internal/O;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/O;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lio/grpc/internal/M;->d:I

    iput-object p1, p0, Lio/grpc/internal/M;->f:Lio/grpc/internal/O;

    iput-object p2, p0, Lio/grpc/internal/M;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lio/grpc/internal/M;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lio/grpc/internal/M;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/D1;

    invoke-interface {p0}, Lio/grpc/internal/D1;->a()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lio/grpc/internal/M;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/D1;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/grpc/internal/D1;->c(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lio/grpc/internal/M;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/D1;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lio/grpc/internal/D1;->c(Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/M;->f:Lio/grpc/internal/O;

    iget-object v0, v0, Lio/grpc/internal/O;->k:Lio/grpc/internal/D1;

    iget-object p0, p0, Lio/grpc/internal/M;->e:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    invoke-interface {v0, p0}, Lio/grpc/internal/D1;->b(LX2/L0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
