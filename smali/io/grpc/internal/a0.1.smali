.class public final Lio/grpc/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:LX2/x0;

.field public final synthetic e:Lio/grpc/internal/d0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/d0;LX2/x0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/internal/a0;->d:LX2/x0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "Using proxy address "

    const-string v1, "Unable to resolve host "

    sget-object v2, Lio/grpc/internal/d0;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting DNS resolution of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v5, v5, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v8, v7, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    iget v9, v7, Lio/grpc/internal/d0;->g:I

    invoke-static {v8, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    iget-object v7, v7, Lio/grpc/internal/d0;->a:LX2/F0;

    invoke-interface {v7, v8}, LX2/F0;->a(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v8, LX2/I;

    invoke-direct {v8, v7}, LX2/I;-><init>(Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_1
    move-object v8, v4

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-object v9, LX2/c;->b:LX2/c;

    if-eqz v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    invoke-virtual {v0}, Lio/grpc/internal/d0;->e()Lio/grpc/internal/Y;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lio/grpc/internal/Y;->a:LX2/L0;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lio/grpc/internal/a0;->d:LX2/x0;

    invoke-interface {v3, v2}, LX2/y0;->a(LX2/L0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v0, Lio/grpc/internal/Y;->a:LX2/L0;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    iget-object v0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v0, v0, Lio/grpc/internal/d0;->j:LX2/P0;

    new-instance v1, Lio/grpc/internal/Z;

    invoke-direct {v1, p0, v5}, Lio/grpc/internal/Z;-><init>(Lio/grpc/internal/a0;Z)V

    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :try_start_2
    iget-object v2, v0, Lio/grpc/internal/Y;->b:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object v7, v2

    :cond_6
    iget-object v2, v0, Lio/grpc/internal/Y;->c:LX2/w0;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_7

    move-object v4, v2

    :cond_7
    move-object v2, v0

    move-object v0, v7

    :goto_2
    :try_start_3
    iget-object v3, p0, Lio/grpc/internal/a0;->d:LX2/x0;

    new-instance v7, LX2/z0;

    invoke-direct {v7, v0, v9, v4}, LX2/z0;-><init>(Ljava/util/List;LX2/c;LX2/w0;)V

    invoke-virtual {v3, v7}, LX2/x0;->d(LX2/z0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_8

    iget-object v0, v2, Lio/grpc/internal/Y;->a:LX2/L0;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    :goto_3
    iget-object v0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v0, v0, Lio/grpc/internal/d0;->j:LX2/P0;

    new-instance v1, Lio/grpc/internal/Z;

    invoke-direct {v1, p0, v5}, Lio/grpc/internal/Z;-><init>(Lio/grpc/internal/a0;Z)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v2

    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_4
    move-object v2, v0

    :goto_5
    :try_start_4
    iget-object v0, p0, Lio/grpc/internal/a0;->d:LX2/x0;

    sget-object v3, LX2/L0;->n:LX2/L0;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v1, v1, Lio/grpc/internal/d0;->f:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v1

    invoke-virtual {v1, v2}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v1

    invoke-interface {v0, v1}, LX2/y0;->a(LX2/L0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_9

    iget-object v0, v4, Lio/grpc/internal/Y;->a:LX2/L0;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    iget-object v0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v0, v0, Lio/grpc/internal/d0;->j:LX2/P0;

    new-instance v1, Lio/grpc/internal/Z;

    invoke-direct {v1, p0, v5}, Lio/grpc/internal/Z;-><init>(Lio/grpc/internal/a0;Z)V

    :goto_7
    invoke-virtual {v0, v1}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_8
    move-object v1, v0

    move-object v0, v4

    :goto_9
    if-eqz v0, :cond_a

    iget-object v0, v0, Lio/grpc/internal/Y;->a:LX2/L0;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    move v5, v6

    :goto_a
    iget-object v0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iget-object v0, v0, Lio/grpc/internal/d0;->j:LX2/P0;

    new-instance v2, Lio/grpc/internal/Z;

    invoke-direct {v2, p0, v5}, Lio/grpc/internal/Z;-><init>(Lio/grpc/internal/a0;Z)V

    invoke-virtual {v0, v2}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    throw v1
.end method
