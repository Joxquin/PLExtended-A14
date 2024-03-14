.class public final synthetic Lcom/android/launcher3/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/i;->a:I

    iput p2, p0, Lcom/android/launcher3/model/i;->b:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/model/i;->a:I

    iget p0, p0, Lcom/android/launcher3/model/i;->b:I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v1, v2, :cond_2

    const/16 v2, -0x65

    if-eq v1, v2, :cond_1

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v1, v0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v2, p0

    add-int/2addr v2, v1

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v2, p1

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr p1, v0

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v0, p0

    add-int/2addr v0, p1

    iget p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_0
    return p0
.end method
