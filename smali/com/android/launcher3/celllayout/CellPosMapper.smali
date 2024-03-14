.class public Lcom/android/launcher3/celllayout/CellPosMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper;

    invoke-direct {v0}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>()V

    sput-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 2

    new-instance p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object p0
.end method

.method public mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 0

    new-instance p0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object p0
.end method
