.class public final enum Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum ATOMIC:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum CACHED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum COLD_DEVICE_REBOOTING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum COLD_USERWAITING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum CONTROLLED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum TIMEOUT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum WARM:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v1, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v2, "COLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v3, "HOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v3, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v4, "TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->TIMEOUT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v5, "FAIL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v5, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v6, "COLD_USERWAITING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_USERWAITING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v6, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v7, "ATOMIC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->ATOMIC:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v7, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v8, "CONTROLLED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CONTROLLED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v8, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v9, "CACHED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CACHED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v9, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v10, "COLD_DEVICE_REBOOTING"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_DEVICE_REBOOTING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    new-instance v10, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v11, "WARM"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->WARM:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    filled-new-array/range {v0 .. v10}, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    .locals 1

    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->mId:I

    return p0
.end method
