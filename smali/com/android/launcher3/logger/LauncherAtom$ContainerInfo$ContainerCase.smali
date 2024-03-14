.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v4, "HOTSEAT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v4, "FOLDER"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v5, "ALL_APPS_CONTAINER"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v5, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v6, "WIDGETS_CONTAINER"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v7, "PREDICTION_CONTAINER"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v7, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v8, "SEARCH_RESULT_CONTAINER"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v8, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v9, "SHORTCUTS_CONTAINER"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v9, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v10, "SETTINGS_CONTAINER"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v10, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v11, "PREDICTED_HOTSEAT_CONTAINER"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v11, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v12, "TASK_SWITCHER_CONTAINER"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v12, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v13, "TASK_BAR_CONTAINER"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v14, "WALLPAPERS_CONTAINER"

    const/16 v2, 0xd

    invoke-direct {v13, v14, v15, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v14, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v15, "EXTENDED_CONTAINERS"

    move-object/from16 v16, v13

    const/16 v13, 0x14

    invoke-direct {v14, v15, v2, v13}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    new-instance v15, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const-string v2, "CONTAINER_NOT_SET"

    const/16 v13, 0xe

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-direct {v15, v2, v13, v14}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->value:I

    return p0
.end method
