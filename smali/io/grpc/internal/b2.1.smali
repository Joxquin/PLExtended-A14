.class public final Lio/grpc/internal/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lio/grpc/internal/b2;->a:I

    iput p1, p0, Lio/grpc/internal/b2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/p2;)V
    .locals 1

    iget v0, p0, Lio/grpc/internal/b2;->a:I

    iget p0, p0, Lio/grpc/internal/b2;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p1, p0}, Lio/grpc/internal/u;->h(I)V

    return-void

    :pswitch_1
    iget-object p1, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p1, p0}, Lio/grpc/internal/u;->b(I)V

    return-void

    :goto_0
    iget-object p1, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p1, p0}, Lio/grpc/internal/u;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
