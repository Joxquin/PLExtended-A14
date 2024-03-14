.class public final Lio/grpc/internal/S1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/F0;


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Lio/grpc/internal/Q1;

.field public static final f:Lio/grpc/internal/Q1;


# instance fields
.field public final a:LO2/q;

.field public final b:Lio/grpc/internal/R1;

.field public final c:Ljava/net/InetSocketAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/S1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/S1;->d:Ljava/util/logging/Logger;

    new-instance v0, Lio/grpc/internal/Q1;

    invoke-direct {v0}, Lio/grpc/internal/Q1;-><init>()V

    sput-object v0, Lio/grpc/internal/S1;->e:Lio/grpc/internal/Q1;

    new-instance v0, Lio/grpc/internal/Q1;

    invoke-direct {v0}, Lio/grpc/internal/Q1;-><init>()V

    sput-object v0, Lio/grpc/internal/S1;->f:Lio/grpc/internal/Q1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "GRPC_PROXY_EXP"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lio/grpc/internal/S1;->f:Lio/grpc/internal/Q1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lio/grpc/internal/S1;->a:LO2/q;

    sget-object v1, Lio/grpc/internal/S1;->e:Lio/grpc/internal/Q1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lio/grpc/internal/S1;->b:Lio/grpc/internal/R1;

    if-eqz v0, :cond_1

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    sget-object v2, Lio/grpc/internal/S1;->d:Ljava/util/logging/Logger;

    const-string v3, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lio/grpc/internal/S1;->c:Ljava/net/InetSocketAddress;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/S1;->c:Ljava/net/InetSocketAddress;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 13

    const-string v0, "getHostString"

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lio/grpc/internal/S1;->c:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    sget p0, Lio/grpc/HttpConnectProxiedSocketAddress;->d:I

    check-cast p1, Ljava/net/InetSocketAddress;

    const-string p0, "targetAddress"

    invoke-static {p1, p0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-direct {p0, v1, p1, v2, v2}, Lio/grpc/HttpConnectProxiedSocketAddress;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    check-cast p1, Ljava/net/InetSocketAddress;

    sget-object v1, Lio/grpc/internal/S1;->d:Ljava/util/logging/Logger;

    :try_start_0
    sget-object v3, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    const-class v4, Ljava/net/InetSocketAddress;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v8, v4

    :try_start_3
    new-instance v4, Ljava/net/URI;

    const-string v6, "https"

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v5, p0, Lio/grpc/internal/S1;->a:LO2/q;

    invoke-interface {v5}, LO2/q;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/ProxySelector;

    if-nez v5, :cond_2

    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p1, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v5, v4}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    const-string v5, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    :try_start_4
    const-class v4, Ljava/net/InetSocketAddress;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iget-object p0, p0, Lio/grpc/internal/S1;->b:Lio/grpc/internal/R1;

    invoke-interface {p0, v0, v3, v4}, Lio/grpc/internal/R1;->a(Ljava/lang/String;Ljava/net/InetAddress;I)Ljava/net/PasswordAuthentication;

    move-result-object p0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v3

    :cond_5
    sget v0, Lio/grpc/HttpConnectProxiedSocketAddress;->d:I

    if-nez p0, :cond_6

    new-instance p0, Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-direct {p0, v1, p1, v2, v2}, Lio/grpc/HttpConnectProxiedSocketAddress;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v2, p0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    :goto_3
    new-instance p0, Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-direct {p0, v1, p1, v0, v2}, Lio/grpc/HttpConnectProxiedSocketAddress;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p0

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Failed to construct URI for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Failed to get host for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object v2
.end method
