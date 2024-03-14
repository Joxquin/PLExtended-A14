.class public final synthetic LY2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/binder/internal/h;

.field public final synthetic f:LX2/L0;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/binder/internal/h;LX2/L0;I)V
    .locals 0

    iput p3, p0, LY2/n;->d:I

    iput-object p1, p0, LY2/n;->e:Lio/grpc/binder/internal/h;

    iput-object p2, p0, LY2/n;->f:LX2/L0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LY2/n;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LY2/n;->e:Lio/grpc/binder/internal/h;

    iget-object p0, p0, LY2/n;->f:LX2/L0;

    invoke-virtual {v0, p0}, Lio/grpc/binder/internal/h;->c(LX2/L0;)V

    return-void

    :goto_0
    iget-object v0, p0, LY2/n;->e:Lio/grpc/binder/internal/h;

    iget-object p0, p0, LY2/n;->f:LX2/L0;

    invoke-virtual {v0, p0}, Lio/grpc/binder/internal/h;->c(LX2/L0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
