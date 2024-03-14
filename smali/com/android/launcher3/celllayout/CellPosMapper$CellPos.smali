.class public final Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cellX:I

.field public final cellY:I

.field public final screenId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput p2, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput p3, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v1, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v3, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v3, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget p1, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
