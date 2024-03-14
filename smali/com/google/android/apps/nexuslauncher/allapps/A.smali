.class public final Lcom/google/android/apps/nexuslauncher/allapps/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final b:Lcom/google/android/apps/nexuslauncher/allapps/W;

.field public final c:Lg2/x;

.field public final d:Lg2/E;

.field public final e:Lg2/c;

.field public final f:I

.field public final g:I

.field public h:Lio/grpc/internal/z1;

.field public i:Lg2/v;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/W;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-static {}, Lg2/A;->e()Lg2/y;

    move-result-object v0

    invoke-virtual {v0}, Lg2/y;->a()V

    invoke-virtual {v0}, Lg2/y;->b()V

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg2/y;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, Lg2/A;

    invoke-static {}, Lg2/B;->d()Lg2/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg2/x;->a(Lg2/A;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-static {}, Lg2/F;->d()Lg2/E;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->d:Lg2/E;

    invoke-static {}, Lg2/d;->d()Lg2/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->e:Lg2/c;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->f:I

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->g:I

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/k0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "GmsPlayProvider"

    const-string v0, "Channel is not established"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->L:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A;->getEntryPoint()Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg2/x;->b(Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->d:Lg2/E;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lg2/B;

    invoke-virtual {v0, v1}, Lg2/E;->a(Lg2/B;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->d:Lg2/E;

    invoke-virtual {p0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lg2/F;

    iget-object v1, v0, La3/b;->a:LX2/h;

    sget-object v2, Lg2/w;->c:LX2/u0;

    if-nez v2, :cond_1

    const-class v3, Lg2/w;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lg2/w;->c:LX2/u0;

    if-nez v2, :cond_0

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v2

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v4, v2, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v4, "com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService"

    const-string v5, "StartSession"

    invoke-static {v4, v5}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LX2/s0;->d:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v2, LX2/s0;->e:Z

    invoke-static {}, Lg2/F;->c()Lg2/F;

    move-result-object v4

    sget-object v5, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v5, LZ2/b;

    invoke-direct {v5, v4}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v2, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lg2/H;->b()Lg2/H;

    move-result-object v4

    new-instance v5, LZ2/b;

    invoke-direct {v5, v4}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v2, LX2/s0;->b:LX2/t0;

    invoke-virtual {v2}, LX2/s0;->a()LX2/u0;

    move-result-object v2

    sput-object v2, Lg2/w;->c:LX2/u0;

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v1, v2, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    return-void
.end method

.method public getEntryPoint()Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->searchEntryState:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    sget-object v0, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->d:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->f:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    if-ne p0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->e:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getManagedChannel()LX2/f0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    return-object p0
.end method

.method public setConnection(Lg2/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    return-void
.end method
