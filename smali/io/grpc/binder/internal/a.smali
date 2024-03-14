.class public final synthetic Lio/grpc/binder/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lio/grpc/binder/internal/b;

.field public final synthetic e:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/binder/internal/b;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/a;->d:Lio/grpc/binder/internal/b;

    iput-object p2, p0, Lio/grpc/binder/internal/a;->e:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/binder/internal/a;->d:Lio/grpc/binder/internal/b;

    iget-object p0, p0, Lio/grpc/binder/internal/a;->e:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/grpc/binder/internal/c;->i:LX2/c;

    sget-object v2, Lio/grpc/binder/internal/c;->q:LX2/b;

    invoke-virtual {v1, v2}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    sget-object v1, LX2/L0;->j:LX2/L0;

    const-string v2, "No remote UID available"

    invoke-virtual {v1, v2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lio/grpc/binder/internal/b;->u:Lio/grpc/binder/h;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lio/grpc/binder/h;->a(I)LX2/L0;

    move-result-object v1

    :goto_0
    monitor-enter v0

    :try_start_1
    sget-object v2, Lio/grpc/binder/internal/BinderTransport$TransportState;->e:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {v0, v2}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, LX2/L0;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0, v1, v3}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    goto :goto_1

    :cond_1
    iput-object p0, v0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    :catch_0
    if-nez v1, :cond_2

    :try_start_3
    sget-object p0, LX2/L0;->n:LX2/L0;

    const-string v1, "Failed to observe outgoing binder"

    invoke-virtual {p0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lio/grpc/binder/internal/c;->k()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lio/grpc/binder/internal/BinderTransport$TransportState;->f:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {v0, p0}, Lio/grpc/binder/internal/c;->p(Lio/grpc/binder/internal/BinderTransport$TransportState;)V

    iget-object p0, v0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    invoke-interface {p0}, Lio/grpc/internal/D1;->d()V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
