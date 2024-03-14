.class public final Lcom/android/launcher3/folder/PreviewBackground;
.super Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
.source "SourceFile"


# static fields
.field protected static final ACCEPT_SCALE_FACTOR:F = 1.2f

.field protected static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field protected static final HOVER_ANIMATION_DURATION:I = 0x12c

.field protected static final HOVER_SCALE:F = 1.1f


# instance fields
.field basePreviewOffsetX:I

.field basePreviewOffsetY:I

.field private mBgColor:I

.field private mDotColor:I

.field private mDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field private mInvalidateDelegate:Landroid/view/View;

.field protected mIsAccepting:Z

.field protected mIsHovered:Z

.field protected mIsHoveredOrAnimating:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field mScale:F

.field protected mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mShadowAlpha:I

.field private mStrokeAlpha:I

.field previewSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-string v1, "strokeAlpha"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-string v1, "shadowAlpha"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return-void
.end method

.method public static e(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method


# virtual methods
.method public final animateScale(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    if-eqz p1, :cond_1

    const v1, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const v1, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    if-eq p1, v2, :cond_3

    sget-object v3, Ly0/e;->y:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v3, Ly0/e;->c:Landroid/view/animation/Interpolator;

    :goto_1
    if-eq p1, v2, :cond_4

    const/16 v2, 0x64

    goto :goto_2

    :cond_4
    const/16 v2, 0x12c

    :goto_2
    iput-boolean p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    cmpl-float p2, v0, v1

    if-nez p2, :cond_7

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    :cond_6
    iget-boolean p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    iput-boolean p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHoveredOrAnimating:Z

    return-void

    :cond_7
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/folder/x;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/launcher3/folder/x;-><init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/folder/PreviewBackground$5;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/PreviewBackground;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iput p3, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    const/4 p1, 0x1

    iget-boolean p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V

    return-void
.end method

.method public final animateToRest()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V

    return-void
.end method

.method public final drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result p0

    int-to-float v4, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawLeaveBehind(ILandroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v2

    iget p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr p1, v1

    int-to-float v4, p1

    iget p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr p1, v1

    int-to-float v5, p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result p1

    int-to-float v6, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    return-void
.end method

.method public final drawOverItem()V
    .locals 0

    return-void
.end method

.method public final drawUnderItem(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawingDelegated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBgColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return p0
.end method

.method public final getClipPath()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f900000    # 1.125f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float p0, p0

    sub-float/2addr p0, v2

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v2

    invoke-virtual {v2, v3, p0, v1, v0}, Lcom/android/launcher3/graphics/IconShape;->addToPath(FFFLandroid/graphics/Path;)V

    return-object v0
.end method

.method public final getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    return p0
.end method

.method public final getRadius()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getScaledRadius()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setInvalidateDelegate(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method public final setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/folder/FolderIcon;II)V
    .locals 2

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/R$styleable;->FolderIconPreview:[I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    const v0, 0x7f040432

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iget p3, p2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr p5, p2

    iput p5, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
