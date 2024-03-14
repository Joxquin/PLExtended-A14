.class public abstract Lio/grpc/binder/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/h;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final p:Ljava/util/logging/Logger;

.field public static final q:LX2/b;

.field public static final r:LX2/b;


# instance fields
.field public final d:Lio/grpc/internal/H1;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:LX2/Q;

.field public final g:LY2/i;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public i:LX2/c;

.field public j:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public k:LX2/L0;

.field public l:Landroid/os/IBinder;

.field public final m:LY2/f;

.field public final n:Ljava/util/concurrent/atomic/AtomicLong;

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/binder/internal/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/binder/internal/c;->p:Ljava/util/logging/Logger;

    new-instance v0, LX2/b;

    const-string v1, "remote-uid"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/binder/internal/c;->q:LX2/b;

    new-instance v0, LX2/b;

    const-string v1, "inbound-parcelable-policy"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/binder/internal/c;->r:LX2/b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/H1;LX2/c;LX2/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->d:Lio/grpc/binder/internal/BinderTransport$TransportState;

    iput-object v0, p0, Lio/grpc/binder/internal/c;->j:Lio/grpc/binder/internal/BinderTransport$TransportState;

    iput-object p1, p0, Lio/grpc/binder/internal/c;->d:Lio/grpc/internal/H1;

    iput-object p2, p0, Lio/grpc/binder/internal/c;->i:LX2/c;

    iput-object p3, p0, Lio/grpc/binder/internal/c;->f:LX2/Q;

    invoke-interface {p1}, Lio/grpc/internal/H1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/binder/internal/c;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, LY2/i;

    invoke-direct {p1, p0}, LY2/i;-><init>(LY2/h;)V

    iput-object p1, p0, Lio/grpc/binder/internal/c;->g:LY2/i;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, LY2/f;

    invoke-direct {p1}, LY2/f;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/c;->m:LY2/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/grpc/binder/internal/c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static r(Landroid/os/RemoteException;)LX2/L0;
    .locals 1

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LX2/L0;->m:LX2/L0;

    invoke-virtual {v0, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, LX2/L0;->n:LX2/L0;

    invoke-virtual {v0, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    iget-object v0, p0, Lio/grpc/binder/internal/c;->m:LY2/f;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, LY2/f;->b:J

    sub-long v3, v1, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v1

    :goto_0
    iput-wide p1, v0, LY2/f;->b:J

    iget-wide v1, v0, LY2/f;->a:J

    sub-long/2addr v1, p1

    const/high16 p1, 0x20000

    int-to-long p1, p1

    cmp-long p1, v1, p1

    const/4 p2, 0x0

    if-gez p1, :cond_1

    iget-boolean p1, v0, LY2/f;->c:Z

    if-eqz p1, :cond_1

    iput-boolean p2, v0, LY2/f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    move p1, p2

    :goto_1
    if-eqz p1, :cond_4

    sget-object p1, Lio/grpc/binder/internal/c;->p:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAcknowledgedBytes: Transmit Window No-Longer Full. Unblock calls: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/binder/internal/e;

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lio/grpc/binder/internal/e;->d:Lio/grpc/binder/internal/g;

    iget-object v1, p1, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/grpc/internal/v;->a()V

    :cond_3
    if-eqz v0, :cond_2

    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Lio/grpc/StatusException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0}, Lio/grpc/binder/internal/g;->d()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lio/grpc/StatusException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    monitor-enter p1

    :try_start_5
    invoke-virtual {v0}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object v0

    invoke-virtual {p1, v0, v0, p2}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_4
    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized binderDied()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, LX2/L0;->n:LX2/L0;

    const-string v1, "binderDied"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()LX2/Q;
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/c;->f:LX2/Q;

    return-object p0
.end method

.method public g(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public h(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public final i(Landroid/os/Parcel;I)Z
    .locals 10

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v0, :cond_6

    monitor-enter p0

    if-eq p2, v4, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x4

    const/4 v2, 0x5

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    :try_start_0
    monitor-exit p0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/c;->g(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lio/grpc/binder/internal/c;->j:Lio/grpc/binder/internal/BinderTransport$TransportState;

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->f:Lio/grpc/binder/internal/BinderTransport$TransportState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_5

    :try_start_1
    iget-object p2, p0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;

    invoke-interface {p2, v2, p1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/binder/internal/c;->a(J)V

    goto :goto_0

    :cond_3
    sget-object p1, LX2/L0;->n:LX2/L0;

    const-string p2, "transport shutdown by peer"

    invoke-virtual {p1, p2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/c;->h(Landroid/os/Parcel;)V

    :catch_0
    :cond_5
    :goto_0
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget-object v5, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/binder/internal/e;

    if-nez p2, :cond_8

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lio/grpc/binder/internal/c;->k()Z

    move-result v5

    if-nez v5, :cond_7

    move-object p2, v3

    :cond_7
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    :goto_1
    if-eqz p2, :cond_16

    monitor-enter p2

    :try_start_4
    iget-object v5, p2, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    sget-object v6, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v5, v6, :cond_9

    move v5, v4

    goto :goto_2

    :cond_9
    move v5, v1

    :goto_2
    if-eqz v5, :cond_a

    monitor-exit p2

    goto/16 :goto_c

    :cond_a
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_b

    move v6, v4

    goto :goto_3

    :cond_b
    move v6, v1

    :goto_3
    if-eqz v6, :cond_d

    const/high16 v6, 0xff0000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x10

    invoke-static {v6}, LX2/L0;->c(I)LX2/L0;

    move-result-object v6

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v6

    goto :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_9

    :cond_c
    :goto_4
    invoke-virtual {p2, v6, v6, v4}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V
    :try_end_5
    .catch Lio/grpc/StatusException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p2

    goto/16 :goto_c

    :cond_d
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_e

    move v7, v4

    goto :goto_5

    :cond_e
    move v7, v1

    :goto_5
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_6

    :cond_f
    move v8, v1

    :goto_6
    and-int/lit8 v9, v5, 0x4

    if-eqz v9, :cond_10

    move v9, v4

    goto :goto_7

    :cond_10
    move v9, v1

    :goto_7
    if-eqz v7, :cond_11

    invoke-virtual {p2, p1}, Lio/grpc/binder/internal/e;->h(Landroid/os/Parcel;)V

    sget-object v7, Lio/grpc/binder/internal/Inbound$State;->f:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p2, v7}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {p2, v5, v6, p1}, Lio/grpc/binder/internal/e;->g(IILandroid/os/Parcel;)V

    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual {p2, p1, v5}, Lio/grpc/binder/internal/e;->i(Landroid/os/Parcel;I)V

    iput v6, p2, Lio/grpc/binder/internal/e;->l:I

    iput-boolean v4, p2, Lio/grpc/binder/internal/e;->k:Z

    :cond_13
    iget v5, p2, Lio/grpc/binder/internal/e;->h:I

    if-ne v6, v5, :cond_15

    iget-object v6, p2, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    if-nez v6, :cond_14

    add-int/2addr v5, v4

    iput v5, p2, Lio/grpc/binder/internal/e;->h:I

    goto :goto_8

    :cond_14
    if-nez v8, :cond_15

    if-nez v9, :cond_15

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v5, p2, Lio/grpc/binder/internal/e;->h:I

    add-int/2addr v5, v4

    iput v5, p2, Lio/grpc/binder/internal/e;->h:I

    :cond_15
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/grpc/binder/internal/e;->o(I)V

    invoke-virtual {p2}, Lio/grpc/binder/internal/e;->d()V
    :try_end_6
    .catch Lio/grpc/StatusException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_b

    :goto_9
    :try_start_7
    invoke-virtual {p1}, Lio/grpc/StatusException;->a()LX2/L0;

    move-result-object p1

    invoke-virtual {p2, p1, p1, v1}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_a
    monitor-exit p2

    goto :goto_c

    :goto_b
    monitor-exit p2

    throw p0

    :cond_16
    :goto_c
    iget-object p1, p0, Lio/grpc/binder/internal/c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    iget-wide v0, p0, Lio/grpc/binder/internal/c;->o:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-lez p1, :cond_18

    monitor-enter p0

    :try_start_8
    iget-object p1, p0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lio/grpc/binder/internal/c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/binder/internal/c;->o:J

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-interface {p1, v2, p2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-nez p1, :cond_17

    sget-object p1, LX2/L0;->n:LX2/L0;

    const-string v0, "Failed sending ack bytes transaction"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catch_2
    move-exception p1

    :try_start_a
    invoke-static {p1}, Lio/grpc/binder/internal/c;->r(Landroid/os/RemoteException;)LX2/L0;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lio/grpc/binder/internal/c;->q(LX2/L0;Z)V

    :cond_17
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    monitor-exit p0

    goto :goto_e

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p1

    :cond_18
    :goto_e
    return v4
.end method

.method public final j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/internal/c;->j:Lio/grpc/binder/internal/BinderTransport$TransportState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final k()Z
    .locals 1

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->g:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->h:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract l(LX2/L0;)V
.end method

.method public abstract m()V
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lio/grpc/binder/internal/c;->d:Lio/grpc/internal/H1;

    iget-object p0, p0, Lio/grpc/binder/internal/c;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Lio/grpc/internal/H1;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Landroid/os/Parcel;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, p2, p1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/grpc/binder/internal/c;->m:LY2/f;

    int-to-long v0, v0

    monitor-enter p1

    :try_start_1
    iget-wide v4, p1, LY2/f;->a:J

    add-long/2addr v4, v0

    iput-wide v4, p1, LY2/f;->a:J

    iget-wide v0, p1, LY2/f;->b:J

    sub-long/2addr v4, v0

    const/high16 p2, 0x20000

    int-to-long v0, p2

    cmp-long p2, v4, v0

    if-ltz p2, :cond_0

    iget-boolean p2, p1, LY2/f;->c:Z

    if-nez p2, :cond_0

    iput-boolean v3, p1, LY2/f;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget-object p1, Lio/grpc/binder/internal/c;->p:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transmit window now full "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :try_start_2
    sget-object p0, LX2/L0;->n:LX2/L0;

    const-string p1, "Failed sending transaction"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lio/grpc/binder/internal/c;->r(Landroid/os/RemoteException;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1
.end method

.method public final p(Lio/grpc/binder/internal/BinderTransport$TransportState;)V
    .locals 7

    iget-object v0, p0, Lio/grpc/binder/internal/c;->j:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lio/grpc/binder/internal/BinderTransport$TransportState;->d:Lio/grpc/binder/internal/BinderTransport$TransportState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    sget-object v5, Lio/grpc/binder/internal/BinderTransport$TransportState;->e:Lio/grpc/binder/internal/BinderTransport$TransportState;

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object v1, Lio/grpc/binder/internal/BinderTransport$TransportState;->g:Lio/grpc/binder/internal/BinderTransport$TransportState;

    if-ne v0, v1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, LO2/m;->m(Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_3

    sget-object v1, Lio/grpc/binder/internal/BinderTransport$TransportState;->f:Lio/grpc/binder/internal/BinderTransport$TransportState;

    if-ne v0, v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-static {v3}, LO2/m;->m(Z)V

    goto :goto_0

    :cond_5
    if-eq v0, v2, :cond_6

    if-ne v0, v5, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    invoke-static {v3}, LO2/m;->m(Z)V

    goto :goto_0

    :cond_8
    if-ne v0, v2, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v3}, LO2/m;->m(Z)V

    :goto_0
    iput-object p1, p0, Lio/grpc/binder/internal/c;->j:Lio/grpc/binder/internal/BinderTransport$TransportState;

    return-void
.end method

.method public final q(LX2/L0;Z)V
    .locals 4

    invoke-virtual {p0}, Lio/grpc/binder/internal/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/grpc/binder/internal/c;->k:LX2/L0;

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->g:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->p(Lio/grpc/binder/internal/BinderTransport$TransportState;)V

    invoke-virtual {p0, p1}, Lio/grpc/binder/internal/c;->l(LX2/L0;)V

    :cond_0
    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->h:Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->j(Lio/grpc/binder/internal/BinderTransport$TransportState;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_1

    iget-object p2, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_1
    iget-object p2, p0, Lio/grpc/binder/internal/c;->g:LY2/i;

    const/4 v1, 0x0

    iput-object v1, p2, LY2/i;->d:LY2/h;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/c;->p(Lio/grpc/binder/internal/BinderTransport$TransportState;)V

    iget-object p2, p0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    :try_start_1
    iget-object v0, p0, Lio/grpc/binder/internal/c;->l:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lio/grpc/binder/internal/c;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LY2/b;

    invoke-direct {v1, p0, p2, p1}, LY2/b;-><init>(Lio/grpc/binder/internal/c;Ljava/util/ArrayList;LX2/L0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public s(Lio/grpc/binder/internal/e;)V
    .locals 2

    iget p1, p1, Lio/grpc/binder/internal/e;->c:I

    iget-object v0, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/grpc/binder/internal/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/grpc/binder/internal/c;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LY2/c;

    invoke-direct {v1, p0, v0}, LY2/c;-><init>(Lio/grpc/binder/internal/c;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
