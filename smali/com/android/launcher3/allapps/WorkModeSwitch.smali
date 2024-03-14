.class public Lcom/android/launcher3/allapps/WorkModeSwitch;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mFlags:I

.field private final mImeInsets:Landroid/graphics/Rect;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mScrollThreshold:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    const/high16 p1, 0x41200000    # 10.0f

    .line 6
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 8
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static a(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/4 v1, -0x3

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/4 v1, -0x3

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    return-void
.end method


# virtual methods
.method public final animateVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->extend()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LD0/t;

    invoke-direct {v1, p0, p1}, LD0/t;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    iget p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, LD0/t;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LD0/t;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final extend()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final getImeInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getScrollThreshold()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    return p0
.end method

.method public final isEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-static {p1, p0}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/core/view/a0;->o(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroidx/core/view/a0;->f(I)LE/b;

    move-result-object v0

    iget v1, v0, LE/b;->a:I

    iget v3, v0, LE/b;->b:I

    iget v4, v0, LE/b;->c:I

    iget v0, v0, LE/b;->d:I

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03fd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateStringFromCache()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    mul-int/lit8 p1, p2, 0x2

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(ILandroid/content/Context;)I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p3

    goto :goto_0

    :cond_0
    neg-int p1, p3

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method public final onTranslationEnd()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/4 v1, -0x5

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    return-void
.end method

.method public final onTranslationStart()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07058a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    add-int/2addr v0, p0

    :cond_0
    iget-boolean p0, v1, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez p0, :cond_1

    iget-boolean p0, v1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p0, :cond_1

    iget p0, v1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int/2addr v0, p0

    :cond_1
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public final shrink()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final updateStringFromCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final updateTranslationY()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationY(F)V

    return-void
.end method
