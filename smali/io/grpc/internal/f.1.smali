.class public final Lio/grpc/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/e0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    sget-object v0, LX2/e0;->c:Ljava/util/logging/Logger;

    const-class v0, LX2/e0;

    monitor-enter v0

    :try_start_0
    sget-object v1, LX2/e0;->d:LX2/e0;

    if-nez v1, :cond_2

    const-class v1, LX2/c0;

    sget-object v2, LX2/e0;->e:Ljava/lang/Iterable;

    const-class v3, LX2/c0;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, LX2/d0;

    invoke-direct {v4}, LX2/d0;-><init>()V

    invoke-static {v1, v2, v3, v4}, LX2/I0;->a(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;LX2/H0;)Ljava/util/List;

    move-result-object v1

    new-instance v2, LX2/e0;

    invoke-direct {v2}, LX2/e0;-><init>()V

    sput-object v2, LX2/e0;->d:LX2/e0;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/c0;

    sget-object v3, LX2/e0;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v2}, LX2/c0;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, LX2/e0;->d:LX2/e0;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, LX2/c0;->j()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v5, v4}, LO2/m;->b(Ljava/lang/Object;Z)V

    iget-object v4, v3, LX2/e0;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_1
    sget-object v1, LX2/e0;->d:LX2/e0;

    invoke-virtual {v1}, LX2/e0;->b()V

    :cond_2
    sget-object v1, LX2/e0;->d:LX2/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "registry"

    invoke-static {v1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lio/grpc/internal/f;->a:LX2/e0;

    const-string v0, "defaultPolicy"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/f;->b:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lio/grpc/internal/f;Ljava/lang/String;)LX2/c0;
    .locals 2

    iget-object p0, p0, Lio/grpc/internal/f;->a:LX2/e0;

    invoke-virtual {p0, p1}, LX2/e0;->a(Ljava/lang/String;)LX2/c0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;

    const-string v0, "Trying to load \'"

    const-string v1, "\' because using default policy, but it\'s unavailable"

    invoke-static {v0, p1, v1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
