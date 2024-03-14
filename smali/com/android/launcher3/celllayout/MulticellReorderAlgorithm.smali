.class public final Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;
.super Lcom/android/launcher3/celllayout/ReorderAlgorithm;
.source "SourceFile"


# instance fields
.field private final mSeam:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->dropInPlaceSolution(Landroid/view/View;IIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-super/range {p0 .. p10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/celllayout/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/celllayout/a;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget v0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le v0, p0, :cond_0

    iget p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iput p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    return-void
.end method


# virtual methods
.method public final closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 9

    new-instance v8, LH0/b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, LH0/b;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    return-object p1
.end method

.method public final dropInPlaceSolution(Landroid/view/View;IIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 8

    new-instance v7, LH0/a;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LH0/a;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    return-object p1
.end method

.method public final findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 14

    move-object v12, p0

    new-instance v13, LH0/c;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, LH0/c;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)V

    invoke-virtual {p0, v13}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    return-object v0
.end method

.method public final simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v1, Lcom/android/launcher3/MultipageCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/MultipageCellLayout;->isSeamWasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v3, Lcom/android/launcher3/MultipageCellLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    new-instance v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v4, v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    iput-boolean v8, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addViewInLayout(Landroid/view/View;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)V

    iget-object v5, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v9, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v10

    invoke-direct {v6, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    move v15, v8

    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v15, v9, :cond_2

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v10

    iget-object v11, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    if-lt v10, v11, :cond_1

    iget-boolean v10, v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v10, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    invoke-virtual {v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v12

    iget v13, v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v14, v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v10, 0x1

    move-object v9, v6

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(ZIIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v9, v6, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v5, v9, v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    new-instance v4, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v4, v3, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    new-instance v4, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    return-object v3
.end method
