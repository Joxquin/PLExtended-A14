.class public final Lio/grpc/internal/E0;
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

    iput p1, p0, Lio/grpc/internal/E0;->d:I

    iput-object p2, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lio/grpc/internal/E0;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v1, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v1, v1, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    iget-object v0, v0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->z:LX2/z;

    iget-object v0, v0, LX2/z;->a:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v0, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->v:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/F0;

    iget-object p0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/grpc/internal/w0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/w0;-><init>(Lio/grpc/internal/H0;I)V

    iget-object p0, p0, Lio/grpc/internal/H0;->n:LX2/P0;

    invoke-virtual {p0, v0}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/F0;

    iget-object v2, v0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iput-object v1, v2, Lio/grpc/internal/H0;->q:Lio/grpc/internal/g0;

    iget-object v3, v2, Lio/grpc/internal/H0;->A:LX2/L0;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/F0;

    iget-object v0, p0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    iget-object p0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iget-object p0, p0, Lio/grpc/internal/H0;->A:LX2/L0;

    invoke-interface {v0, p0}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    iget-object v0, v0, Lio/grpc/internal/F0;->a:Lio/grpc/internal/z;

    if-ne v3, v0, :cond_3

    iput-object v0, v2, Lio/grpc/internal/H0;->y:Lio/grpc/internal/E1;

    iget-object p0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/F0;

    iget-object p0, p0, Lio/grpc/internal/F0;->c:Lio/grpc/internal/H0;

    iput-object v1, p0, Lio/grpc/internal/H0;->x:Lio/grpc/internal/z;

    sget-object v0, Lio/grpc/ConnectivityState;->e:Lio/grpc/ConnectivityState;

    invoke-static {p0, v0}, Lio/grpc/internal/H0;->g(Lio/grpc/internal/H0;Lio/grpc/ConnectivityState;)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lio/grpc/internal/E0;->e:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/x0;

    iget-object p0, p0, Lio/grpc/internal/x0;->f:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/H0;

    iget-object v0, p0, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    iput-object v1, p0, Lio/grpc/internal/H0;->t:LX2/O0;

    iput-object v1, p0, Lio/grpc/internal/H0;->u:Lio/grpc/internal/E1;

    sget-object p0, LX2/L0;->n:LX2/L0;

    const-string v1, "InternalSubchannel closed transport due to address change"

    invoke-virtual {p0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/grpc/internal/E1;->f(LX2/L0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
