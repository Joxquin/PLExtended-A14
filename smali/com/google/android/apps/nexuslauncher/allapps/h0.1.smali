.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lf2/J0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/view/View;Ljava/lang/String;Lf2/J0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->g:Lf2/J0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->e:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h0;->g:Lf2/J0;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "AGASessionSummaryLog"

    const-string v2, "searchGoogle"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    invoke-static {}, Lf2/F0;->f()Lf2/E0;

    move-result-object v2

    invoke-virtual {v2, v8}, Lf2/E0;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lf2/E0;->c(J)V

    invoke-virtual {v2, p0}, Lf2/E0;->b(Lf2/J0;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-object v7, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    const/4 v9, 0x1

    if-eqz v4, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v1, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/J0;

    invoke-direct {v10, v3, v1, v8, v9}, Lcom/google/android/apps/nexuslauncher/allapps/J0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lf2/F0;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->k:LX2/u0;

    if-nez v4, :cond_2

    const-class v8, Lf2/a0;

    monitor-enter v8

    :try_start_0
    sget-object v4, Lf2/a0;->k:LX2/u0;

    if-nez v4, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v10, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v10, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v10, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "LogSearchGoogle"

    invoke-static {v10, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v9, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/F0;->e()Lf2/F0;

    move-result-object v9

    sget-object v10, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v10, LZ2/b;

    invoke-direct {v10, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/K;->b()Lf2/K;

    move-result-object v9

    new-instance v10, LZ2/b;

    invoke-direct {v10, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v4

    sput-object v4, Lf2/a0;->k:LX2/u0;

    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, v1}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v4, "LogSearchGoogleResponse"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_3

    :cond_3
    iget-object v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v10, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    if-eqz v10, :cond_6

    iget-object v10, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/t1;->p:Z

    if-eqz v10, :cond_6

    invoke-static {}, Lf2/b;->d()Lf2/a;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lf2/F0;

    invoke-virtual {v1, v2}, Lf2/a;->a(Lf2/F0;)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lf2/b;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->j:LX2/u0;

    if-nez v4, :cond_5

    const-class v10, Lf2/a0;

    monitor-enter v10

    :try_start_1
    sget-object v4, Lf2/a0;->j:LX2/u0;

    if-nez v4, :cond_4

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v11, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v11, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v11, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v12, "BuildUrlAndLogSearchGoogle"

    invoke-static {v11, v12}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v9, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/b;->c()Lf2/b;

    move-result-object v9

    sget-object v11, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v11, LZ2/b;

    invoke-direct {v11, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v11, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/d;->b()Lf2/d;

    move-result-object v9

    new-instance v11, LZ2/b;

    invoke-direct {v11, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v11, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v4

    sput-object v4, Lf2/a0;->j:LX2/u0;

    :cond_4
    monitor-exit v10

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_1
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, v1}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    const-string v4, "BuildUrlAndLogSearchGoogleResponse"

    const/4 v9, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/Q0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_3

    :cond_6
    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v4, v4, Lcom/google/android/apps/nexuslauncher/allapps/t1;->n:Z

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, Lf2/F0;

    invoke-virtual {v0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object v0

    const-string v2, "SearchGoogleRequest"

    invoke-virtual {v3, v0, v1, v2, v8}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f([BLandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lf2/F0;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->i:LX2/u0;

    if-nez v4, :cond_9

    const-class v8, Lf2/a0;

    monitor-enter v8

    :try_start_2
    sget-object v4, Lf2/a0;->i:LX2/u0;

    if-nez v4, :cond_8

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v10, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v10, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v10, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "SearchGoogle"

    invoke-static {v10, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v9, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/F0;->e()Lf2/F0;

    move-result-object v9

    sget-object v10, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v10, LZ2/b;

    invoke-direct {v10, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/H0;->b()Lf2/H0;

    move-result-object v9

    new-instance v10, LZ2/b;

    invoke-direct {v10, v9}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v4

    sput-object v4, Lf2/a0;->i:LX2/u0;

    :cond_8
    monitor-exit v8

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_9
    :goto_2
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, v1}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v4, "SearchGoogleResponse"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_3
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e(Lf2/J0;)V

    return-void
.end method
