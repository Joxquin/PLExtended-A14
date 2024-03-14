.class public final Lio/grpc/internal/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/grpc/internal/Z0;->d:I

    iput-object p2, p0, Lio/grpc/internal/Z0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/grpc/internal/Z0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lio/grpc/internal/Z0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/g1;

    iget-object p0, p0, Lio/grpc/internal/g1;->c:Lio/grpc/internal/s1;

    iget-object v0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v0, p0, Lio/grpc/internal/s1;->r:LX2/P0;

    invoke-virtual {v0}, LX2/P0;->d()V

    iget-object v1, p0, Lio/grpc/internal/s1;->f0:LX2/O0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LX2/O0;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/s1;->f0:LX2/O0;

    iput-object v1, p0, Lio/grpc/internal/s1;->g0:Lio/grpc/internal/g0;

    :cond_0
    invoke-virtual {v0}, LX2/P0;->d()V

    iget-boolean v0, p0, Lio/grpc/internal/s1;->A:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/s1;->z:LX2/A0;

    invoke-virtual {p0}, LX2/A0;->b()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lio/grpc/internal/Z0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/b1;

    iget-object p0, p0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    invoke-virtual {p0}, Lio/grpc/internal/s1;->m()V

    return-void

    :goto_0
    iget-object p0, p0, Lio/grpc/internal/Z0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q1;

    iget-object p0, p0, Lio/grpc/internal/q1;->g:Lio/grpc/internal/H0;

    sget-object v0, Lio/grpc/internal/s1;->n0:LX2/L0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/grpc/internal/y0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/internal/y0;-><init>(Lio/grpc/internal/H0;LX2/L0;I)V

    iget-object p0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
