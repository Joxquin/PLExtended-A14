.class public final enum Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# static fields
.field public static final enum d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

.field public static final synthetic e:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    filled-new-array {v0}, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->e:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "LAUNCHER_IMPRESSION_SEARCH_RESULTS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x4d9

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->e:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherImpressionEvent;->mId:I

    return p0
.end method
