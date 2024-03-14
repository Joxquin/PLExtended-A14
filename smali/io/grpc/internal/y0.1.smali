.class public final Lio/grpc/internal/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX2/L0;

.field public final synthetic f:Lio/grpc/internal/H0;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/H0;LX2/L0;I)V
    .locals 0

    iput p3, p0, Lio/grpc/internal/y0;->d:I

    iput-object p1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iput-object p2, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lio/grpc/internal/y0;->d:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v2, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    iput-object v2, v0, Lio/grpc/internal/H0;->A:LX2/L0;

    iget-object v0, v0, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v3, v2, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    const/4 v4, 0x0

    iput-object v4, v2, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iput-object v4, v2, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    invoke-static {v2, v1}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->o:Lio/grpc/internal/D0;

    invoke-virtual {v1}, Lio/grpc/internal/D0;->a()V

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/grpc/internal/w0;

    const/4 v5, 0x2

    invoke-direct {v2, v1, v5}, Lio/grpc/internal/w0;-><init>(Lio/grpc/internal/H0;I)V

    iget-object v1, v1, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v1, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v2, v1, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {v2}, LX2/P0;->d()V

    iget-object v2, v1, Lio/grpc/internal/H0;->s:LX2/O0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LX2/O0;->a()V

    iput-object v4, v1, Lio/grpc/internal/H0;->s:LX2/O0;

    iput-object v4, v1, Lio/grpc/internal/H0;->q:Lio/grpc/internal/g0;

    :cond_2
    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LX2/O0;->a()V

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    invoke-interface {v1, v2}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iput-object v4, v1, Lio/grpc/internal/H0;->t:LX2/O0;

    iput-object v4, v1, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    invoke-interface {v0, v1}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object p0, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    invoke-interface {v3, p0}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    :cond_5
    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/E1;

    iget-object v2, p0, Lio/grpc/internal/y0;->e:LX2/L0;

    invoke-interface {v1, v2}, Lio/grpc/internal/E1;->d(LX2/L0;)V

    goto :goto_2

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
