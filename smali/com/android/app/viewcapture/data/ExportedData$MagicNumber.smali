.class public final enum Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

.field public static final enum e:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

.field public static final enum f:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

.field public static final synthetic g:[Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->d:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    new-instance v1, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    const/4 v2, 0x1

    const v3, 0x65906578

    const-string v4, "MAGIC_NUMBER_L"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->e:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    new-instance v2, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    const/4 v3, 0x2

    const v4, 0x68658273

    const-string v5, "MAGIC_NUMBER_H"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->f:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    filled-new-array {v0, v1, v2}, [Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    move-result-object v0

    sput-object v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->g:[Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;
    .locals 1

    const-class v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    return-object p0
.end method

.method public static values()[Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;
    .locals 1

    sget-object v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->g:[Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-virtual {v0}, [Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->value:I

    return p0
.end method
