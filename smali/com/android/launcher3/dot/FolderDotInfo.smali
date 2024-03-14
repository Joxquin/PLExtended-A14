.class public final Lcom/android/launcher3/dot/FolderDotInfo;
.super Lcom/android/launcher3/dot/DotInfo;
.source "SourceFile"


# instance fields
.field private mNumNotifications:I


# virtual methods
.method public final addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    const/4 v0, 0x0

    const/16 v1, 0x3e7

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    return-void
.end method

.method public final getNotificationCount()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    return p0
.end method

.method public final hasDot()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation

    iget p0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final subtractDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    const/4 p1, 0x0

    const/16 v1, 0x3e7

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    return-void
.end method
