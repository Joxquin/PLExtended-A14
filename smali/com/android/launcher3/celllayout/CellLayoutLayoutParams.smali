.class public final Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public dropped:Z

.field public isLockedToGrid:Z

.field private mCellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTmpCellX:I

.field private mTmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 14
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    .line 15
    iput p2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    .line 16
    iput p3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 17
    iput p4, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 4
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 5
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 9
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 10
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public final getCellX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    return p0
.end method

.method public final getCellY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return p0
.end method

.method public final getTmpCellX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    return p0
.end method

.method public final getTmpCellY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    return p0
.end method

.method public final setCellX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    return-void
.end method

.method public final setCellXY(Landroid/graphics/Point;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return-void
.end method

.method public final setCellY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return-void
.end method

.method public final setTmpCellX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    return-void
.end method

.method public final setTmpCellY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    return-void
.end method

.method public final setup(IIZIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-boolean v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    :goto_1
    if-eqz p3, :cond_2

    sub-int/2addr p4, v3

    sub-int v3, p4, v0

    :cond_2
    add-int/lit8 p3, v0, -0x1

    iget p4, p7, Landroid/graphics/Point;->x:I

    mul-int/2addr p3, p4

    add-int/lit8 p4, v1, -0x1

    iget v4, p7, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, v4

    mul-int/2addr v0, p1

    add-int/2addr v0, p3

    int-to-float p3, v0

    div-float/2addr p3, p5

    mul-int/2addr v1, p2

    add-int/2addr v1, p4

    int-to-float p4, v1

    div-float/2addr p4, p6

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p4

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v3

    add-int/2addr p1, p5

    iget p5, p7, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p5

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    mul-int/2addr p2, v2

    add-int/2addr p2, p4

    iget p1, p7, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    if-eqz p8, :cond_3

    iget p1, p8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget p2, p8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p5, p8, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p5

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p1, p8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
