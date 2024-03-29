.class public final Lcom/android/launcher3/util/GridOccupancy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cells:[[Z

.field private final mCountX:I

.field private final mCountY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    return-void
.end method

.method public static findVacantCell$com$android$launcher3$util$AbsGridOccupancy([I[[ZIIII)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int v2, v1, p5

    if-gt v2, p3, :cond_6

    move v3, v0

    :goto_1
    add-int v4, v3, p4

    if-gt v4, p2, :cond_5

    aget-object v5, p1, v3

    aget-boolean v5, v5, v1

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_3

    move v8, v1

    :goto_3
    if-ge v8, v2, :cond_2

    if-eqz v5, :cond_0

    aget-object v5, p1, v7

    aget-boolean v5, v5, v8

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_4

    :cond_0
    move v5, v0

    :goto_4
    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    aput v3, p0, v0

    aput v1, p0, v6

    return v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(ZIIII)V

    return-void
.end method

.method public final copyTo(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final findVacantCell(II[I)Z
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    move-object v0, p3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell$com$android$launcher3$util$AbsGridOccupancy([I[[ZIIII)Z

    move-result p0

    return p0
.end method

.method public final isRegionVacant(IIII)Z
    .locals 4

    add-int/2addr p3, p1

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    add-int/2addr p4, p2

    sub-int/2addr p4, v0

    const/4 v1, 0x0

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge p3, v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-lt p4, v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-gt p1, p3, :cond_3

    move v2, p2

    :goto_1
    if-gt v2, p4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final markCells(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 6

    const/4 v1, 0x1

    .line 5
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(ZIIII)V

    return-void
.end method

.method public final markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V
    .locals 6

    .line 4
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v5, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(ZIIII)V

    return-void
.end method

.method public final markCells(ZIIII)V
    .locals 3

    if-ltz p2, :cond_2

    if-gez p3, :cond_0

    goto :goto_2

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p4

    if-ge v0, v1, :cond_2

    .line 1
    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v1, :cond_2

    move v1, p3

    :goto_1
    add-int v2, p3, p5

    if-ge v1, v2, :cond_1

    .line 2
    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, v0

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Grid: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
