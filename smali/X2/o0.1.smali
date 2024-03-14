.class public final LX2/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/m0;

.field public final b:Ljava/lang/Object;

.field public volatile c:[B


# direct methods
.method public constructor <init>(LX2/m0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/o0;->a:LX2/m0;

    iput-object p2, p0, LX2/o0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    iget-object v0, p0, LX2/o0;->c:[B

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX2/o0;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, LX2/o0;->a:LX2/m0;

    iget-object v1, p0, LX2/o0;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LX2/m0;->a(Ljava/lang/Object;)LY2/l;

    move-result-object v0

    sget-object v1, LX2/r0;->c:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, LP2/f;->b(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, LX2/o0;->c:[B

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failure reading serialized stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object p0, p0, LX2/o0;->c:[B

    return-object p0
.end method
