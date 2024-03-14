.class public final enum Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

.field public static final enum e:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

.field public static final enum f:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

.field public static final synthetic g:[Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->d:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    new-instance v1, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    const-string v2, "PIXEL_LAUNCHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->e:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    new-instance v2, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    const-string v3, "AGA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->f:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->g:[Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;
    .locals 1

    const-class v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;
    .locals 1

    sget-object v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->g:[Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    invoke-virtual {v0}, [Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->value:I

    return p0
.end method
