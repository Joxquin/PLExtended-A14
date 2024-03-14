.class public final Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backgroundHeight:F

.field private bottomMargin:I

.field private final circle:Landroid/graphics/Path;

.field private final fullLeftCornerRadius:F

.field private final fullRightCornerRadius:F

.field private final invertedLeftCornerPath:Landroid/graphics/Path;

.field private final invertedRightCornerPath:Landroid/graphics/Path;

.field private final isInSetup:Z

.field private final isTransientTaskbar:Z

.field private keyShadowDistance:F

.field private final lastDrawnTransientRect:Landroid/graphics/RectF;

.field private leftCornerRadius:F

.field private maxBackgroundHeight:F

.field private final paint:Landroid/graphics/Paint;

.field private rightCornerRadius:F

.field private final shadowAlpha:F

.field private shadowBlur:F

.field private final square:Landroid/graphics/Path;

.field private final stashedHandleHeight:I

.field private stashedHandleWidth:I

.field private final transientBackgroundBounds:Landroid/graphics/Rect;

.field private translationYForStash:F

.field private translationYForSwipe:F

.field private widthInsetPercentage:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isInSetup:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->maxBackgroundHeight:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTransientTaskbarBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullLeftCornerRadius:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullRightCornerRadius:F

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    iput v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070539

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070538

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleHeight:I

    const v3, 0x7f060339

    invoke-virtual {p1, v3}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070550

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    const v1, 0x7f070555

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowBlur:F

    const v1, 0x7f070552

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->keyShadowDistance:F

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x424c0000    # 51.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41c80000    # 25.0f

    :goto_0
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setCornerRoundness(F)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isInSetup:Z

    if-nez v2, :cond_2

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->maxBackgroundHeight:F

    div-float/2addr v2, v3

    iget v4, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleHeight:I

    int-to-float v5, v4

    sget-object v6, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v3, v5, v2, v5}, Lw/f;->a(FFFF)F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    int-to-float v6, v6

    int-to-float v5, v5

    sub-float v10, v5, v6

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    sub-float v6, v5, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    div-float v11, v3, v10

    iget v12, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v2

    div-float v2, v13, v10

    mul-float/2addr v2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    iget v14, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    sub-int/2addr v12, v14

    int-to-float v12, v12

    add-float/2addr v12, v2

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForSwipe:F

    add-float/2addr v12, v2

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForStash:F

    add-float/2addr v12, v2

    int-to-float v2, v4

    div-float/2addr v2, v10

    sub-float/2addr v2, v9

    mul-float/2addr v2, v13

    add-float/2addr v2, v9

    neg-float v2, v2

    add-float/2addr v12, v2

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v13, v2

    const/4 v14, 0x0

    const/high16 v15, 0x437f0000    # 255.0f

    const/16 v16, 0x0

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowAlpha:F

    sget-object v18, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move/from16 v17, v2

    invoke-static/range {v13 .. v18}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowBlur:F

    iget v10, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->keyShadowDistance:F

    const/high16 v13, -0x1000000

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v13, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v2

    invoke-virtual {v8, v4, v9, v10, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    sub-float v3, v12, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-virtual {v2, v4, v3, v1, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->widthInsetPercentage:F

    mul-float/2addr v5, v0

    invoke-virtual {v2, v5, v9}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v7, v2, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    neg-float v1, v1

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sub-float/2addr v1, v2

    neg-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    invoke-virtual {v7, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getLastDrawnTransientRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final setBackgroundHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    return-void
.end method

.method public final setBackgroundHorizontalInsets(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->widthInsetPercentage:F

    return-void
.end method

.method public final setCornerRoundness(F)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullLeftCornerRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullRightCornerRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public final setTranslationYForStash(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForStash:F

    return-void
.end method

.method public final setTranslationYForSwipe(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForSwipe:F

    return-void
.end method

.method public final updateStashedHandleWidth(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    const-string v0, "dp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f07053c

    goto :goto_0

    :cond_0
    const p2, 0x7f070539

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    return-void
.end method
