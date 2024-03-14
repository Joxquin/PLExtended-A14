.class public interface abstract Lcom/android/launcher3/WorkspaceLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, -0xc9

    const/16 v1, -0xc8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    return-void
.end method


# virtual methods
.method public addInScreen(IIIIIILandroid/view/View;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    const/16 v8, -0x64

    const-string v9, "Launcher.Workspace"

    if-ne v1, v8, :cond_0

    .line 3
    invoke-interface {p0, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping child, screenId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 6
    :cond_0
    sget-object v8, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v8

    if-nez v8, :cond_a

    const/16 v8, -0x65

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v8, :cond_3

    const/16 v8, -0x67

    if-ne v1, v8, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 8
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 9
    :cond_2
    invoke-interface {p0, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    .line 11
    instance-of v2, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_4

    .line 12
    move-object v2, v7

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 13
    :cond_4
    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 14
    instance-of v8, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-nez v8, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 16
    invoke-virtual {v2, p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 18
    iput v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 19
    iput v6, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    goto :goto_3

    .line 20
    :cond_6
    :goto_2
    new-instance v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {v2, p3, v4, v5, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    :goto_3
    if-gez v5, :cond_7

    if-gez v6, :cond_7

    .line 21
    iput-boolean v11, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 22
    :cond_7
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 23
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v3

    .line 24
    instance-of v4, v7, Lcom/android/launcher3/folder/Folder;

    xor-int/2addr v4, v10

    const/4 v5, -0x1

    move-object p1, v1

    move-object/from16 p2, p7

    move p3, v5

    move/from16 p4, v3

    move-object/from16 p5, v2

    move/from16 p6, v4

    .line 25
    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add to item at ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_8
    invoke-virtual {v7, v11}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 28
    sget-object v1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Lcom/android/launcher3/touch/j;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 29
    instance-of v1, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_9

    .line 30
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-interface {p0, v1}, Lcom/android/launcher3/WorkspaceLayoutManager;->onAddDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_9
    return-void

    .line 31
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be extra empty screen: "

    .line 32
    invoke-static {v1, p2}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 9

    .line 1
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 2
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v4, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v5, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p0

    move-object v8, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(IIIIIILandroid/view/View;)V

    return-void
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 11

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_1

    const/16 v3, -0x67

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add predicted icon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to home screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Workspace"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    :goto_1
    move v6, v1

    move v7, v2

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, p0

    move-object v10, p1

    invoke-interface/range {v3 .. v10}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(IIIIIILandroid/view/View;)V

    return-void
.end method

.method public abstract getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
.end method

.method public abstract getHotseat()Lcom/android/launcher3/Hotseat;
.end method

.method public abstract getScreenWithId(I)Lcom/android/launcher3/CellLayout;
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0

    return-void
.end method
