.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/A;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/A;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->e:Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->e:Lcom/google/android/apps/nexuslauncher/allapps/A;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    const-string v2, "GmsPlayProvider"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/k0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Established or reuse existing binder channel authority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    invoke-virtual {p0}, Lio/grpc/internal/k0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->K:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.play.cloud.search.grpc.io.action.BIND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.google.android.gms"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->N:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const-string p0, "Failed to create component"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    new-instance v5, Lio/grpc/binder/AndroidComponentAddress;

    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v5, v3}, Lio/grpc/binder/AndroidComponentAddress;-><init>(Landroid/content/Intent;)V

    new-instance v3, Lio/grpc/binder/d;

    invoke-direct {v3, v0, v5}, Lio/grpc/binder/d;-><init>(Landroid/content/Context;Lio/grpc/binder/AndroidComponentAddress;)V

    new-instance v0, Lio/grpc/binder/i;

    invoke-direct {v0}, Lio/grpc/binder/i;-><init>()V

    iput-object v0, v3, Lio/grpc/binder/d;->d:Lio/grpc/binder/h;

    invoke-virtual {v3}, Lio/grpc/binder/d;->a()LX2/f0;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/z1;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    new-instance v3, Lg2/u;

    invoke-direct {v3}, Lg2/u;-><init>()V

    invoke-static {v3, v0}, Lio/grpc/stub/a;->a(La3/a;Lio/grpc/internal/z1;)La3/b;

    move-result-object v0

    check-cast v0, Lg2/v;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/A;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created the binder channel successfully for end point component ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->e:Lcom/google/android/apps/nexuslauncher/allapps/A;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    if-eqz v0, :cond_6

    const-string v0, "GmsPlayProvider"

    const-string v1, "Shut down the binder channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->h:Lio/grpc/internal/z1;

    invoke-virtual {p0}, Lio/grpc/internal/z1;->i()LX2/f0;

    :cond_6
    return-void

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l0;->e:Lcom/google/android/apps/nexuslauncher/allapps/A;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A;->getEntryPoint()Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg2/x;->b(Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->e:Lg2/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lg2/B;

    invoke-virtual {v0, v2}, Lg2/c;->a(Lg2/B;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A;->e:Lg2/c;

    invoke-virtual {p0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lg2/d;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v3, Lg2/w;->d:LX2/u0;

    if-nez v3, :cond_8

    const-class v4, Lg2/w;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lg2/w;->d:LX2/u0;

    if-nez v3, :cond_7

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v3

    sget-object v5, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v5, v3, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v5, "com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService"

    const-string v6, "EndSession"

    invoke-static {v5, v6}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v3, LX2/s0;->e:Z

    invoke-static {}, Lg2/d;->c()Lg2/d;

    move-result-object v1

    sget-object v5, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v5, LZ2/b;

    invoke-direct {v5, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lg2/f;->b()Lg2/f;

    move-result-object v1

    new-instance v5, LZ2/b;

    invoke-direct {v5, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->b:LX2/t0;

    invoke-virtual {v3}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lg2/w;->d:LX2/u0;

    move-object v3, v1

    :cond_7
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_5
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v3, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
