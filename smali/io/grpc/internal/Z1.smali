.class public final Lio/grpc/internal/Z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/Z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/p2;)V
    .locals 0

    iget p0, p0, Lio/grpc/internal/Z1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->m()V

    return-void

    :pswitch_1
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->flush()V

    return-void

    :goto_0
    iget-object p0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    invoke-interface {p0}, Lio/grpc/internal/u;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
