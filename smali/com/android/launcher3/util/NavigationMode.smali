.class public final enum Lcom/android/launcher3/util/NavigationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/util/NavigationMode;

.field public static final enum NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

.field public static final enum THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

.field public static final enum TWO_BUTTONS:Lcom/android/launcher3/util/NavigationMode;


# instance fields
.field public final hasGestures:Z

.field public final launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public final resValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/android/launcher3/util/NavigationMode;

    const-string v1, "THREE_BUTTONS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_3_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v6, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    new-instance v0, Lcom/android/launcher3/util/NavigationMode;

    const-string v8, "TWO_BUTTONS"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget-object v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_2_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/util/NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v0, Lcom/android/launcher3/util/NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    new-instance v1, Lcom/android/launcher3/util/NavigationMode;

    const-string v14, "NO_BUTTON"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    sget-object v18, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/util/NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    filled-new-array {v6, v0, v1}, [Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/NavigationMode;->$VALUES:[Lcom/android/launcher3/util/NavigationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    iput p4, p0, Lcom/android/launcher3/util/NavigationMode;->resValue:I

    iput-object p5, p0, Lcom/android/launcher3/util/NavigationMode;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/util/NavigationMode;
    .locals 1

    const-class v0, Lcom/android/launcher3/util/NavigationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/NavigationMode;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/util/NavigationMode;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->$VALUES:[Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v0}, [Lcom/android/launcher3/util/NavigationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/NavigationMode;

    return-object v0
.end method
