.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/W;

.field public final synthetic e:J

.field public final synthetic f:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public final synthetic g:I

.field public final synthetic h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/W;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->G:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->d:Lcom/google/android/apps/nexuslauncher/allapps/W;

    iput-wide p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->e:J

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->f:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->g:I

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->d:Lcom/google/android/apps/nexuslauncher/allapps/W;

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->e:J

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->f:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->g:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V;->h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v5}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/W;->a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    invoke-interface {v6, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->j:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v1

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/W;->d:I

    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withSubEventType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method
