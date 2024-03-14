.class public Lcom/android/quickstep/interaction/RootSandboxLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field final mColorOnSurfaceBack:I

.field final mColorOnSurfaceHome:I

.field final mColorOnSurfaceOverview:I

.field final mColorSecondaryBack:I

.field final mColorSecondaryHome:I

.field final mColorSecondaryOverview:I

.field final mColorSurfaceBack:I

.field final mColorSurfaceContainer:I

.field final mColorSurfaceHome:I

.field final mColorSurfaceOverview:I

.field private mDoneButton:Landroid/view/View;

.field private mFeedbackView:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;

.field private final mTempExclusionBounds:Landroid/graphics/Rect;

.field private final mTempInclusionBounds:Landroid/graphics/Rect;

.field private final mTempStepIndicatorBounds:Landroid/graphics/Rect;

.field private mTutorialStepView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempStepIndicatorBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempInclusionBounds:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempExclusionBounds:Landroid/graphics/Rect;

    .line 8
    sget-object v0, Lcom/android/launcher3/R$styleable;->RootSandboxLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    const/high16 p3, -0x1000000

    const/4 p4, -0x1

    if-eqz p1, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    if-eqz p1, :cond_1

    move p3, p4

    :cond_1
    const/4 p1, 0x7

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceContainer:I

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceHome:I

    const/16 p1, 0x8

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceHome:I

    const/4 p1, 0x4

    const p4, -0x777778

    .line 13
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryHome:I

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceBack:I

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceBack:I

    const/4 p1, 0x3

    .line 16
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryBack:I

    const/4 p1, 0x2

    .line 17
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceOverview:I

    const/16 p1, 0x9

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceOverview:I

    const/4 p1, 0x5

    .line 19
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryOverview:I

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/RootSandboxLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/quickstep/interaction/RootSandboxLayout;->lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mSkipButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mDoneButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mSkipButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mSkipButton:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mDoneButton:Landroid/view/View;

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    if-nez p1, :cond_4

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    move p2, p3

    :cond_5
    :goto_2
    invoke-direct {p0, p5, p2}, Lcom/android/quickstep/interaction/RootSandboxLayout;->updateTutorialStepViewTranslation(Landroid/view/View;Z)V

    return-void
.end method

.method private updateTutorialStepViewTranslation(Landroid/view/View;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempStepIndicatorBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempInclusionBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempExclusionBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempStepIndicatorBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempInclusionBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTempExclusionBounds:Landroid/graphics/Rect;

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    sget-object v5, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    if-eqz p2, :cond_4

    const/4 v5, 0x1

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget p2, v1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFullscreenHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mTutorialStepView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mSkipButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mDoneButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mFeedbackView:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/interaction/p;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/p;-><init>(Lcom/android/quickstep/interaction/RootSandboxLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const v2, 0x7f0a0180

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/fragment/app/K;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/fragment/app/K;

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    check-cast v1, Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a Fragment set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
