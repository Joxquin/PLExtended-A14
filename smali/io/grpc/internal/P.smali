.class public final Lio/grpc/internal/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lio/grpc/internal/W;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/W;II)V
    .locals 0

    iput p3, p0, Lio/grpc/internal/P;->d:I

    iput-object p1, p0, Lio/grpc/internal/P;->f:Lio/grpc/internal/W;

    iput p2, p0, Lio/grpc/internal/P;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lio/grpc/internal/P;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/P;->f:Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget p0, p0, Lio/grpc/internal/P;->e:I

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->b(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/P;->f:Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget p0, p0, Lio/grpc/internal/P;->e:I

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->a(I)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/P;->f:Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget p0, p0, Lio/grpc/internal/P;->e:I

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->h(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
