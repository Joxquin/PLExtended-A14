.class public final Lio/grpc/internal/x1;
.super LX2/g0;
.source "SourceFile"


# static fields
.field public static final A:J

.field public static final B:Lio/grpc/internal/H2;

.field public static final C:LX2/H;

.field public static final D:LX2/y;

.field public static final y:Ljava/util/logging/Logger;

.field public static final z:J


# instance fields
.field public final a:Lio/grpc/internal/H2;

.field public final b:Lio/grpc/internal/H2;

.field public final c:Ljava/util/List;

.field public final d:LX2/x0;

.field public final e:Ljava/lang/String;

.field public final f:LX2/e;

.field public final g:Ljava/lang/String;

.field public final h:LX2/H;

.field public final i:LX2/y;

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:LX2/M;

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Lio/grpc/internal/t1;

.field public final x:Lio/grpc/internal/w1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/grpc/internal/x1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/x1;->y:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/x1;->z:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/x1;->A:J

    sget-object v0, Lio/grpc/internal/r0;->k:Lio/grpc/internal/n0;

    new-instance v1, Lio/grpc/internal/H2;

    invoke-direct {v1, v0}, Lio/grpc/internal/H2;-><init>(Lio/grpc/internal/n0;)V

    sput-object v1, Lio/grpc/internal/x1;->B:Lio/grpc/internal/H2;

    sget-object v0, LX2/H;->d:LX2/H;

    sput-object v0, Lio/grpc/internal/x1;->C:LX2/H;

    sget-object v0, LX2/y;->b:LX2/y;

    sput-object v0, Lio/grpc/internal/x1;->D:LX2/y;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/binder/b;)V
    .locals 7

    invoke-direct {p0}, LX2/g0;-><init>()V

    sget-object v0, Lio/grpc/internal/x1;->B:Lio/grpc/internal/H2;

    iput-object v0, p0, Lio/grpc/internal/x1;->a:Lio/grpc/internal/H2;

    iput-object v0, p0, Lio/grpc/internal/x1;->b:Lio/grpc/internal/H2;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/x1;->c:Ljava/util/List;

    sget-object v0, LX2/E0;->e:Ljava/util/logging/Logger;

    const-class v0, LX2/E0;

    monitor-enter v0

    :try_start_0
    sget-object v1, LX2/E0;->f:LX2/E0;

    if-nez v1, :cond_3

    const-class v1, LX2/B0;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v3, Lio/grpc/internal/e0;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Unable to find DNS NameResolver"

    sget-object v6, LX2/E0;->e:Ljava/util/logging/Logger;

    invoke-virtual {v6, v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-class v3, LX2/B0;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, LX2/D0;

    invoke-direct {v4}, LX2/D0;-><init>()V

    invoke-static {v1, v2, v3, v4}, LX2/I0;->a(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;LX2/H0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LX2/E0;->e:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    new-instance v2, LX2/E0;

    invoke-direct {v2}, LX2/E0;-><init>()V

    sput-object v2, LX2/E0;->f:LX2/E0;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/B0;

    sget-object v3, LX2/E0;->e:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v2}, LX2/B0;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, LX2/E0;->f:LX2/E0;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, LX2/B0;->f()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v5, v4}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget-object v4, v3, LX2/E0;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_2
    sget-object v1, LX2/E0;->f:LX2/E0;

    invoke-virtual {v1}, LX2/E0;->a()V

    :cond_3
    sget-object v1, LX2/E0;->f:LX2/E0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    iget-object v0, v1, LX2/E0;->a:LX2/C0;

    iput-object v0, p0, Lio/grpc/internal/x1;->d:LX2/x0;

    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/x1;->g:Ljava/lang/String;

    sget-object v0, Lio/grpc/internal/x1;->C:LX2/H;

    iput-object v0, p0, Lio/grpc/internal/x1;->h:LX2/H;

    sget-object v0, Lio/grpc/internal/x1;->D:LX2/y;

    iput-object v0, p0, Lio/grpc/internal/x1;->i:LX2/y;

    sget-wide v0, Lio/grpc/internal/x1;->z:J

    iput-wide v0, p0, Lio/grpc/internal/x1;->j:J

    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/x1;->k:I

    iput v0, p0, Lio/grpc/internal/x1;->l:I

    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/x1;->m:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/x1;->n:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/x1;->o:Z

    sget-object v1, LX2/M;->d:LX2/M;

    iput-object v1, p0, Lio/grpc/internal/x1;->p:LX2/M;

    iput-boolean v0, p0, Lio/grpc/internal/x1;->q:Z

    iput-boolean v0, p0, Lio/grpc/internal/x1;->r:Z

    iput-boolean v0, p0, Lio/grpc/internal/x1;->s:Z

    iput-boolean v0, p0, Lio/grpc/internal/x1;->t:Z

    iput-boolean v0, p0, Lio/grpc/internal/x1;->u:Z

    iput-boolean v0, p0, Lio/grpc/internal/x1;->v:Z

    const-string v0, "/"

    :try_start_5
    new-instance v1, Ljava/net/URI;

    const-string v2, "directaddress"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    iput-object v0, p0, Lio/grpc/internal/x1;->e:Ljava/lang/String;

    iput-object v4, p0, Lio/grpc/internal/x1;->f:LX2/e;

    iput-object p3, p0, Lio/grpc/internal/x1;->w:Lio/grpc/internal/t1;

    new-instance p3, Lio/grpc/internal/v1;

    invoke-direct {p3, p1, p2}, Lio/grpc/internal/v1;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    iput-object p3, p0, Lio/grpc/internal/x1;->d:LX2/x0;

    new-instance p1, Lio/grpc/internal/w1;

    invoke-direct {p1}, Lio/grpc/internal/w1;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/x1;->x:Lio/grpc/internal/w1;

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
