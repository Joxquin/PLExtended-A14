.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->d:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/H2;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "OneSearchSuggestProvider"

    const-string v0, "Can\'t delete suggestion - null id?"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v2

    invoke-static {}, Lf2/n;->d()Lf2/m;

    move-result-object v3

    invoke-virtual {v3, p0}, Lf2/m;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v2, La3/b;->a:LX2/h;

    sget-object v6, Lf2/a0;->l:LX2/u0;

    if-nez v6, :cond_2

    const-class v7, Lf2/a0;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lf2/a0;->l:LX2/u0;

    if-nez v6, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v6

    sget-object v8, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v8, v6, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v8, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v9, "DeleteSuggestion"

    invoke-static {v8, v9}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v6, LX2/s0;->e:Z

    invoke-static {}, Lf2/n;->c()Lf2/n;

    move-result-object v8

    sget-object v9, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v9, LZ2/b;

    invoke-direct {v9, v8}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v9, v6, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/p;->b()Lf2/p;

    move-result-object v8

    new-instance v9, LZ2/b;

    invoke-direct {v9, v8}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v9, v6, LX2/s0;->b:LX2/t0;

    invoke-virtual {v6}, LX2/s0;->a()LX2/u0;

    move-result-object v6

    sput-object v6, Lf2/a0;->l:LX2/u0;

    :cond_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v2, v2, La3/b;->b:LX2/g;

    invoke-virtual {v5, v6, v2}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v2

    invoke-static {v2, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/M0;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/google/android/apps/nexuslauncher/allapps/M0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;JI)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v2}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/b0;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/b0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, Lf2/J0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "AGASessionSummaryLog"

    const-string v3, "logAbandonSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lf2/C;->e()Lf2/B;

    move-result-object v2

    invoke-virtual {v2, p0}, Lf2/B;->b(Lf2/J0;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lf2/B;->a(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lf2/C;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    iget-object v3, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->o:LX2/u0;

    if-nez v4, :cond_5

    const-class v5, Lf2/a0;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lf2/a0;->o:LX2/u0;

    if-nez v4, :cond_4

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v6, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v6, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v6, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v7, "LogAbandonedSession"

    invoke-static {v6, v7}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/C;->d()Lf2/C;

    move-result-object v1

    sget-object v6, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v6, LZ2/b;

    invoke-direct {v6, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v6, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/E;->b()Lf2/E;

    move-result-object v1

    new-instance v6, LZ2/b;

    invoke-direct {v6, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v6, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->o:LX2/u0;

    move-object v4, v1

    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v3, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, v2}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e(Lf2/J0;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, [B

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v2, :cond_6

    const-string v2, "AGASessionSummaryLog"

    const-string v3, "logStartSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v2, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v2, "WebAppSearchLogging"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logStartSession, hasCache="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_7

    move v5, v1

    goto :goto_3

    :cond_7
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lf2/Q;->e()Lf2/P;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lf2/P;->a(J)V

    if-eqz p0, :cond_9

    array-length v4, p0

    invoke-static {p0, v3, v4}, Lcom/google/protobuf/ByteString;->j([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v2, p0}, Lf2/P;->b(Lcom/google/protobuf/ByteString;)V

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, Lf2/Q;

    iget-object v2, p0, La3/b;->a:LX2/h;

    sget-object v3, Lf2/a0;->n:LX2/u0;

    if-nez v3, :cond_b

    const-class v4, Lf2/a0;

    monitor-enter v4

    :try_start_2
    sget-object v3, Lf2/a0;->n:LX2/u0;

    if-nez v3, :cond_a

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v3

    sget-object v5, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v5, v3, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v5, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v6, "LogStartSession"

    invoke-static {v5, v6}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v3, LX2/s0;->e:Z

    invoke-static {}, Lf2/Q;->d()Lf2/Q;

    move-result-object v1

    sget-object v5, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v5, LZ2/b;

    invoke-direct {v5, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/T;->b()Lf2/T;

    move-result-object v1

    new-instance v5, LZ2/b;

    invoke-direct {v5, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->b:LX2/t0;

    invoke-virtual {v3}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->n:LX2/u0;

    move-object v3, v1

    :cond_a
    monitor-exit v4

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_b
    :goto_4
    iget-object p0, p0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v3, p0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object p0

    invoke-static {p0, v0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    return-void

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/r0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/r0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
