.class public final Lio/grpc/internal/E;
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

    iput p1, p0, Lio/grpc/internal/E;->d:I

    iput-object p2, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lio/grpc/internal/E;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/K;

    iget-object v0, v0, Lio/grpc/internal/K;->a:LX2/j;

    iget-object p0, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    check-cast p0, LX2/r0;

    invoke-virtual {v0, p0}, LX2/j;->b(LX2/r0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/L;

    iget-object v0, v0, Lio/grpc/internal/L;->f:LX2/k;

    iget-object p0, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    invoke-virtual {v0, p0}, LX2/k;->d(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/L;

    iget-object v0, v0, Lio/grpc/internal/L;->f:LX2/k;

    iget-object p0, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    check-cast p0, LX2/L0;

    iget-object v1, p0, LX2/L0;->b:Ljava/lang/String;

    iget-object p0, p0, LX2/L0;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p0}, LX2/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/L;

    sget-object v1, LX2/L0;->h:LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lio/grpc/internal/L;->g(LX2/L0;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/E;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/K;

    iget-object v0, v0, Lio/grpc/internal/K;->a:LX2/j;

    iget-object p0, p0, Lio/grpc/internal/E;->f:Ljava/lang/Object;

    invoke-virtual {v0, p0}, LX2/j;->c(Ljava/lang/Object;)V

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
