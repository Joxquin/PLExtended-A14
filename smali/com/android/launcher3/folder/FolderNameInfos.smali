.class public final Lcom/android/launcher3/folder/FolderNameInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLabels:[Ljava/lang/CharSequence;

.field private final mScores:[Ljava/lang/Float;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/folder/n;

    invoke-direct {v0}, Lcom/android/launcher3/folder/n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/folder/o;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/o;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final getLabels()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getScores()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    return-object p0
.end method

.method public final hasPrimary()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    aget-object p0, p0, v1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hasSuggestions()Z
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput-object p2, v0, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    aput-object p3, p0, p1

    :cond_0
    return-void
.end method

.method public final setStatus(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "status=%s, labels=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
