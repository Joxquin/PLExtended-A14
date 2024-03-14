.class public Lcom/android/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blurSizeOutline:I

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    return-void
.end method

.method public static a(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, p1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/DraggableView;->prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v3

    :try_start_0
    invoke-interface {v2, v0}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v2, p0, 0x2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-int/lit8 p0, p0, 0x2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p2, v2, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0

    :cond_1
    :goto_1
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public createDrawable()Landroid/graphics/drawable/Drawable;
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    instance-of v2, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/dragndrop/DraggableView;

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_0
    instance-of v4, v0, Lcom/android/launcher3/BubbleTextView;

    iget v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIconDisplay()I

    move-result v4

    const/16 v6, 0x9

    if-ne v4, v6, :cond_2

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v7

    int-to-float p0, v5

    add-int/2addr v2, v5

    int-to-float v0, v2

    div-float/2addr p0, v0

    int-to-float v0, v5

    add-int/2addr v3, v5

    int-to-float v1, v3

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, p0, v2

    div-float v11, v0, v2

    move-object v6, v1

    move v8, v10

    move v9, v11

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    return-object v1

    :cond_2
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->noteNewBitmapCreated()V

    new-instance v4, Landroid/graphics/Picture;

    invoke-direct {v4}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->a(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    .line 2
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v1

    .line 3
    instance-of v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v2

    div-float/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 5
    aget v3, p2, v2

    int-to-float v3, v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, v5

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    const/4 v2, 0x1

    .line 8
    aget v3, p2, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return v1
.end method

.method public final getScaleAndPosition(Landroid/view/View;[I)F
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    .line 10
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v1

    .line 11
    instance-of v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 12
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v2

    div-float/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 13
    aget v3, p2, v2

    int-to-float v3, v3

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, v5

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 15
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    const/4 v2, 0x1

    .line 16
    aget v3, p2, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return v1
.end method
