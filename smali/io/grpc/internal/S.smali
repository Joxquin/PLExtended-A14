.class public final Lio/grpc/internal/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/S;->d:I

    iput-object p2, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lio/grpc/internal/S;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/V;

    iget-object v0, v0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/binder/internal/e;

    invoke-interface {v0, p0}, Lio/grpc/internal/v;->c(Lio/grpc/binder/internal/e;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->i(Ljava/io/InputStream;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->j(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, LX2/E;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->d(LX2/E;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, LX2/H;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->f(LX2/H;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, LX2/x;

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->o(LX2/x;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/S;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/V;

    iget-object v0, v0, Lio/grpc/internal/V;->a:Lio/grpc/internal/v;

    iget-object p0, p0, Lio/grpc/internal/S;->f:Ljava/lang/Object;

    check-cast p0, LX2/r0;

    invoke-interface {v0, p0}, Lio/grpc/internal/v;->b(LX2/r0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
