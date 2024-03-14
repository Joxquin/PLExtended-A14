.class public final Lio/grpc/binder/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final k:Ljava/util/logging/Logger;


# instance fields
.field public final d:Landroid/content/Intent;

.field public final e:I

.field public final f:LY2/a;

.field public final g:Ljava/util/concurrent/Executor;

.field public h:Lio/grpc/binder/internal/ServiceBinding$State;

.field public i:Landroid/content/Context;

.field public j:Lio/grpc/binder/internal/ServiceBinding$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/binder/internal/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/binder/internal/h;->k:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;ILY2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lio/grpc/binder/internal/h;->d:Landroid/content/Intent;

    iput p4, p0, Lio/grpc/binder/internal/h;->e:I

    iput-object p5, p0, Lio/grpc/binder/internal/h;->f:LY2/a;

    iput-object p2, p0, Lio/grpc/binder/internal/h;->i:Landroid/content/Context;

    iput-object p1, p0, Lio/grpc/binder/internal/h;->g:Ljava/util/concurrent/Executor;

    sget-object p1, Lio/grpc/binder/internal/ServiceBinding$State;->d:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object p1, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object p1, p0, Lio/grpc/binder/internal/h;->j:Lio/grpc/binder/internal/ServiceBinding$State;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Lio/grpc/binder/internal/h;I)LX2/L0;
    .locals 1

    const-string v0, "bindService("

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LX2/L0;->l:LX2/L0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") returned false"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LX2/L0;->e:LX2/L0;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, LX2/L0;->m:LX2/L0;

    invoke-virtual {p1, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    const-string p1, "RuntimeException from bindService"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    sget-object p1, LX2/L0;->i:LX2/L0;

    invoke-virtual {p1, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    const-string p1, "SecurityException from bindService"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object v1, Lio/grpc/binder/internal/ServiceBinding$State;->d:Lio/grpc/binder/internal/ServiceBinding$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/grpc/binder/internal/ServiceBinding$State;->e:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object v0, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    iget-object v0, p0, Lio/grpc/binder/internal/h;->i:Landroid/content/Context;

    iget-object v1, p0, Lio/grpc/binder/internal/h;->d:Landroid/content/Intent;

    iget v2, p0, Lio/grpc/binder/internal/h;->e:I

    invoke-static {v0, v1, p0, v2}, Lio/grpc/binder/internal/h;->b(Landroid/content/Context;Landroid/content/Intent;Lio/grpc/binder/internal/h;I)LX2/L0;

    move-result-object v0

    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/grpc/binder/internal/ServiceBinding$State;->g:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object v1, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    iget-object v1, p0, Lio/grpc/binder/internal/h;->g:Ljava/util/concurrent/Executor;

    new-instance v2, LY2/n;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, LY2/n;-><init>(Lio/grpc/binder/internal/h;LX2/L0;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(LX2/L0;)V
    .locals 4

    sget-object v0, Lio/grpc/binder/internal/h;->k:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "notify unbound "

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/binder/internal/h;->i:Landroid/content/Context;

    iget-object v2, p0, Lio/grpc/binder/internal/h;->j:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object v3, Lio/grpc/binder/internal/ServiceBinding$State;->g:Lio/grpc/binder/internal/ServiceBinding$State;

    if-eq v2, v3, :cond_0

    iput-object v3, p0, Lio/grpc/binder/internal/h;->j:Lio/grpc/binder/internal/ServiceBinding$State;

    const-string v2, "notify unbound - notifying"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/binder/internal/h;->f:LY2/a;

    check-cast p0, Lio/grpc/binder/internal/b;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(LX2/L0;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object v1, Lio/grpc/binder/internal/ServiceBinding$State;->e:Lio/grpc/binder/internal/ServiceBinding$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/grpc/binder/internal/ServiceBinding$State;->f:Lio/grpc/binder/internal/ServiceBinding$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/binder/internal/h;->i:Landroid/content/Context;

    :goto_1
    sget-object v1, Lio/grpc/binder/internal/ServiceBinding$State;->g:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object v1, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/grpc/binder/internal/h;->g:Ljava/util/concurrent/Executor;

    new-instance v2, LY2/n;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, LY2/n;-><init>(Lio/grpc/binder/internal/h;LX2/L0;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, LX2/L0;->n:LX2/L0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBindingDied: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/h;->d(LX2/L0;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, LX2/L0;->l:LX2/L0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNullBinding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/h;->d(LX2/L0;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object v0, Lio/grpc/binder/internal/ServiceBinding$State;->e:Lio/grpc/binder/internal/ServiceBinding$State;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lio/grpc/binder/internal/ServiceBinding$State;->f:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object p1, p0, Lio/grpc/binder/internal/h;->h:Lio/grpc/binder/internal/ServiceBinding$State;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/grpc/binder/internal/h;->j:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object v0, Lio/grpc/binder/internal/ServiceBinding$State;->d:Lio/grpc/binder/internal/ServiceBinding$State;

    if-ne p1, v0, :cond_2

    sget-object p1, Lio/grpc/binder/internal/ServiceBinding$State;->f:Lio/grpc/binder/internal/ServiceBinding$State;

    iput-object p1, p0, Lio/grpc/binder/internal/h;->j:Lio/grpc/binder/internal/ServiceBinding$State;

    sget-object p1, Lio/grpc/binder/internal/h;->k:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "notify bound - notifying"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/binder/internal/h;->f:LY2/a;

    check-cast p0, Lio/grpc/binder/internal/b;

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/grpc/binder/internal/c;->g:LY2/i;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p2, v1, p1, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, LX2/L0;->n:LX2/L0;

    const-string v0, "Failed sending SETUP_TRANSPORT transaction"

    invoke-virtual {p2, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    invoke-static {p2}, Lio/grpc/binder/internal/c;->r(Landroid/os/RemoteException;)LX2/L0;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, LX2/L0;->n:LX2/L0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/h;->d(LX2/L0;)V

    return-void
.end method
