.class public final Lio/grpc/binder/internal/b;
.super Lio/grpc/binder/internal/c;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/z;
.implements LY2/a;


# static fields
.field public static final synthetic A:I


# instance fields
.field public final s:Lio/grpc/internal/H1;

.field public final t:Ljava/util/concurrent/Executor;

.field public final u:Lio/grpc/binder/h;

.field public final v:Lio/grpc/binder/internal/h;

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final x:LY2/m;

.field public y:Lio/grpc/internal/D1;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/grpc/binder/AndroidComponentAddress;Lio/grpc/binder/a;Ljava/util/concurrent/Executor;Lio/grpc/internal/H1;Lio/grpc/internal/H1;Lio/grpc/binder/h;Lio/grpc/binder/e;LX2/c;)V
    .locals 6

    new-instance v0, LX2/a;

    sget-object v1, LX2/c;->b:LX2/c;

    invoke-direct {v0, v1}, LX2/a;-><init>(LX2/c;)V

    sget-object v1, Lio/grpc/internal/l0;->a:LX2/b;

    sget-object v2, Lio/grpc/SecurityLevel;->d:Lio/grpc/SecurityLevel;

    invoke-virtual {v0, v1, v2}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    sget-object v1, Lio/grpc/internal/l0;->b:LX2/b;

    invoke-virtual {v0, v1, p9}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    sget-object p9, LX2/K;->b:LX2/b;

    sget v1, Lio/grpc/binder/AndroidComponentAddress;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lio/grpc/binder/AndroidComponentAddress;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "grpc.io.action.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/binder/AndroidComponentAddress;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p9, v1}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    sget-object p9, LX2/K;->a:LX2/b;

    invoke-virtual {v0, p9, p2}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    sget-object p9, Lio/grpc/binder/internal/c;->r:LX2/b;

    invoke-virtual {v0, p9, p8}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, LX2/a;->a()LX2/c;

    move-result-object p8

    const-class p9, Lio/grpc/binder/internal/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/grpc/binder/AndroidComponentAddress;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p9, v0}, LX2/Q;->a(Ljava/lang/Class;Ljava/lang/String;)LX2/Q;

    move-result-object p9

    invoke-direct {p0, p5, p8, p9}, Lio/grpc/binder/internal/c;-><init>(Lio/grpc/internal/H1;LX2/c;LX2/Q;)V

    const/16 p5, 0x3e9

    iput p5, p0, Lio/grpc/binder/internal/b;->z:I

    iput-object p6, p0, Lio/grpc/binder/internal/b;->s:Lio/grpc/internal/H1;

    iput-object p7, p0, Lio/grpc/binder/internal/b;->u:Lio/grpc/binder/h;

    invoke-interface {p6}, Lio/grpc/internal/H1;->a()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lio/grpc/binder/internal/b;->t:Ljava/util/concurrent/Executor;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p5, p0, Lio/grpc/binder/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p5, LY2/m;

    invoke-direct {p5}, LY2/m;-><init>()V

    iput-object p5, p0, Lio/grpc/binder/internal/b;->x:LY2/m;

    new-instance p5, Lio/grpc/binder/internal/h;

    invoke-virtual {p2}, Lio/grpc/binder/AndroidComponentAddress;->a()Landroid/content/Intent;

    move-result-object v3

    iget v4, p3, Lio/grpc/binder/a;->a:I

    move-object v0, p5

    move-object v1, p4

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/grpc/binder/internal/h;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;ILY2/a;)V

    iput-object p5, p0, Lio/grpc/binder/internal/b;->v:Lio/grpc/binder/internal/h;

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Lio/grpc/internal/D1;)Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    new-instance p1, LY2/c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LY2/c;-><init>(Lio/grpc/binder/internal/c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/binder/internal/c;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lio/grpc/binder/internal/c;->k:LX2/L0;

    iget-object p3, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    new-instance v0, Lio/grpc/internal/I2;

    invoke-direct {v0, p4}, Lio/grpc/internal/I2;-><init>([LX2/r;)V

    array-length v2, p4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    invoke-virtual {v4, p3, p2}, LX2/r;->m(LX2/c;LX2/r0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length p3, p2

    :goto_1
    if-ge v1, p3, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, LX2/r;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lio/grpc/internal/h0;

    sget-object p3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p2, p1, p3, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_1
    iget v4, p0, Lio/grpc/binder/internal/b;->z:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lio/grpc/binder/internal/b;->z:I

    const v2, 0xffffff

    if-ne v0, v2, :cond_3

    const/16 v0, 0x3e9

    iput v0, p0, Lio/grpc/binder/internal/b;->z:I

    :cond_3
    iget-object v0, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    new-instance v7, Lio/grpc/internal/I2;

    invoke-direct {v7, p4}, Lio/grpc/internal/I2;-><init>([LX2/r;)V

    array-length v2, p4

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v5, p4, v3

    invoke-virtual {v5, v0, p2}, LX2/r;->m(LX2/c;LX2/r0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lio/grpc/binder/internal/d;

    iget-object v2, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lio/grpc/internal/r0;->i:LX2/f;

    invoke-virtual {p3, v5}, LX2/g;->a(LX2/f;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v8, 0x1

    xor-int/2addr p3, v8

    invoke-direct {v0, p0, v2, v4, p3}, Lio/grpc/binder/internal/d;-><init>(Lio/grpc/binder/internal/c;LX2/c;IZ)V

    iget-object v2, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object p1, LX2/L0;->m:LX2/L0;

    const-string p3, "Clashing call IDs"

    invoke-virtual {p1, p3}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    iget-object p3, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    new-instance v0, Lio/grpc/internal/I2;

    invoke-direct {v0, p4}, Lio/grpc/internal/I2;-><init>([LX2/r;)V

    array-length v2, p4

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, p4, v3

    invoke-virtual {v4, p3, p2}, LX2/r;->m(LX2/c;LX2/r0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object p2, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length p3, p2

    :goto_4
    if-ge v1, p3, :cond_6

    aget-object v0, p2, v1

    invoke-virtual {v0}, LX2/r;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance p2, Lio/grpc/internal/h0;

    sget-object p3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p2, p1, p3, p4}, Lio/grpc/internal/h0;-><init>(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;[LX2/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_7
    if-eqz p3, :cond_8

    :try_start_2
    iget-object p3, p0, Lio/grpc/binder/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    invoke-interface {p3, v8}, Lio/grpc/internal/D1;->c(Z)V

    :cond_8
    new-instance p3, Lio/grpc/binder/internal/g;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lio/grpc/binder/internal/g;-><init>(Lio/grpc/binder/internal/c;ILX2/u0;LX2/r0;Lio/grpc/internal/I2;)V

    iget-object p1, p1, LX2/u0;->a:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    if-eq p1, p2, :cond_9

    sget-object p2, Lio/grpc/MethodDescriptor$MethodType;->f:Lio/grpc/MethodDescriptor$MethodType;

    if-ne p1, p2, :cond_a

    :cond_9
    move v1, v8

    :cond_a
    if-eqz v1, :cond_b

    new-instance p1, Lio/grpc/binder/internal/i;

    invoke-direct {p1, v0, p3}, Lio/grpc/binder/internal/i;-><init>(Lio/grpc/binder/internal/d;Lio/grpc/binder/internal/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_3
    new-instance p1, Lio/grpc/binder/internal/f;

    invoke-direct {p1, v0, p3}, Lio/grpc/binder/internal/f;-><init>(Lio/grpc/binder/internal/d;Lio/grpc/binder/internal/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(LX2/L0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(LX2/L0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Landroid/os/Parcel;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/b;->x:LY2/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final h(Landroid/os/Parcel;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LX2/a;

    invoke-direct {v2, v0}, LX2/a;-><init>(LX2/c;)V

    sget-object v0, Lio/grpc/binder/internal/c;->q:LX2/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    sget-object v0, Lio/grpc/internal/l0;->a:LX2/b;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_0

    sget-object v1, Lio/grpc/SecurityLevel;->f:Lio/grpc/SecurityLevel;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/SecurityLevel;->e:Lio/grpc/SecurityLevel;

    :goto_0
    invoke-virtual {v2, v0, v1}, LX2/a;->c(LX2/b;Ljava/lang/Object;)V

    invoke-virtual {v2}, LX2/a;->a()LX2/c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->e:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object p1, LX2/L0;->n:LX2/L0;

    const-string v0, "Wire format version mismatch"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, LX2/L0;->n:LX2/L0;

    const-string v0, "Malformed SETUP_TRANSPORT data"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/grpc/binder/internal/b;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/binder/internal/a;

    invoke-direct {v1, p0, p1}, Lio/grpc/binder/internal/a;-><init>(Lio/grpc/binder/internal/b;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final l(LX2/L0;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    invoke-interface {p0, p1}, Lio/grpc/internal/D1;->b(LX2/L0;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lio/grpc/binder/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    invoke-interface {v0, v1}, Lio/grpc/internal/D1;->c(Z)V

    :cond_0
    iget-object v0, p0, Lio/grpc/binder/internal/b;->v:Lio/grpc/binder/internal/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LX2/L0;->f:LX2/L0;

    invoke-virtual {v0, v1}, Lio/grpc/binder/internal/h;->d(LX2/L0;)V

    iget-object p0, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    invoke-interface {p0}, Lio/grpc/internal/D1;->a()V

    return-void
.end method

.method public final n()V
    .locals 1

    invoke-super {p0}, Lio/grpc/binder/internal/c;->n()V

    iget-object v0, p0, Lio/grpc/binder/internal/b;->s:Lio/grpc/internal/H1;

    iget-object p0, p0, Lio/grpc/binder/internal/b;->t:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Lio/grpc/internal/H1;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lio/grpc/binder/internal/e;)V
    .locals 2

    invoke-virtual {p1}, Lio/grpc/binder/internal/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/binder/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/binder/internal/b;->y:Lio/grpc/internal/D1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/grpc/internal/D1;->c(Z)V

    :cond_0
    invoke-super {p0, p1}, Lio/grpc/binder/internal/c;->s(Lio/grpc/binder/internal/e;)V

    return-void
.end method
