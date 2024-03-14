.class public final LX2/C0;
.super LX2/x0;
.source "SourceFile"


# instance fields
.field public final synthetic a:LX2/E0;


# direct methods
.method public constructor <init>(LX2/E0;)V
    .locals 0

    iput-object p1, p0, LX2/C0;->a:LX2/E0;

    invoke-direct {p0}, LX2/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LX2/C0;->a:LX2/E0;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LX2/C0;->a:LX2/E0;

    iget-object p0, p0, LX2/E0;->b:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Ljava/net/URI;LX2/v0;)LX2/A0;
    .locals 1

    iget-object p0, p0, LX2/C0;->a:LX2/E0;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX2/E0;->d:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/B0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, LX2/x0;->c(Ljava/net/URI;LX2/v0;)LX2/A0;

    move-result-object p0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
