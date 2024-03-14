.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/g1;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/apps/nexuslauncher/allapps/q0;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->b:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->b:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/A;->a(Z)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lg2/t;->e()Lg2/s;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg2/s;->a(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v4

    check-cast v4, Lg2/t;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lg2/i;->f()Lg2/h;

    move-result-object v8

    invoke-virtual {v8, v4}, Lg2/h;->b(Lg2/t;)V

    iget-object v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v4

    check-cast v4, Lg2/B;

    invoke-virtual {v8, v4}, Lg2/h;->c(Lg2/B;)V

    iget v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->f:I

    invoke-virtual {v8, v4}, Lg2/h;->a(I)V

    invoke-virtual {v8}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v4

    check-cast v4, Lg2/i;

    iget-object v8, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    iget-object v9, v8, La3/b;->a:LX2/h;

    sget-object v10, Lg2/w;->b:LX2/u0;

    const/4 v11, 0x1

    if-nez v10, :cond_2

    const-class v12, Lg2/w;

    monitor-enter v12

    :try_start_0
    sget-object v10, Lg2/w;->b:LX2/u0;

    if-nez v10, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v10

    sget-object v13, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v13, v10, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v13, "com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService"

    const-string v14, "GetAsset"

    invoke-static {v13, v14}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v11, v10, LX2/s0;->e:Z

    invoke-static {}, Lg2/i;->e()Lg2/i;

    move-result-object v13

    sget-object v14, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v14, LZ2/b;

    invoke-direct {v14, v13}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v14, v10, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lg2/k;->c()Lg2/k;

    move-result-object v13

    new-instance v14, LZ2/b;

    invoke-direct {v14, v13}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v14, v10, LX2/s0;->b:LX2/t0;

    invoke-virtual {v10}, LX2/s0;->a()LX2/u0;

    move-result-object v10

    sput-object v10, Lg2/w;->b:LX2/u0;

    :cond_1
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v8, v8, La3/b;->b:LX2/g;

    invoke-virtual {v9, v10, v8}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v8

    invoke-static {v8, v4}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object v4

    sget-boolean v8, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    if-eqz v8, :cond_3

    const-string v9, "GmsPlayProvider"

    const-string v10, "Sending request to Gms Play to get assets."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg2/k;

    invoke-virtual {v4}, Lg2/k;->b()Lg2/b;

    move-result-object v9

    invoke-virtual {v9}, Lg2/b;->d()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v10, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->E:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    sget-object v14, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/google/android/apps/nexuslauncher/allapps/W;->d(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    if-eqz v8, :cond_4

    const-string v8, "GmsPlayProvider"

    const-string v9, "Receive success getPlayAsset for token: %d"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v4}, Lg2/k;->b()Lg2/b;

    move-result-object v4

    invoke-virtual {v4}, Lg2/b;->b()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->q()[B

    move-result-object v4

    iget v8, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->g:I

    invoke-static {v1, v4, v8}, Lcom/google/android/apps/nexuslauncher/allapps/B;->a(Landroid/content/res/Resources;[BI)[B

    move-result-object v1

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "GmsPlayProvider"

    const-string v3, "No asset bytes in GetAssetResponse."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "GmsPlayProvider"

    const-string v4, "Failed to retrieve GetAssetResponse"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v1, v2, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->E:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/google/android/apps/nexuslauncher/allapps/W;->d(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :goto_2
    move-object v1, v5

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->v(Landroid/graphics/drawable/Icon;Lcom/google/android/apps/nexuslauncher/allapps/g1;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    :goto_4
    return-object v5
.end method
