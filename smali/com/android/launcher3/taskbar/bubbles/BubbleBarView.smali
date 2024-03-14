.class public Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

.field private final mBubbleBarBounds:Landroid/graphics/Rect;

.field private final mBubbleElevation:F

.field private mDraggedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

.field private final mIconOverlapAmount:F

.field private final mIconSize:F

.field private final mIconSpacing:F

.field private mIsBarExpanded:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRelativePivotX:F

.field private mRelativePivotY:F

.field private mReorderRunnable:Ljava/lang/Runnable;

.field private mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUpdateSelectedBubbleAfterCollapse:Ljava/util/function/Consumer;

.field private final mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    .line 7
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mTempRect:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotX:F

    .line 9
    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotY:F

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 10
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    .line 11
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0700bf

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0700c1

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0700c0

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0700be

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleElevation:F

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 17
    new-instance p4, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p4, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;F)V

    iput-object p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    .line 19
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v0, 0xc8

    .line 20
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    new-instance p1, LZ0/e;

    invoke-direct {p1, p0, p2}, LZ0/e;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;I)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateChildrenRenderNodeProperties()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->doReorder(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private collapsedWidth()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    add-float/2addr v0, p0

    int-to-float p0, v2

    add-float/2addr v0, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    int-to-float v0, v2

    add-float/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    return-object p0
.end method

.method private doReorder(Ljava/util/List;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eqz v1, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateChildrenRenderNodeProperties()V

    :cond_2
    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mUpdateSelectedBubbleAfterCollapse:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateWidth()V

    return-void
.end method

.method private updateArrowForSelected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    if-nez v0, :cond_0

    const-string p0, "BubbleBarView"

    const-string p1, "trying to update selection arrow without a selected view!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->getArrowPositionX()F

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput v2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, LZ0/e;

    invoke-direct {v1, p0, p1}, LZ0/e;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateChildrenRenderNodeProperties()V
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v3, v5

    mul-float/2addr v3, v2

    int-to-float v2, v4

    add-float/2addr v3, v2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->collapsedWidth()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    move v8, v7

    :goto_1
    if-ge v8, v4, :cond_8

    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    int-to-float v10, v8

    iget v11, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v12, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v11, v12

    mul-float/2addr v11, v10

    const/4 v12, 0x0

    if-nez v8, :cond_1

    move v13, v12

    goto :goto_2

    :cond_1
    iget v13, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    :goto_2
    iget-boolean v14, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v14, :cond_4

    sub-float v10, v1, v3

    add-float/2addr v10, v11

    sub-float/2addr v10, v13

    mul-float/2addr v10, v0

    add-float/2addr v10, v13

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v0, v10

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mDraggedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    if-ne v9, v11, :cond_2

    iget v12, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleElevation:F

    :cond_2
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setZ(F)V

    :cond_3
    invoke-virtual {v9, v7, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->setBehindStack(ZZ)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_4

    :cond_4
    sub-float v14, v1, v2

    add-float/2addr v14, v13

    sub-float/2addr v11, v14

    mul-float/2addr v11, v0

    add-float/2addr v11, v14

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const/high16 v11, 0x40a00000    # 5.0f

    iget v13, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleElevation:F

    mul-float/2addr v13, v11

    sub-float/2addr v13, v10

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setZ(F)V

    if-lez v8, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    invoke-virtual {v9, v10, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->setBehindStack(ZZ)V

    cmpl-float v10, v0, v12

    if-nez v10, :cond_7

    const/4 v10, 0x1

    if-le v8, v10, :cond_6

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_4

    :cond_6
    if-ne v8, v10, :cond_7

    const/4 v10, 0x2

    if-ne v4, v10, :cond_7

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    iget v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    iget v7, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v8, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v8, v7

    mul-float/2addr v8, v4

    add-float/2addr v8, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v7, v4

    add-float/2addr v7, v8

    invoke-static {v3, v2, v0, v2}, Lw/f;->a(FFFF)F

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v4, :cond_9

    sub-float/2addr v1, v3

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    goto :goto_5

    :cond_9
    sub-float/2addr v1, v2

    add-float/2addr v1, v5

    invoke-static {v7, v1, v0, v1}, Lw/f;->a(FFFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    :goto_5
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setWidth(F)V

    return-void
.end method

.method private updateWidth()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v2, v4

    mul-float/2addr v2, v1

    int-to-float v1, v3

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->collapsedWidth()F

    move-result v2

    :goto_0
    float-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateWidth()V

    return-void
.end method

.method public final getBubbleBarBounds()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getRelativePivotX()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotX:F

    return p0
.end method

.method public final getRelativePivotY()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotY:F

    return p0
.end method

.method public final isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotX:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateChildrenRenderNodeProperties()V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateWidth()V

    return-void
.end method

.method public final reorder(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->doReorder(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, LZ0/f;

    invoke-direct {v0, p0, p1}, LZ0/f;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method public final setDraggedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mDraggedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateArrowForSelected(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRelativePivot(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Float;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotX:F

    invoke-static {p2, v0}, Ljava/lang/Float;->min(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Float;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mRelativePivotY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateArrowForSelected(Z)V

    return-void
.end method

.method public final setUpdateSelectedBubbleAfterCollapse(LZ0/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mUpdateSelectedBubbleAfterCollapse:Ljava/util/function/Consumer;

    return-void
.end method
