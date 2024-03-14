.class public Lcom/android/launcher3/celllayout/ReorderAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCellLayout:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    move-object v0, p0

    move-object/from16 v1, p7

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->dropInPlaceSolution(Landroid/view/View;IIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v12

    iget-object v0, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v9, 0x1

    new-instance v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    mul-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-boolean v0, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_2

    return-object v12

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 14

    move-object v0, p0

    new-instance v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v2, 0x2

    new-array v13, v2, [I

    new-array v2, v2, [I

    iget-object v3, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v10, 0x0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v11, v13

    move-object v12, v2

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    const/4 v3, 0x0

    aget v4, v13, v3

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    aget v5, v13, v4

    if-ltz v5, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    aget v0, v13, v3

    iput v0, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v0, v13, v4

    iput v0, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v0, v2, v3

    iput v0, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    aget v0, v2, v4

    iput v0, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput-boolean v4, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    :goto_0
    return-object v1
.end method

.method public dropInPlaceSolution(Landroid/view/View;IIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    aput p2, v0, p3

    aput p2, v0, v1

    :cond_0
    new-instance p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    aget p0, v0, v1

    if-eq p0, p2, :cond_1

    move v1, p3

    :cond_1
    iput-boolean v1, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez v1, :cond_2

    return-object p1

    :cond_2
    iput p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget p0, v0, p3

    iput p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput p4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput p5, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    return-object p1
.end method

.method public findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p10

    iget-object v1, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    iget-object v1, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const/4 v1, 0x2

    new-array v10, v1, [I

    iget-object v5, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object v1

    iget-object v5, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    aget v6, v1, v2

    const/4 v3, 0x1

    aget v7, v1, v3

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 v3, p3

    if-le v13, v3, :cond_1

    if-eq v4, v14, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    add-int/lit8 v5, v13, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_1
    if-le v14, v4, :cond_2

    add-int/lit8 v6, v14, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_2
    iput-boolean v2, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    aget v0, v1, v2

    iput v0, v15, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v0, v1, v3

    iput v0, v15, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v13, v15, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v14, v15, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :goto_0
    return-object v15
.end method
