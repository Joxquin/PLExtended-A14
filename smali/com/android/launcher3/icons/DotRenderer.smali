.class public final Lcom/android/launcher3/icons/DotRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackgroundWithShadow:Landroid/graphics/Bitmap;

.field private final mBitmapOffset:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mLeftDotPosition:[F

.field private final mRightDotPosition:[F


# direct methods
.method public constructor <init>(ILandroid/graphics/Path;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const v0, 0x3e6978d5    # 0.228f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    const/16 v1, 0x58

    iput v1, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, p1, v1

    const/high16 v3, 0x41c00000    # 24.0f

    div-float v3, v2, v3

    iput v3, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v2, v4

    iput v2, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    iput v2, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iget v5, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float p1, v3

    sub-float/2addr p1, v2

    invoke-virtual {v4, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    mul-int/lit8 v3, v3, 0x2

    sget-object p1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/d;

    new-instance p1, Landroid/graphics/Picture;

    invoke-direct {p1}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iput v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    const/16 p1, 0x64

    int-to-float p1, p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    invoke-static {p2, p1, v1}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    return-void
.end method

.method private static getPathPoint(Landroid/graphics/Path;FF)[F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    mul-float v1, p2, v0

    add-float/2addr v1, v0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget p2, p0, v1

    div-float/2addr p2, p1

    aput p2, p0, v1

    const/4 p2, 0x1

    aget v0, p0, p2

    div-float/2addr v0, p1

    aput v0, p0, p2

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .locals 7

    if-nez p2, :cond_0

    const-string p0, "DotRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    aget v3, v4, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x1

    aget v3, v4, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    sub-float v5, v2, v4

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v6, v0, v4

    sub-float/2addr v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v2, v3

    add-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget p2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    invoke-virtual {p1, v5, v5, p0, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
