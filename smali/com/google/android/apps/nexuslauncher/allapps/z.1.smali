.class public final Lcom/google/android/apps/nexuslauncher/allapps/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/i;


# instance fields
.field public final synthetic a:Landroid/app/search/Query;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/A;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/A;Landroid/app/search/Query;JLcom/google/android/apps/nexuslauncher/allapps/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->d:Lcom/google/android/apps/nexuslauncher/allapps/A;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->a:Landroid/app/search/Query;

    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->b:J

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->c:Lcom/google/android/apps/nexuslauncher/allapps/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "GmsPlayProvider"

    const-string v1, "Receive failed GetCompletionsResponse"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->d:Lcom/google/android/apps/nexuslauncher/allapps/A;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->D:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->b:J

    sub-long/2addr v1, v3

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/W;->d(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/y;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z;->c:Lcom/google/android/apps/nexuslauncher/allapps/p;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/p;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lg2/p;

    sget-boolean v2, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/z;->a:Landroid/app/search/Query;

    const-string v4, "GmsPlayProvider"

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Receive success GetCompletionsResponse for query:%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/z;->d:Lcom/google/android/apps/nexuslauncher/allapps/A;

    iget-object v6, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v7, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->D:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/apps/nexuslauncher/allapps/z;->b:J

    sub-long/2addr v8, v10

    sget-object v10, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/apps/nexuslauncher/allapps/W;->d(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lg2/p;->b()Lcom/google/protobuf/S;

    move-result-object v1

    const-string v13, "GmsPlayUtil"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Receive GetCompletionsResponse size: %d"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg2/o;

    invoke-virtual {v14}, Lg2/o;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PLAY:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":Gms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/search/SearchTarget$Builder;

    const/16 v15, 0x100

    move-object/from16 v16, v8

    const-string v8, "icon_row_medium"

    invoke-direct {v1, v15, v8, v0}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lg2/o;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v14}, Lg2/o;->i()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    move-object v15, v4

    invoke-virtual {v14}, Lg2/o;->e()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/app/search/SearchTarget$Builder;->setScore(F)Landroid/app/search/SearchTarget$Builder;

    goto :goto_1

    :cond_2
    move-object v8, v3

    move-object v15, v4

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "group_id"

    move-object/from16 v17, v15

    const-string v15, "APPLICATION:0:com.android.vending:play_gms_header:com.android.vending.AssetBrowserActivity"

    invoke-virtual {v3, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lg2/o;->f()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v15, "com.android.vending"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "overlay"

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v15, "callerId"

    const-string v8, "com.google.android.apps.nexuslauncher"

    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14}, Lg2/o;->j()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v14}, Lg2/o;->h()F

    move-result v8

    const/4 v15, 0x0

    invoke-static {v8, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lg2/o;->h()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v19, v10

    const-string v10, "%.1f"

    invoke-static {v9, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \u2605 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lg2/o;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object/from16 v19, v10

    invoke-virtual {v14}, Lg2/o;->g()Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v15, "should_start_for_result"

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-virtual {v10, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v14}, Lg2/o;->b()Lg2/r;

    move-result-object v9

    invoke-virtual {v9}, Lg2/r;->c()Lg2/t;

    move-result-object v9

    invoke-virtual {v9}, Lg2/t;->d()I

    move-result v9

    invoke-virtual {v14}, Lg2/o;->c()Ljava/lang/String;

    move-result-object v14

    const-string v15, "icon_integer"

    invoke-virtual {v10, v15, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9, v14}, [Ljava/lang/Object;

    move-result-object v9

    const-string v15, "Receive token: %d for app: %s"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Landroid/app/search/SearchAction$Builder;

    invoke-direct {v9, v0, v14}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/app/search/SearchAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/search/SearchAction$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/app/search/SearchAction$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/search/SearchAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v8

    move-object/from16 v19, v10

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->F:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    iget-object v3, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->b:Lcom/google/android/apps/nexuslauncher/allapps/W;

    move-object/from16 v4, v19

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/W;->d(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "Finished unpacking GetCompletionsResponse."

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a(Landroid/app/search/Query;Ljava/util/List;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->M:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_7
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/x;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/z;->c:Lcom/google/android/apps/nexuslauncher/allapps/p;

    invoke-direct {v1, v2, v12}, Lcom/google/android/apps/nexuslauncher/allapps/x;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/p;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
