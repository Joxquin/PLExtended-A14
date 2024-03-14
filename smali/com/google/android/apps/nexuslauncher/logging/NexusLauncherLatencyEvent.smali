.class public final enum Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# static fields
.field public static final enum A:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum B:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum C:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum D:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum E:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum F:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum G:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum H:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final synthetic I:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum e:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum f:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum g:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum i:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum j:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum k:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum l:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum m:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum r:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum s:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum t:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum u:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum v:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum w:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum x:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum y:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

.field public static final enum z:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x3c7

    const-string v3, "LAUNCHER_LATENCY_SUGGEST_TOTAL_DURATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v2, 0x1

    const/16 v3, 0x3c8

    const-string v4, "LAUNCHER_LATENCY_SUGGEST_SEND_REQUEST_DURATION"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->e:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v3, 0x2

    const/16 v4, 0x3c9

    const-string v5, "LAUNCHER_LATENCY_SUGGEST_RECEIVE_RESPONSE_DURATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->f:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v4, 0x3

    const/16 v5, 0x3ca

    const-string v6, "LAUNCHER_LATENCY_SUGGEST_SERVER_DURATION"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->g:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v5, 0x4

    const/16 v6, 0x3d8

    const-string v7, "LAUNCHER_LATENCY_SUGGEST_GET_IMAGE_DURATION"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v6, 0x5

    const/16 v7, 0x4bd

    const-string v8, "LAUNCHER_LATENCY_ONDEVICE_CANCELLATION_DURATION"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->i:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v6, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v7, 0x6

    const/16 v8, 0x423

    const-string v9, "LAUNCHER_LATENCY_ONDEVICE_SEARCH_DURATION"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->j:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v7, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/4 v8, 0x7

    const/16 v9, 0x4d7

    const-string v10, "LAUNCHER_LATENCY_ONDEVICE_SEARCH_LATE_DURATION"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->k:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v8, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v9, 0x8

    const/16 v10, 0x424

    const-string v11, "LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->l:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v9, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v10, 0x9

    const/16 v11, 0x425

    const-string v12, "LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION_AFTER_ONDEVICE_TIMEOUT"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->m:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v10, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v11, 0xa

    const/16 v12, 0x439

    const-string v13, "LAUNCHER_LATENCY_SELECT_SUGGESTION_DURATION"

    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v11, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0xb

    const/16 v13, 0x43a

    const-string v14, "LAUNCHER_LATENCY_DELETE_SUGGESTION_DURATION"

    invoke-direct {v11, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v12, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v13, 0xc

    const/16 v14, 0x43b

    const-string v15, "LAUNCHER_LATENCY_REPORT_SUGGESTION_DURATION"

    invoke-direct {v12, v15, v13, v14}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v13, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v14, 0xd

    const/16 v15, 0x43c

    move-object/from16 v16, v12

    const-string v12, "LAUNCHER_LATENCY_SEARCH_GOOGLE_DURATION"

    invoke-direct {v13, v12, v14, v15}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0xe

    const/16 v15, 0x4be

    move-object/from16 v17, v13

    const-string v13, "LAUNCHER_LATENCY_SHOW_IME_READY_DURATION"

    invoke-direct {v14, v13, v12, v15}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->r:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0xf

    const/16 v13, 0x4bf

    move-object/from16 v18, v14

    const-string v14, "LAUNCHER_LATENCY_SHOW_IME_CANCELLED_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->s:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x10

    const/16 v13, 0x4c0

    move-object/from16 v19, v15

    const-string v15, "LAUNCHER_LATENCY_SHOW_IME_CANCELLED_INCREMENTAL_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->t:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x11

    const/16 v13, 0x4c1

    move-object/from16 v20, v14

    const-string v14, "LAUNCHER_LATENCY_SHOW_IME_ANIMATION_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->u:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x12

    const/16 v13, 0x4c2

    move-object/from16 v21, v15

    const-string v15, "LAUNCHER_LATENCY_HIDE_IME_READY_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->v:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x13

    const/16 v13, 0x4c3

    move-object/from16 v22, v14

    const-string v14, "LAUNCHER_LATENCY_HIDE_IME_CANCELLED_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->w:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x14

    const/16 v13, 0x4c4

    move-object/from16 v23, v15

    const-string v15, "LAUNCHER_LATENCY_HIDE_IME_CANCELLED_INCREMENTAL_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->x:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x15

    const/16 v13, 0x4c5

    move-object/from16 v24, v14

    const-string v14, "LAUNCHER_LATENCY_HIDE_IME_ANIMATION_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->y:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x16

    const/16 v13, 0x4c6

    move-object/from16 v25, v15

    const-string v15, "LAUNCHER_LATENCY_IME_READY_INVALID_HEIGHT_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->z:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x17

    const/16 v13, 0x4c7

    move-object/from16 v26, v14

    const-string v14, "LAUNCHER_LATENCY_IME_CANCELLED_INVALID_HEIGHT_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->A:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x18

    const/16 v13, 0x4c8

    move-object/from16 v27, v15

    const-string v15, "LAUNCHER_LATENCY_IME_FINISHED_INVALID_HEIGHT_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->B:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x19

    const/16 v13, 0x4da

    move-object/from16 v28, v14

    const-string v14, "LAUNCHER_LATENCY_IPC_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->C:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x1a

    const/16 v13, 0x523

    move-object/from16 v29, v15

    const-string v15, "LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_COMPLETIONS_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->D:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x1b

    const/16 v13, 0x531

    move-object/from16 v30, v14

    const-string v14, "LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_ASSET_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->E:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x1c

    const/16 v13, 0x5c4

    move-object/from16 v31, v15

    const-string v15, "LAUNCHER_LATENCY_GMS_PLAY_UNPACK_COMPLETIONS_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->F:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x1d

    const/16 v13, 0x548

    move-object/from16 v32, v14

    const-string v14, "LAUNCHER_LATENCY_QS_TILE_DURATION"

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->G:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    new-instance v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    const/16 v12, 0x1e

    const/16 v13, 0x56b

    move-object/from16 v33, v15

    const-string v15, "LAUNCHER_LATENCY_BLOBSTORE_FETCH_DURATION"

    invoke-direct {v14, v15, v12, v13}, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->H:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v14

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    filled-new-array/range {v0 .. v30}, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->I:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->I:[Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->mId:I

    return p0
.end method
