.class public Lcom/android/launcher3/logging/StartupLatencyLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cardinality:I

.field private final endTimeByEvent:Landroid/util/SparseLongArray;

.field private isInTest:Z

.field private final latencyType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field private final startTimeByEvent:Landroid/util/SparseLongArray;

.field private workspaceLoadStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->latencyType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-void
.end method

.method public static synthetic getCardinality$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEndTimeByEvent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStartTimeByEvent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWorkspaceLoadStartTime$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCardinality()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    return p0
.end method

.method public final getEndTimeByEvent()Landroid/util/SparseLongArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public final getLatencyType()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->latencyType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object p0
.end method

.method public final getStartTimeByEvent()Landroid/util/SparseLongArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public log()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0

    return-object p0
.end method

.method public final logCardinality(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    return-void
.end method

.method public final logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v6, :cond_1

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-ne p1, v6, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)V

    iput-wide v4, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->isInTest:Z

    iget-object v3, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    const/4 v4, 0x1

    if-nez v2, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p0

    const/4 v2, 0x0

    if-ltz p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_4
    move p0, v2

    :goto_1
    const-string v5, "Cannot end "

    const-string v6, "LauncherStartupLatencyLogger"

    if-nez p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event before starting it"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_6

    move p0, v4

    goto :goto_2

    :cond_6
    move p0, v2

    :goto_2
    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot end same "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event again"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_8

    move p0, v4

    goto :goto_3

    :cond_8
    move p0, v2

    :goto_3
    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event after LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v4, v2

    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p0

    invoke-virtual {v3, p0, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_a
    return-void
.end method

.method public final logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->isInTest:Z

    iget-object p0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "LauncherStartupLatencyLogger"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot restart same "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v0, :cond_4

    const-string v0, "The first log start event must be LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-wide/16 v5, 0x0

    if-ne p1, v0, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_5

    const-string v0, "Cannot start LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC event after LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC starts"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-ne p1, v4, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_6

    const-string v0, "Cannot start LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC event after LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC starts"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v2

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_7
    return-void
.end method

.method public final logWorkspaceLoadStartTime(J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-object p0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->cardinality:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->workspaceLoadStartTime:J

    return-void
.end method

.method public final setIsInTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/logging/StartupLatencyLogger;->isInTest:Z

    return-void
.end method
