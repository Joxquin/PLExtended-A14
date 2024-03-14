.class public final synthetic LY2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lio/grpc/binder/internal/c;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/binder/internal/c;I)V
    .locals 0

    iput p2, p0, LY2/c;->d:I

    iput-object p1, p0, LY2/c;->e:Lio/grpc/binder/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LY2/c;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LY2/c;->e:Lio/grpc/binder/internal/c;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lio/grpc/binder/internal/BinderTransport$TransportState;->g:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {v0, p0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lio/grpc/binder/internal/c;->k:LX2/L0;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_0
    iget-object p0, p0, LY2/c;->e:Lio/grpc/binder/internal/c;

    check-cast p0, Lio/grpc/binder/internal/b;

    sget v0, Lio/grpc/binder/internal/b;->A:I

    monitor-enter p0

    :try_start_1
    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->d:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->e:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->p(Lio/grpc/binder/internal/BinderTransport$TransportState;)V

    iget-object v0, p0, Lio/grpc/binder/internal/b;->v:Lio/grpc/binder/internal/h;

    invoke-virtual {v0}, Lio/grpc/binder/internal/h;->a()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
