.class final Lcom/android/launcher3/folder/Folder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq p0, v0, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    goto :goto_1

    :cond_0
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    :goto_1
    return p0
.end method
