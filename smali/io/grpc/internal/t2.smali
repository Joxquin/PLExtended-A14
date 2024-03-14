.class public final Lio/grpc/internal/t2;
.super LX2/x0;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Lio/grpc/internal/f;


# direct methods
.method public constructor <init>(ZIILio/grpc/internal/f;)V
    .locals 0

    invoke-direct {p0}, LX2/x0;-><init>()V

    iput-boolean p1, p0, Lio/grpc/internal/t2;->a:Z

    iput p2, p0, Lio/grpc/internal/t2;->b:I

    iput p3, p0, Lio/grpc/internal/t2;->c:I

    iput-object p4, p0, Lio/grpc/internal/t2;->d:Lio/grpc/internal/f;

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Map;)LX2/w0;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/t2;->d:Lio/grpc/internal/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {p1}, Lio/grpc/internal/B2;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/B2;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lio/grpc/internal/f;->a:LX2/e0;

    invoke-static {v2, v0}, Lio/grpc/internal/B2;->c(Ljava/util/List;LX2/e0;)LX2/w0;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v2, LX2/L0;->g:LX2/L0;

    const-string v3, "can\'t parse load balancer configuration"

    invoke-virtual {v2, v3}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v2

    invoke-virtual {v2, v0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object v0

    new-instance v2, LX2/w0;

    invoke-direct {v2, v0}, LX2/w0;-><init>(LX2/L0;)V

    move-object v0, v2

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, LX2/w0;->a:LX2/L0;

    if-eqz v1, :cond_3

    new-instance p0, LX2/w0;

    invoke-direct {p0, v1}, LX2/w0;-><init>(LX2/L0;)V

    return-object p0

    :cond_3
    iget-object v1, v0, LX2/w0;->b:Ljava/lang/Object;

    :goto_3
    iget-boolean v0, p0, Lio/grpc/internal/t2;->a:Z

    iget v2, p0, Lio/grpc/internal/t2;->b:I

    iget p0, p0, Lio/grpc/internal/t2;->c:I

    invoke-static {p1, v0, v2, p0, v1}, Lio/grpc/internal/C1;->a(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/C1;

    move-result-object p0

    new-instance p1, LX2/w0;

    invoke-direct {p1, p0}, LX2/w0;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    sget-object p1, LX2/L0;->g:LX2/L0;

    const-string v0, "failed to parse service config"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p1, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    new-instance p1, LX2/w0;

    invoke-direct {p1, p0}, LX2/w0;-><init>(LX2/L0;)V

    return-object p1
.end method
