.class public final Lcom/google/android/apps/nexuslauncher/logging/c;
.super Lcom/android/launcher3/logging/StartupLatencyLogger;
.source "SourceFile"


# instance fields
.field public final a:Le3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherStartupLatencyLogger$1;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherStartupLatencyLogger$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/launcher3/logging/StartupLatencyLogger;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/c;->a:Le3/c;

    return-void
.end method


# virtual methods
.method public final log()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 13

    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->getStartTimeByEvent()Landroid/util/SparseLongArray;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->getEndTimeByEvent()Landroid/util/SparseLongArray;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    sub-long v9, v7, v5

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-eqz v5, :cond_0

    cmp-long v5, v7, v11

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/apps/nexuslauncher/c;->h:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/logging/c;->a:Le3/c;

    invoke-interface {v5}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->getLatencyType()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    invoke-interface {v5, v9, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->f:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->a()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->getCardinality()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
