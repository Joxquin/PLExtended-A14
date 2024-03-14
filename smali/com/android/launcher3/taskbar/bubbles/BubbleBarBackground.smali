.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private arrowPositionX:F

.field private final backgroundHeight:F

.field private keyShadowDistance:F

.field private final paint:Landroid/graphics/Paint;

.field private final pointerSize:F

.field private final shadowAlpha:F

.field private shadowBlur:F

.field private showingArrow:Z

.field private width:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;F)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->backgroundHeight:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    const v0, 0x7f060339

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070555

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    const v2, 0x7f070552

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    const v2, 0x7f0700c3

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->pointerSize:F

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x424c0000    # 51.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41c80000    # 25.0f

    :goto_0
    iput v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowAlpha:F

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    sget v3, LA1/b;->e:I

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, p2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    new-instance v4, LA1/b;

    invoke-direct {v4, v3, p2, p2}, LA1/b;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    float-to-int p2, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p2, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowAlpha:F

    sget-object v6, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->backgroundHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->width:F

    sub-float v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v9, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showingArrow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->pointerSize:F

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getArrowPositionX()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setArrowAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setArrowPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->width:F

    return-void
.end method

.method public final showArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showingArrow:Z

    return-void
.end method
