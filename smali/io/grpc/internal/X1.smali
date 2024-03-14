.class public final Lio/grpc/internal/X1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/grpc/internal/r2;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/r2;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lio/grpc/internal/X1;->a:I

    iput-object p1, p0, Lio/grpc/internal/X1;->b:Lio/grpc/internal/r2;

    iput-object p2, p0, Lio/grpc/internal/X1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/p2;)V
    .locals 2

    iget v0, p0, Lio/grpc/internal/X1;->a:I

    iget-object v1, p0, Lio/grpc/internal/X1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    check-cast v1, LX2/H;

    invoke-interface {p0, v1}, Lio/grpc/internal/u;->f(LX2/H;)V

    return-void

    :pswitch_1
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    check-cast v1, LX2/E;

    invoke-interface {p0, v1}, Lio/grpc/internal/u;->d(LX2/E;)V

    return-void

    :pswitch_2
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    check-cast v1, LX2/x;

    invoke-interface {p0, v1}, Lio/grpc/internal/u;->o(LX2/x;)V

    return-void

    :pswitch_3
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Lio/grpc/internal/u;->j(Ljava/lang/String;)V

    return-void

    :goto_0
    iget-object p1, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    iget-object p0, p0, Lio/grpc/internal/X1;->b:Lio/grpc/internal/r2;

    iget-object p0, p0, Lio/grpc/internal/r2;->a:LX2/u0;

    iget-object p0, p0, LX2/u0;->d:LX2/t0;

    invoke-interface {p0, v1}, LX2/t0;->a(Ljava/lang/Object;)LZ2/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/grpc/internal/u;->i(Ljava/io/InputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
