.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum g:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum h:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final synthetic i:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->d:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v3, "SUBTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v4, "INTERSECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->g:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v4, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v5, "EXCLUDE_INTERSECTIONS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->h:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->i:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->i:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
