.class public final Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;
.super Lcom/android/launcher3/celllayout/CellPosMapper;
.source "SourceFile"


# instance fields
.field private final mColumnCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    return-void
.end method


# virtual methods
.method public final mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 3

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    add-int/2addr v2, p0

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v2, p0, v0}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object v1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p0

    return-object p0
.end method

.method public final mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 1

    const/16 v0, -0x64

    if-ne p4, v0, :cond_0

    rem-int/lit8 p4, p3, 0x2

    if-nez p4, :cond_0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    if-lt p1, p0, :cond_0

    new-instance p4, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    sub-int/2addr p1, p0

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p4, p1, p2, p3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object p4

    :cond_0
    new-instance p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object p0
.end method
