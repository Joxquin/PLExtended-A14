.class public final enum Lcom/airbnb/lottie/model/layer/Layer$LayerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final enum f:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public static final synthetic g:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    new-instance v1, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v2, "SOLID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v3, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    new-instance v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v4, "NULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v5, "SHAPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v6, "TEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->f:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    filled-new-array/range {v0 .. v6}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->g:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->g:[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method
