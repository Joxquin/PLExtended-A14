.class public Lcom/android/quickstep/views/TaskThumbnailView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;

.field public static final SPLASH_ALPHA:Landroid/util/Property;

.field public static final SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

.field public static final SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

.field private static final TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mClearPaint:Landroid/graphics/Paint;

.field private mDimAlpha:F

.field private final mDimColor:I

.field private final mDimmingPaintAfterClearing:Landroid/graphics/Paint;

.field private mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

.field private mOverlayEnabled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mShowSplashForSplitSelection:Z

.field private mSplashAlpha:I

.field private final mSplashBackgroundPaint:Landroid/graphics/Paint;

.field private mSplashView:Landroid/widget/ImageView;

.field private mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mSplitSelectTranslateX:F

.field private mSplitSelectTranslateY:F

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/views/P;

    invoke-direct {v1}, Lcom/android/quickstep/views/P;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$1;

    const-string v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->DIM_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$2;

    const-string v1, "splashAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->SPLASH_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$3;

    const-string v1, "splitSelectTranslateX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$4;

    const-string v1, "splitSelectTranslateY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashBackgroundPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClearPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    .line 9
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    .line 10
    new-instance v4, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-direct {v4}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;-><init>()V

    iput-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    const/4 v4, 0x0

    .line 11
    iput v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/4 v4, 0x0

    .line 12
    iput v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashAlpha:I

    .line 13
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p2, -0x1

    .line 14
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 18
    sget-object p2, Lcom/android/quickstep/views/TaskThumbnailView;->TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 19
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    .line 20
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/views/TaskThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    return p0
.end method

.method private applyTranslateX()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateX:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private applyTranslateY()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateY:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/views/TaskThumbnailView;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashAlpha:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/views/TaskThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateX:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/views/TaskThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateY:F

    return p0
.end method

.method private getColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(FI)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method private isThumbnailAspectRatioDifferentFromThumbnailData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    const p0, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRelativePercentDifferenceGreaterThan(FFF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isThumbnailRotationDifferentFromTask()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    sub-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    if-eq v0, p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    return v1
.end method

.method private refresh(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 4
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 5
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 9
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 10
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 12
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    return-void
.end method

.method private refreshOverlay()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->isOrientationChanged()Z

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    :goto_0
    return-void
.end method

.method private updateSplashView(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v6, v4

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v1

    div-float v1, v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v4

    div-float v4, v2, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v2

    :goto_2
    mul-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v4

    div-float v4, v2, v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v8

    div-float/2addr v2, v8

    mul-float/2addr v2, v1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v4, v2, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashView:Landroid/widget/ImageView;

    return-void

    :cond_5
    :goto_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashView:Landroid/widget/ImageView;

    return-void
.end method

.method private updateThumbnailMatrix()V
    .locals 14

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->setOrientationChanged(Z)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v13, v3

    goto :goto_0

    :cond_0
    move v13, v2

    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v9, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iget-boolean v11, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual/range {v3 .. v13}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IIIIIZIZ)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->updateCurrentFullscreenParams(Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateThumbnailPaintFilter()V
    .locals 4

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    int-to-float v1, v1

    const/high16 v3, -0x1000000

    invoke-static {v3, v2, v1}, LE/a;->d(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public applySplitSelectTranslateX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->applyTranslateX()V

    return-void
.end method

.method public applySplitSelectTranslateY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->applyTranslateY()V

    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/high16 v0, -0x1000000

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    or-int/2addr v0, p1

    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->updateSplashView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V
    .locals 14

    move-object v0, p0

    move/from16 v9, p4

    move/from16 v10, p5

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->showScreenshot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v8, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mClearPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    add-float v12, p3, v11

    sub-float v5, v10, v11

    iget-object v8, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v13

    :goto_1
    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v8, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->shouldShowSplashView()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mShowSplashForSplitSelection:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float v1, p6, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float v2, p6, v2

    move v6, v1

    move v7, v2

    goto :goto_2

    :cond_4
    move/from16 v6, p6

    move v7, v6

    :goto_2
    add-float v4, v9, v11

    add-float v5, v10, v11

    iget-object v8, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move/from16 v2, p2

    float-to-int v2, v2

    float-to-int v3, v12

    float-to-int v4, v9

    float-to-int v5, v10

    sub-int/2addr v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashView:Landroid/widget/ImageView;

    move-object v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public getDimAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    return p0
.end method

.method public getPreviewPositionHelper()Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    return-object p0
.end method

.method public getScaledInsets()Landroid/graphics/Insets;
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_0

    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-static {v1, v1, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    :goto_1
    or-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskOverlayFactory()Lcom/android/quickstep/TaskOverlayFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskOverlayFactory;->createOverlay(Lcom/android/quickstep/views/TaskThumbnailView;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    return-object p0
.end method

.method public getTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public isRealSnapshot()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v6, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/views/TaskThumbnailView;->drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->updateSplashView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh(Z)V

    return-void
.end method

.method public refreshSplashView()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateSplashView(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetViewTransforms()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplitSelectTranslateY:F

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    :cond_0
    return-void
.end method

.method public setShowSplashForSplitSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mShowSplashForSplitSelection:Z

    return-void
.end method

.method public setSplashAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashAlpha:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mSplashAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v3, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->updateSplashView(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p3, :cond_4

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh(Z)V

    :cond_4
    return-void
.end method

.method public shouldShowSplashView()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->isThumbnailAspectRatioDifferentFromThumbnailData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->isThumbnailRotationDifferentFromTask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mShowSplashForSplitSelection:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
