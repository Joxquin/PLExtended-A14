.class public final Lcom/google/android/apps/nexuslauncher/allapps/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/google/android/apps/nexuslauncher/allapps/s1;

.field public d:Lcom/google/android/apps/nexuslauncher/allapps/a1;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->b:Landroid/os/Handler;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->c:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "search timeout = %d"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceSearchAlg"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    :cond_0
    return-void
.end method

.method public final doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/q;->doSearch(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    return-void
.end method

.method public final doSearch(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v13, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v13}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 6
    iget-object v14, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->c:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-virtual {v14}, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a()Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    .line 7
    iget v5, v14, Lcom/google/android/apps/nexuslauncher/allapps/s1;->s:I

    if-lt v4, v5, :cond_0

    iget v5, v14, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    if-gt v4, v5, :cond_0

    move/from16 v16, v9

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 8
    :goto_0
    iget-object v10, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->H:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    .line 9
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_1

    .line 10
    iget-object v1, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->j:Ljava/util/ArrayList;

    :cond_1
    move-object/from16 v17, v1

    if-eqz v16, :cond_2

    .line 11
    iget-object v2, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->k:Ljava/util/ArrayList;

    :cond_2
    move-object/from16 v18, v2

    .line 12
    iget-boolean v1, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->mDeviceResultReceived:Z

    if-nez v1, :cond_3

    .line 13
    iget-wide v7, v4, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->i:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v4, v1, v7

    sget-object v6, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->e:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide/from16 v21, v7

    move/from16 v7, v19

    move/from16 v8, v20

    move v15, v9

    move-object/from16 v23, v10

    move-wide/from16 v9, v21

    .line 16
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    goto :goto_1

    :cond_3
    move v15, v9

    move-object/from16 v23, v10

    .line 17
    :goto_1
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    .line 18
    iput-boolean v15, v1, Lcom/google/android/apps/nexuslauncher/allapps/a1;->l:Z

    .line 19
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_2

    :cond_4
    move v15, v9

    move-object/from16 v23, v10

    if-eqz v3, :cond_5

    .line 20
    iget-object v1, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    .line 21
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d:Ljava/util/List;

    :cond_5
    move-object v3, v1

    move-object v4, v2

    .line 22
    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v12, :cond_6

    const-string v2, "suggestedQueries"

    .line 23
    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    :cond_6
    sget-object v2, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    sget-object v2, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/u;

    .line 26
    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    .line 27
    iget-boolean v9, v2, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_3

    :cond_7
    move v9, v15

    .line 28
    :goto_3
    iget-boolean v2, v14, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v2, :cond_a

    if-eqz v9, :cond_a

    .line 29
    iget-object v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    .line 30
    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->id:I

    const-string v5, "entry"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "timeout"

    .line 31
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r()I

    move-result v5

    .line 32
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v5, "educard_dismissed"

    if-eqz v2, :cond_9

    if-eq v2, v15, :cond_8

    goto :goto_4

    .line 35
    :cond_8
    iget-boolean v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z:Z

    if-eqz v2, :cond_a

    .line 36
    invoke-virtual {v1, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 37
    :cond_9
    iget-boolean v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y:Z

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {v1, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    :cond_a
    :goto_4
    new-instance v10, Landroid/app/search/Query;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v10, v11, v5, v6, v1}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 40
    new-instance v12, Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 41
    invoke-virtual {v10}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v8

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/a1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/search/SearchCallback;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/y0;J)V

    iput-object v12, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    .line 42
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->COLLECT_SEARCH_HISTORY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const-string v2, " at time "

    const-string v3, "starting search for query "

    const-string v4, "DeviceSearchAlg"

    if-eqz v1, :cond_b

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v10}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v4, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 46
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v10}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_5
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    .line 50
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v2

    if-eqz v2, :cond_c

    move v9, v15

    goto :goto_6

    .line 51
    :cond_c
    iget-boolean v9, v14, Lcom/google/android/apps/nexuslauncher/allapps/s1;->c:Z

    :goto_6
    if-eqz v9, :cond_d

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 52
    invoke-static {v2}, Lcom/android/launcher3/util/Executors;->getPackageExecutor(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/l;

    move-object/from16 v4, v23

    invoke-direct {v3, v1, v10, v4, v11}, Lcom/google/android/apps/nexuslauncher/allapps/l;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/Q;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 53
    :cond_d
    invoke-virtual {v10}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    .line 54
    iput-wide v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    .line 55
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->b:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/m;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v10, v4}, Lcom/google/android/apps/nexuslauncher/allapps/m;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/lang/Object;I)V

    .line 56
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r()I

    move-result v4

    int-to-long v4, v4

    .line 57
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 58
    iget-object v2, v13, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    .line 59
    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/n;

    invoke-direct {v4, v1}, Lcom/google/android/apps/nexuslauncher/allapps/n;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;)V

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/m;

    invoke-direct {v5, v1, v10, v15}, Lcom/google/android/apps/nexuslauncher/allapps/m;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/lang/Object;I)V

    invoke-virtual {v2, v10, v5, v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/m;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    .line 60
    :goto_7
    invoke-virtual {v13}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 61
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    .line 62
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 63
    invoke-virtual {v13, v10, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;)V

    goto :goto_8

    .line 64
    :cond_e
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/a0;

    invoke-direct {v3, v13, v10, v1}, Lcom/google/android/apps/nexuslauncher/allapps/a0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/a1;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    :goto_8
    if-eqz v16, :cond_10

    .line 65
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    .line 66
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/m0;

    const/4 v3, 0x0

    invoke-direct {v2, v13, v10, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/m0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 68
    invoke-virtual {v14}, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 69
    iget v2, v14, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    if-le v1, v2, :cond_11

    goto :goto_9

    :cond_11
    move v15, v3

    :goto_9
    if-eqz v15, :cond_12

    .line 70
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/o;

    invoke-direct {v2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/o;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/q;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    :goto_a
    return-void
.end method
