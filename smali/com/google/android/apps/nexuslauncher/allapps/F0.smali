.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic b:J

.field public final synthetic c:Landroid/app/search/Query;

.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;JLandroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-wide p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->b:J

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->c:Landroid/app/search/Query;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iput-boolean p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->e:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->b:J

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->c:Landroid/app/search/Query;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F0;->e:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneSearchSuggestProvider"

    const-string v6, "AppSearch 0-state cache not available, fallback to AGA"

    invoke-static {v0, v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-object p1, v1, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/W;->a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    invoke-interface {v2, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->h:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    iget p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/W;->d:I

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p1

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/G0;

    const/4 v7, 0x1

    move-object v0, v6

    move-object v2, v4

    move-object v3, v5

    move v4, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/G0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;ZI)V

    invoke-virtual {p1, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method
