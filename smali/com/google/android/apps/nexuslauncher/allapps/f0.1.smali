.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lf2/J0;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/String;Lf2/J0;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->f:Lf2/J0;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->h:Landroid/view/View;

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->f:Lf2/J0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->h:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f0;->i:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "AGASessionSummaryLog"

    const-string v4, "selectSuggestion"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    invoke-static {}, Lf2/P0;->g()Lf2/O0;

    move-result-object v4

    invoke-virtual {v4, v1}, Lf2/O0;->d(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Lf2/O0;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lf2/O0;->b(J)V

    invoke-virtual {v4, v2}, Lf2/O0;->c(Lf2/J0;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object v9, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/H0;

    const/4 v11, 0x0

    invoke-direct {v6, v5, v10, p0, v11}, Lcom/google/android/apps/nexuslauncher/allapps/H0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/P0;

    iget-object v3, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->e:LX2/u0;

    if-nez v4, :cond_3

    const-class v6, Lf2/a0;

    monitor-enter v6

    :try_start_0
    sget-object v4, Lf2/a0;->e:LX2/u0;

    if-nez v4, :cond_2

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v10, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v10, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v10, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "LogSelectSuggestion"

    invoke-static {v10, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/P0;->f()Lf2/P0;

    move-result-object v1

    sget-object v10, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/O;->b()Lf2/O;

    move-result-object v1

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->e:LX2/u0;

    move-object v4, v1

    :cond_2
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v3, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v6, "LogSelectSuggestionResponse"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_4

    :cond_4
    iget-object p0, v5, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v6, v6, Lcom/google/android/apps/nexuslauncher/allapps/t1;->p:Z

    if-eqz v6, :cond_7

    invoke-static {}, Lf2/j;->d()Lf2/i;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v3

    check-cast v3, Lf2/P0;

    invoke-virtual {p0, v3}, Lf2/i;->a(Lf2/P0;)V

    invoke-virtual {p0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/j;

    iget-object v3, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->d:LX2/u0;

    if-nez v4, :cond_6

    const-class v6, Lf2/a0;

    monitor-enter v6

    :try_start_1
    sget-object v4, Lf2/a0;->d:LX2/u0;

    if-nez v4, :cond_5

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v11, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v11, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v11, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v12, "BuildUrlAndLogSelectSuggestion"

    invoke-static {v11, v12}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/j;->c()Lf2/j;

    move-result-object v1

    sget-object v11, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v11, LZ2/b;

    invoke-direct {v11, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v11, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/l;->b()Lf2/l;

    move-result-object v1

    new-instance v11, LZ2/b;

    invoke-direct {v11, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v11, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->d:LX2/u0;

    move-object v4, v1

    :cond_5
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    :goto_2
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v3, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;

    const-string v6, "BuildUrlAndLogSelectSuggestionResponse"

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/apps/nexuslauncher/allapps/Q0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    goto/16 :goto_4

    :cond_7
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->n:Z

    if-eqz p0, :cond_8

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/P0;

    invoke-virtual {p0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object p0

    const-string v0, "SelectSuggestionRequest"

    invoke-virtual {v5, p0, v10, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f([BLandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/P0;

    iget-object v3, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->c:LX2/u0;

    if-nez v4, :cond_a

    const-class v6, Lf2/a0;

    monitor-enter v6

    :try_start_2
    sget-object v4, Lf2/a0;->c:LX2/u0;

    if-nez v4, :cond_9

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v10, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v10, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v10, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v11, "SelectSuggestion"

    invoke-static {v10, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/P0;->f()Lf2/P0;

    move-result-object v1

    sget-object v10, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/R0;->b()Lf2/R0;

    move-result-object v1

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->c:LX2/u0;

    move-object v4, v1

    :cond_9
    monitor-exit v6

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_a
    :goto_3
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v3, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/N0;

    const-string v6, "SelectSuggestionResponse"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/N0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_4
    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e(Lf2/J0;)V

    return-void
.end method
