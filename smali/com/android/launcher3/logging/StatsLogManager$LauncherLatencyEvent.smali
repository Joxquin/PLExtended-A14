.class public final enum Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

.field public static final enum LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x552

    const-string v3, "LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v2, 0x1

    const/16 v3, 0x553

    const-string v4, "LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v3, 0x2

    const/16 v4, 0x554

    const-string v5, "LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v4, 0x3

    const/16 v5, 0x556

    const-string v6, "LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const/4 v5, 0x4

    const/16 v6, 0x557

    const-string v7, "LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .locals 1

    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->mId:I

    return p0
.end method
