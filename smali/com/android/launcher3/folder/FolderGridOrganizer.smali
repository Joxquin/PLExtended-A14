.class public final Lcom/android/launcher3/folder/FolderGridOrganizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDisplayingUpperLeftQuadrant:Z

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mNumItemsInFolder:I

.field private final mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return-void
.end method


# virtual methods
.method public final getCountX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    return p0
.end method

.method public final getCountY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return p0
.end method

.method public final getMaxItemsPerPage()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return p0
.end method

.method public final getPosForRank(I)Landroid/graphics/Point;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int v1, p1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public final isItemInPreview(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x4

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int p1, p2, p0

    div-int/2addr p2, p0

    const/4 p0, 0x2

    if-ge p1, p0, :cond_3

    if-ge p2, p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public final previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    mul-int/2addr v1, v2

    mul-int v2, v1, p1

    add-int/2addr v1, v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final setContentSize(I)V
    .locals 8

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    iget v5, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget v6, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    if-lt p1, v4, :cond_0

    move v4, v2

    move v0, v5

    move v1, v6

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_9

    mul-int v4, v0, v1

    if-ge v4, p1, :cond_4

    if-le v0, v1, :cond_1

    if-ne v1, v6, :cond_2

    :cond_1
    if-ge v0, v5, :cond_2

    add-int/lit8 v4, v0, 0x1

    goto :goto_1

    :cond_2
    if-ge v1, v6, :cond_3

    add-int/lit8 v4, v1, 0x1

    move v7, v0

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_1
    move v7, v4

    move v4, v1

    :goto_2
    if-nez v4, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v1, -0x1

    mul-int v7, v4, v0

    if-lt v7, p1, :cond_5

    if-lt v1, v0, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v0, -0x1

    mul-int v7, v4, v1

    if-lt v7, p1, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v0

    :goto_3
    move v7, v4

    move v4, v1

    :cond_7
    :goto_4
    if-ne v7, v0, :cond_8

    if-ne v4, v1, :cond_8

    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v3

    :goto_5
    move v1, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_9
    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iput v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_a

    goto :goto_6

    :cond_a
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    :cond_b
    return-void
.end method

.method public final setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setContentSize(I)V

    return-void
.end method

.method public final updateRankAndPos(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget p1, p0, Landroid/graphics/Point;->x:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p0, 0x1

    return p0
.end method
