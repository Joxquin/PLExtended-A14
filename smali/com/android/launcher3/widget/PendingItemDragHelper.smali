.class public final Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

.field private final mEnforcedRoundedCornersForWidget:F

.field private mEstimatedCellSize:[I

.field private mRemoteViewsPreview:Landroid/widget/RemoteViews;

.field private mRemoteViewsPreviewScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    return-void
.end method


# virtual methods
.method public final setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    return-void
.end method

.method public final setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    iput p2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    return-void
.end method

.method public final startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    instance-of v10, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    if-eqz v10, :cond_8

    move-object v7, v9

    check-cast v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    int-to-float v10, v2

    const/high16 v14, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v14

    float-to-int v10, v10

    aget v8, v8, v13

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-array v10, v11, [I

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v14, :cond_0

    new-instance v14, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v14, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v15, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v11, -0x1

    invoke-virtual {v14, v11, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v11, v14, v9}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v9

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v11, v14, v9}, Landroid/appwidget/AppWidgetHostView;->measure(II)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9, v13}, Landroid/appwidget/AppWidgetHostView;->setClipChildren(Z)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9, v13}, Landroid/appwidget/AppWidgetHostView;->setClipToPadding(Z)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {v9, v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    :cond_0
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v9

    aput v9, v10, v13

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v9

    new-instance v11, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    invoke-direct {v11, v6}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v9, v11}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_1
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    const/4 v11, 0x0

    if-nez v9, :cond_3

    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance v14, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v14, v6}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iget-object v7, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v14, v7, v8, v10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v9, v7, v13}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v13

    :goto_0
    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    iget v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    invoke-direct {v7, v9, v8}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v9, v7

    goto :goto_1

    :cond_3
    move-object v9, v11

    :cond_4
    :goto_1
    aget v7, v10, v13

    if-ge v7, v2, :cond_6

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    if-le v2, v3, :cond_5

    mul-int/2addr v7, v3

    div-int/2addr v7, v2

    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_6
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getScaleX()F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v3

    iget-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v7

    int-to-float v3, v3

    mul-float v8, v3, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v7, v7

    mul-float v10, v7, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v2, v13

    mul-float/2addr v3, v2

    div-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v7, v2

    div-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    new-instance v7, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-direct {v7, v6, v5}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance v3, LJ0/i;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, LJ0/i;-><init>(I)V

    goto :goto_3

    :cond_8
    check-cast v9, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-virtual {v9, v6}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v6}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v3

    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v3, v2, v13}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v9, v2, v13}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v9}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v9}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    int-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f070572

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v7

    iput v11, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v7

    iput v11, v1, Landroid/graphics/Rect;->top:I

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    aget v14, v7, v13

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    iput v14, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v5

    iput v14, v11, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x1

    aget v7, v7, v14

    sub-int/2addr v7, v5

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v7, v14

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    iput v7, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iput v7, v11, Landroid/graphics/Rect;->bottom:I

    new-instance v3, LJ0/i;

    invoke-direct {v3, v13}, LJ0/i;-><init>(I)V

    :goto_3
    move/from16 v23, v2

    move-object/from16 v16, v3

    move-object v15, v9

    move-object/from16 v21, v11

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v3, v8

    mul-float v5, v23, v3

    sub-float/2addr v5, v3

    div-float/2addr v5, v12

    float-to-int v3, v5

    add-int v17, v2, v3

    iget v2, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    int-to-float v1, v10

    mul-float v3, v23, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v12

    float-to-int v1, v3

    add-int v18, v2, v1

    iget-object v1, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_9

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v14

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v19, p5

    move-object/from16 v20, v0

    move/from16 v22, v23

    move-object/from16 v24, p6

    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v14

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v19, p5

    move-object/from16 v20, v0

    move/from16 v22, v23

    move-object/from16 v24, p6

    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    :goto_4
    return-void
.end method
