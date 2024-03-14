.class public final Lio/grpc/internal/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX2/r0;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;LX2/r0;I)V
    .locals 0

    iput p4, p0, Lio/grpc/internal/D;->d:I

    iput-object p1, p0, Lio/grpc/internal/D;->g:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/internal/D;->f:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/D;->e:LX2/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lio/grpc/internal/D;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/D;->g:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/L;

    iget-object v0, v0, Lio/grpc/internal/L;->f:LX2/k;

    iget-object v1, p0, Lio/grpc/internal/D;->f:Ljava/lang/Object;

    check-cast v1, LX2/j;

    iget-object p0, p0, Lio/grpc/internal/D;->e:LX2/r0;

    invoke-virtual {v0, v1, p0}, LX2/k;->e(LX2/j;LX2/r0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/D;->g:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/K;

    iget-object v0, v0, Lio/grpc/internal/K;->a:LX2/j;

    iget-object v1, p0, Lio/grpc/internal/D;->f:Ljava/lang/Object;

    check-cast v1, LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/D;->e:LX2/r0;

    invoke-virtual {v0, v1, p0}, LX2/j;->a(LX2/L0;LX2/r0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
