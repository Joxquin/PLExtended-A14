.class public final Lio/grpc/internal/d0;
.super LX2/A0;
.source "SourceFile"


# static fields
.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Ljava/util/Set;

.field public static final u:Z

.field public static final v:Z

.field public static final w:Z

.field public static final x:Lio/grpc/internal/c0;

.field public static y:Ljava/lang/String;


# instance fields
.field public final a:LX2/F0;

.field public final b:Ljava/util/Random;

.field public volatile c:Lio/grpc/internal/X;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lio/grpc/internal/F2;

.field public final i:J

.field public final j:LX2/P0;

.field public final k:LO2/o;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/concurrent/Executor;

.field public final o:Z

.field public final p:LX2/x0;

.field public q:Z

.field public r:LX2/x0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lio/grpc/internal/d0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "clientLanguage"

    const-string v4, "percentage"

    const-string v5, "clientHostname"

    const-string v6, "serviceConfig"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/grpc/internal/d0;->t:Ljava/util/Set;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/grpc/internal/d0;->u:Z

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/grpc/internal/d0;->v:Z

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/grpc/internal/d0;->w:Z

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v2, "io.grpc.internal.L0"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/grpc/internal/c0;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/c0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {v0}, Lio/grpc/internal/c0;->b()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "JndiResourceResolverFactory not available, skipping."

    invoke-interface {v0}, Lio/grpc/internal/c0;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :cond_0
    sput-object v0, Lio/grpc/internal/d0;->x:Lio/grpc/internal/c0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LX2/v0;Lio/grpc/internal/n0;LO2/o;Z)V
    .locals 7

    invoke-direct {p0}, LX2/A0;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/d0;->b:Ljava/util/Random;

    sget-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->d:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    iput-object v0, p0, Lio/grpc/internal/d0;->c:Lio/grpc/internal/X;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/d0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "args"

    invoke-static {p2, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lio/grpc/internal/d0;->h:Lio/grpc/internal/F2;

    const-string p3, "name"

    invoke-static {p1, p3}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p3, "//"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid DNS name: %s"

    invoke-static {v3, p1, v0}, LO2/m;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iput-object p1, p0, Lio/grpc/internal/d0;->e:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p2, LX2/v0;->a:I

    iput p1, p0, Lio/grpc/internal/d0;->g:I

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lio/grpc/internal/d0;->g:I

    :goto_1
    iget-object p1, p2, LX2/v0;->b:LX2/F0;

    const-string p3, "proxyDetector"

    invoke-static {p1, p3}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/d0;->a:LX2/F0;

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "networkaddress.cache.ttl"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v5, 0x1e

    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    const-string v0, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    invoke-virtual {p3, p5, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    move-wide v3, v5

    :goto_3
    iput-wide v3, p0, Lio/grpc/internal/d0;->i:J

    iput-object p4, p0, Lio/grpc/internal/d0;->k:LO2/o;

    iget-object p1, p2, LX2/v0;->c:LX2/P0;

    const-string p3, "syncContext"

    invoke-static {p1, p3}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/d0;->j:LX2/P0;

    iget-object p1, p2, LX2/v0;->g:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/d0;->n:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lio/grpc/internal/d0;->o:Z

    iget-object p1, p2, LX2/v0;->d:LX2/x0;

    const-string p2, "serviceConfigParser"

    invoke-static {p1, p2}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/d0;->p:LX2/x0;

    return-void

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p2, p1}, LO2/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/d0;->t:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v3, v1, v2}, LO2/t;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "clientLanguage"

    invoke-static {p0, v0}, Lio/grpc/internal/O0;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "java"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "percentage"

    invoke-static {p0, v0}, Lio/grpc/internal/O0;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ltz v4, :cond_4

    if-gt v4, v5, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    const-string v7, "Bad percentage: %s"

    invoke-static {v7, v0, v6}, LO2/t;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v4, :cond_5

    return-object v1

    :cond_5
    const-string p1, "clientHostname"

    invoke-static {p0, p1}, Lio/grpc/internal/O0;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    if-nez v2, :cond_8

    return-object v1

    :cond_8
    const-string p1, "serviceConfig"

    invoke-static {p0, p1}, Lio/grpc/internal/O0;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_9

    return-object p2

    :cond_9
    new-instance p2, Lcom/google/common/base/VerifyException;

    const-string v0, "key \'%s\' missing in \'%s\'"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static g(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    const-string v4, "Ignoring non service config {0}"

    invoke-virtual {v3, v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/N0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lio/grpc/internal/O0;->a(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wrong type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/d0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/d0;->r:LX2/x0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lio/grpc/internal/d0;->h()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/internal/d0;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/d0;->m:Z

    iget-object v0, p0, Lio/grpc/internal/d0;->n:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/grpc/internal/d0;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/internal/d0;->h:Lio/grpc/internal/F2;

    invoke-static {v1, v0}, Lio/grpc/internal/G2;->b(Lio/grpc/internal/F2;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/d0;->n:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method public final d(LX2/x0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/d0;->r:LX2/x0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lio/grpc/internal/d0;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/d0;->h:Lio/grpc/internal/F2;

    invoke-static {v0}, Lio/grpc/internal/G2;->a(Lio/grpc/internal/F2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/d0;->n:Ljava/util/concurrent/Executor;

    :cond_1
    iput-object p1, p0, Lio/grpc/internal/d0;->r:LX2/x0;

    invoke-virtual {p0}, Lio/grpc/internal/d0;->h()V

    return-void
.end method

.method public final e()Lio/grpc/internal/Y;
    .locals 9

    iget-object v0, p0, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    new-instance v1, Lio/grpc/internal/Y;

    invoke-direct {v1}, Lio/grpc/internal/Y;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/d0;->i()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lio/grpc/internal/Y;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    sget-boolean v2, Lio/grpc/internal/d0;->w:Z

    if-eqz v2, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lio/grpc/internal/d0;->u:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "localhost"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v4, Lio/grpc/internal/d0;->v:Z

    goto :goto_2

    :cond_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    move v6, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    const/16 v8, 0x30

    if-lt v7, v8, :cond_3

    const/16 v8, 0x39

    if-gt v7, v8, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    and-int/2addr v6, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    xor-int v4, v3, v6

    :goto_2
    const/4 v3, 0x0

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lio/grpc/internal/d0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/b0;

    if-nez v4, :cond_7

    sget-object v5, Lio/grpc/internal/d0;->x:Lio/grpc/internal/c0;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lio/grpc/internal/c0;->a()Lio/grpc/internal/J0;

    move-result-object v4

    :cond_7
    :goto_3
    sget-object v5, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    if-eqz v4, :cond_8

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_grpc_config."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lio/grpc/internal/b0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "ServiceConfig resolution failure"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v0, p0, Lio/grpc/internal/d0;->b:Ljava/util/Random;

    sget-object v4, Lio/grpc/internal/d0;->y:Ljava/lang/String;

    if-nez v4, :cond_9

    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/grpc/internal/d0;->y:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    :goto_5
    sget-object v4, Lio/grpc/internal/d0;->y:Ljava/lang/String;

    :try_start_3
    invoke-static {v2}, Lio/grpc/internal/d0;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v3

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    :try_start_4
    invoke-static {v5, v0, v4}, Lio/grpc/internal/d0;->f(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v5, :cond_a

    goto :goto_6

    :catch_2
    move-exception v0

    sget-object v2, LX2/L0;->g:LX2/L0;

    const-string v4, "failed to pick service config choice"

    invoke-virtual {v2, v4}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v2

    invoke-virtual {v2, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    new-instance v2, LX2/w0;

    invoke-direct {v2, v0}, LX2/w0;-><init>(LX2/L0;)V

    goto :goto_7

    :cond_b
    :goto_6
    if-nez v5, :cond_c

    move-object v2, v3

    goto :goto_7

    :cond_c
    new-instance v2, LX2/w0;

    invoke-direct {v2, v5}, LX2/w0;-><init>(Ljava/lang/Object;)V

    goto :goto_7

    :catch_3
    move-exception v0

    sget-object v2, LX2/L0;->g:LX2/L0;

    const-string v4, "failed to parse TXT records"

    invoke-virtual {v2, v4}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v2

    invoke-virtual {v2, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    new-instance v2, LX2/w0;

    invoke-direct {v2, v0}, LX2/w0;-><init>(LX2/L0;)V

    :goto_7
    if-eqz v2, :cond_f

    iget-object v0, v2, LX2/w0;->a:LX2/L0;

    if-eqz v0, :cond_d

    new-instance v3, LX2/w0;

    invoke-direct {v3, v0}, LX2/w0;-><init>(LX2/L0;)V

    goto :goto_8

    :cond_d
    iget-object v0, v2, LX2/w0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lio/grpc/internal/d0;->p:LX2/x0;

    invoke-virtual {p0, v0}, LX2/x0;->e(Ljava/util/Map;)LX2/w0;

    move-result-object v3

    goto :goto_8

    :cond_e
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "No TXT records found for {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, p0, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_8
    iput-object v3, v1, Lio/grpc/internal/Y;->c:LX2/w0;

    :cond_10
    return-object v1

    :catch_4
    move-exception p0

    sget-object v2, LX2/L0;->n:LX2/L0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to resolve host "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    invoke-virtual {v0, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    iput-object p0, v1, Lio/grpc/internal/Y;->a:LX2/L0;

    return-object v1
.end method

.method public final h()V
    .locals 11

    iget-boolean v0, p0, Lio/grpc/internal/d0;->q:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/grpc/internal/d0;->m:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/grpc/internal/d0;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lio/grpc/internal/d0;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/grpc/internal/d0;->k:LO2/o;

    iget-boolean v7, v6, LO2/o;->b:Z

    if-eqz v7, :cond_0

    iget-object v7, v6, LO2/o;->a:LO2/s;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, LO2/l;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, v6, LO2/o;->c:J

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    :cond_0
    invoke-virtual {v0, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lio/grpc/internal/d0;->q:Z

    iget-object v0, p0, Lio/grpc/internal/d0;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/a0;

    iget-object v2, p0, Lio/grpc/internal/d0;->r:LX2/x0;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/a0;-><init>(Lio/grpc/internal/d0;LX2/x0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/d0;->c:Lio/grpc/internal/X;

    iget-object v2, p0, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    check-cast v1, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    new-instance v3, LX2/I;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lio/grpc/internal/d0;->g:I

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v4}, LX2/I;-><init>(Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p0

    :try_start_1
    invoke-static {v0}, LO2/r;->a(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    sget-object v1, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Address resolution failure"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw p0
.end method
