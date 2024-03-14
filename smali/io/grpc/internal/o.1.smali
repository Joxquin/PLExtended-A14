.class public final Lio/grpc/internal/o;
.super Lio/grpc/internal/C;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/grpc/internal/q;LX2/r0;)V
    .locals 2

    .line 1
    sget-object v0, Lc3/a;->b:Lc3/b;

    const/4 v1, 0x1

    .line 2
    iput v1, p0, Lio/grpc/internal/o;->e:I

    .line 3
    iput-object p1, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/internal/o;->f:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    .line 5
    iget-object p1, p1, Lio/grpc/internal/t;->f:LX2/C;

    .line 6
    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/q;Lio/grpc/binder/internal/e;)V
    .locals 2

    .line 7
    sget-object v0, Lc3/a;->b:Lc3/b;

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lio/grpc/internal/o;->e:I

    .line 9
    iput-object p1, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/internal/o;->f:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    .line 11
    iget-object p1, p1, Lio/grpc/internal/t;->f:LX2/C;

    .line 12
    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/t;LX2/j;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/o;->e:I

    .line 13
    iput-object p1, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/internal/o;->f:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Lio/grpc/internal/t;->f:LX2/C;

    .line 15
    invoke-direct {p0, p1}, Lio/grpc/internal/C;-><init>(LX2/C;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lio/grpc/internal/o;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v0, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v0, Lc3/c;->a:Lc3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/o;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/t;

    iget-object v1, p0, Lio/grpc/internal/o;->f:Ljava/lang/Object;

    check-cast v1, LX2/j;

    sget-object v2, LX2/L0;->m:LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "Unable to find compressor by name %s"

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance v2, LX2/r0;

    invoke-direct {v2}, LX2/r0;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, LX2/j;->a(LX2/L0;LX2/r0;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v0, v0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->a()V

    sget-object v0, Lc3/c;->a:Lc3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {p0}, Lio/grpc/internal/o;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->b:Lc3/d;

    invoke-static {}, Lc3/c;->b()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Lio/grpc/internal/o;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/grpc/internal/q;

    iget-object v1, v1, Lio/grpc/internal/q;->b:LX2/L0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->a:LX2/j;

    iget-object v1, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    check-cast v1, LX2/r0;

    invoke-virtual {v0, v1}, LX2/j;->b(LX2/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    sget-object v1, LX2/L0;->f:LX2/L0;

    invoke-virtual {v1, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    const-string v1, "Failed to read headers"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/q;->b:LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p0, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast v0, Lio/grpc/internal/q;

    iget-object v0, v0, Lio/grpc/internal/q;->b:LX2/L0;

    const-string v1, "exception caught in closeQuietly"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    check-cast p0, Lio/grpc/binder/internal/e;

    sget-object v0, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    :goto_2
    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->l()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v3, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binder/internal/e;

    invoke-virtual {v0}, Lio/grpc/binder/internal/e;->l()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v2, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lio/grpc/internal/q;

    iget-object v3, v3, Lio/grpc/internal/q;->a:LX2/j;

    check-cast v2, Lio/grpc/internal/q;

    iget-object v2, v2, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object v2, v2, Lio/grpc/internal/t;->a:LX2/u0;

    iget-object v2, v2, LX2/u0;->e:LX2/t0;

    invoke-interface {v2, v0}, LX2/t0;->b(Ljava/io/InputStream;)Lcom/google/protobuf/p0;

    move-result-object v2

    invoke-virtual {v3, v2}, LX2/j;->c(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    sget-object v3, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v4, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v4, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/o;->g:Ljava/lang/Object;

    check-cast v2, Lio/grpc/binder/internal/e;

    sget-object v3, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    :goto_5
    invoke-virtual {v2}, Lio/grpc/binder/internal/e;->l()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_7
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v5, Lio/grpc/internal/r0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v5, v4, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_2
    iget-object p0, p0, Lio/grpc/internal/o;->h:Ljava/lang/Object;

    check-cast p0, Lio/grpc/internal/q;

    sget-object v1, LX2/L0;->f:LX2/L0;

    invoke-virtual {v1, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/q;->b:LX2/L0;

    iget-object p0, p0, Lio/grpc/internal/q;->c:Lio/grpc/internal/t;

    iget-object p0, p0, Lio/grpc/internal/t;->j:Lio/grpc/internal/u;

    invoke-interface {p0, v0}, Lio/grpc/internal/u;->g(LX2/L0;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
