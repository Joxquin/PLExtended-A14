.class public final Lcom/google/android/apps/nexuslauncher/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Z


# instance fields
.field public final a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

.field public b:J

.field public c:Lcom/android/launcher3/logging/InstanceId;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "ImeLatencyLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/logging/a;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->latencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->c:Lcom/android/launcher3/logging/InstanceId;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "ImeLatencyLogger cannot log "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when instanceId is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImeLatencyLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    invoke-interface {v0, p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->c:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->g:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->a()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-boolean p0, Lcom/google/android/apps/nexuslauncher/logging/a;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImeLatencyLogging"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->b:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/apps/nexuslauncher/logging/a;->a(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method
