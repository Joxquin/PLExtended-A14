.class public final enum Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

.field public static final enum e:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

.field public static final synthetic f:[Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;


# instance fields
.field private final mTypeId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->d:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    new-instance v1, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    const-string v2, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    const-string v3, "FILL_WIDTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    const-string v4, "FILL_HEIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->e:Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    move-result-object v0

    sput-object v0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->f:[Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->mTypeId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;
    .locals 1

    const-class v0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    return-object p0
.end method

.method public static values()[Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;
    .locals 1

    sget-object v0, Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->f:[Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    invoke-virtual {v0}, [Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/search/SearchTargetExtras$ThumbnailCropType;

    return-object v0
.end method
