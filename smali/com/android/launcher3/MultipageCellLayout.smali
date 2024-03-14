.class public Lcom/android/launcher3/MultipageCellLayout;
.super Lcom/android/launcher3/CellLayout;
.source "SourceFile"


# instance fields
.field private final mLeftBackground:Landroid/graphics/drawable/Drawable;

.field private final mRightBackground:Landroid/graphics/drawable/Drawable;

.field private mSeamWasAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/MultipageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/MultipageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080208

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 13
    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Integer;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Boolean;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)[I
    .locals 0

    invoke-super/range {p0 .. p9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_0

    iget-boolean v5, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    new-instance v6, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v5

    iget v8, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v4, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v6, v7, v5, v8, v4}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-virtual {p1, v3, v6}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 11

    move-object v1, p0

    move v0, p1

    iget v2, v1, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v2, v0

    new-instance v9, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    invoke-direct {v9, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v10, Lcom/android/launcher3/t0;

    move-object/from16 v6, p5

    check-cast v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILcom/android/launcher3/widget/LauncherAppWidgetHostView;[IZ)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;
    .locals 1

    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object v0
.end method

.method public final findNearestArea(IIIIIIZ[I[I)[I
    .locals 13

    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-object v2, p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v12, Lcom/android/launcher3/u0;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/u0;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)V

    invoke-virtual {v0, v12}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 11

    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-object v2, p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v10, Lcom/android/launcher3/s0;

    const/4 v9, 0x0

    move-object v1, v10

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/s0;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[II)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public final getUnusedHorizontalSpace()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 11

    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-object v2, p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v10, Lcom/android/launcher3/s0;

    const/4 v9, 0x1

    move-object v1, v10

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/s0;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[II)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isSeamWasAdded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, -0x14

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 p3, p2, 0x2

    add-int/lit8 p3, p3, 0x14

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 13

    move v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    move-object v1, p0

    iget v2, v1, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move v3, v0

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-super/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public final setCountX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return-void
.end method

.method public final setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-void
.end method

.method public final setSeamWasAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    return-void
.end method

.method public final updateBgAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
