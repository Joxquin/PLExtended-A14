.class public final Lcom/android/launcher3/CellLayout$CellInfo;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "SourceFile"


# instance fields
.field public final cell:Landroid/view/View;

.field final container:I

.field final screenId:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget p1, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cell[view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
