.class public final enum Lcom/airbnb/lottie/network/FileExtension;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/airbnb/lottie/network/FileExtension;

.field public static final enum e:Lcom/airbnb/lottie/network/FileExtension;

.field public static final synthetic f:[Lcom/airbnb/lottie/network/FileExtension;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/airbnb/lottie/network/FileExtension;

    const/4 v1, 0x0

    const-string v2, ".json"

    const-string v3, "JSON"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/lottie/network/FileExtension;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->d:Lcom/airbnb/lottie/network/FileExtension;

    new-instance v1, Lcom/airbnb/lottie/network/FileExtension;

    const/4 v2, 0x1

    const-string v3, ".zip"

    const-string v4, "ZIP"

    invoke-direct {v1, v2, v4, v3}, Lcom/airbnb/lottie/network/FileExtension;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/airbnb/lottie/network/FileExtension;->e:Lcom/airbnb/lottie/network/FileExtension;

    filled-new-array {v0, v1}, [Lcom/airbnb/lottie/network/FileExtension;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->f:[Lcom/airbnb/lottie/network/FileExtension;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/network/FileExtension;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/network/FileExtension;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/network/FileExtension;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->f:[Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/network/FileExtension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/network/FileExtension;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    return-object p0
.end method
