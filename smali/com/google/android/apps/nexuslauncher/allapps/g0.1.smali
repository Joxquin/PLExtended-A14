.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lf2/J0;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/String;Ljava/lang/String;Lf2/J0;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->g:Lf2/J0;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->i:Landroid/view/View;

    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->g:Lf2/J0;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->h:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->i:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g0;->j:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "AGASessionSummaryLog"

    const-string v5, "selectButton"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    invoke-static {}, Lf2/L0;->h()Lf2/K0;

    move-result-object v5

    invoke-virtual {v5, v1}, Lf2/K0;->e(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lf2/K0;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lf2/K0;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lf2/K0;->c(J)V

    invoke-virtual {v5, v3}, Lf2/K0;->d(Lf2/J0;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-object v10, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lcom/google/android/apps/nexuslauncher/allapps/J0;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v2, v4, v12}, Lcom/google/android/apps/nexuslauncher/allapps/J0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-virtual {v7, v11}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "OneSearchSuggestProvider"

    const-string v4, "Bad URI syntax: "

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/L0;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->h:LX2/u0;

    if-nez v4, :cond_2

    const-class v5, Lf2/a0;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lf2/a0;->h:LX2/u0;

    if-nez v4, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v7, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v7, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v7, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "LogSelectButton"

    invoke-static {v7, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/L0;->g()Lf2/L0;

    move-result-object v1

    sget-object v7, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/M;->b()Lf2/M;

    move-result-object v1

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->h:LX2/u0;

    move-object v4, v1

    :cond_1
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v7, "LogSelectButtonResponse"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_4

    :cond_3
    iget-object p0, v6, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->p:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lf2/f;->d()Lf2/e;

    move-result-object p0

    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lf2/L0;

    invoke-virtual {p0, v2}, Lf2/e;->a(Lf2/L0;)V

    invoke-virtual {p0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/f;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->g:LX2/u0;

    if-nez v4, :cond_5

    const-class v5, Lf2/a0;

    monitor-enter v5

    :try_start_2
    sget-object v4, Lf2/a0;->g:LX2/u0;

    if-nez v4, :cond_4

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v7, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v7, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v7, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v12, "BuildUrlAndLogSelectButton"

    invoke-static {v7, v12}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/f;->c()Lf2/f;

    move-result-object v1

    sget-object v7, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/h;->b()Lf2/h;

    move-result-object v1

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->g:LX2/u0;

    move-object v4, v1

    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_2
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    const-string v7, "BuildUrlAndLogSelectButtonResponse"

    const/4 v12, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/nexuslauncher/allapps/Q0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_4

    :cond_6
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->n:Z

    if-eqz p0, :cond_7

    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/L0;

    invoke-virtual {p0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object p0

    const-string v0, "SelectButtonRequest"

    invoke-virtual {v6, p0, v11, v0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f([BLandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/L0;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->f:LX2/u0;

    if-nez v4, :cond_9

    const-class v5, Lf2/a0;

    monitor-enter v5

    :try_start_3
    sget-object v4, Lf2/a0;->f:LX2/u0;

    if-nez v4, :cond_8

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v7, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v7, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v7, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "SelectButton"

    invoke-static {v7, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/L0;->g()Lf2/L0;

    move-result-object v1

    sget-object v7, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/N0;->b()Lf2/N0;

    move-result-object v1

    new-instance v7, LZ2/b;

    invoke-direct {v7, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v7, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->f:LX2/u0;

    move-object v4, v1

    :cond_8
    monitor-exit v5

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_9
    :goto_3
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v7, "SelectButtonResponse"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_4
    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e(Lf2/J0;)V

    return-void
.end method
