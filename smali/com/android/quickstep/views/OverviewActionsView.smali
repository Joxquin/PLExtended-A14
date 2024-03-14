.class public Lcom/android/quickstep/views/OverviewActionsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field public static final DISABLED_NO_THUMBNAIL:I = 0x4

.field public static final DISABLED_ROTATED:I = 0x2

.field public static final DISABLED_SCROLLING:I = 0x1

.field public static final FLAG_IS_NOT_TABLET:I = 0x1

.field public static final FLAG_SINGLE_TASK:I = 0x1

.field public static final HIDDEN_ACTIONS_IN_MENU:I = 0x20

.field public static final HIDDEN_DESKTOP:I = 0x40

.field public static final HIDDEN_NON_ZERO_ROTATION:I = 0x1

.field public static final HIDDEN_NO_RECENTS:I = 0x4

.field public static final HIDDEN_NO_TASKS:I = 0x2

.field public static final HIDDEN_SPLIT_SCREEN:I = 0x8

.field public static final HIDDEN_SPLIT_SELECT_ACTIVE:I = 0x10

.field private static final INDEX_CONTENT_ALPHA:I = 0x0

.field private static final INDEX_FULLSCREEN_ALPHA:I = 0x2

.field private static final INDEX_HIDDEN_FLAGS_ALPHA:I = 0x3

.field private static final INDEX_SCROLL_ALPHA:I = 0x5

.field private static final INDEX_SHARE_TARGET_ALPHA:I = 0x4

.field private static final INDEX_VISIBILITY_ALPHA:I = 0x1

.field private static final NUM_ALPHAS:I = 0x6


# instance fields
.field protected mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

.field protected mDisabledFlags:I

.field protected mDp:Lcom/android/launcher3/DeviceProfile;

.field private mHiddenFlags:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mSplitButton:Landroid/widget/Button;

.field private mSplitButtonDisabledFlags:I

.field private mSplitButtonHiddenFlags:I

.field private final mTaskSize:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mTaskSize:Landroid/graphics/Rect;

    return-void
.end method

.method private getBottomMargin()I
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mTaskSize:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    sub-int/2addr v1, p0

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    sub-int/2addr v1, p0

    return v1
.end method

.method private updatePadding()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private updateSplitButtonEnabledState()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonDisabledFlags:I

    if-nez p0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getActionsButtonVisibility()I
    .locals 1

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getContentAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public getIndexScrollAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public getVisibilityAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0060

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {p0}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onScreenshot()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0064

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {p0}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onSplit()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const v1, 0x7f0a0045

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(ILandroid/view/View;I)V

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility()V

    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCallbacks(Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->updatePadding()V

    return-void
.end method

.method public updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0802b0

    goto :goto_0

    :cond_0
    const p1, 0x7f0802b1

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public updateDisabledFlags(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    :goto_0
    iget p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    and-int/lit8 p1, p1, -0x3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->updateSplitButtonEnabledState()V

    return-void
.end method

.method public updateHiddenFlags(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    :goto_0
    iget p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method

.method public updateSplitButtonDisabledFlags(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonDisabledFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonDisabledFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonDisabledFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonDisabledFlags:I

    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->updateSplitButtonEnabledState()V

    return-void
.end method

.method public updateSplitButtonHiddenFlags(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonHiddenFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonHiddenFlags:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonHiddenFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonHiddenFlags:I

    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButtonHiddenFlags:I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    const/16 v1, 0x8

    if-eqz p2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const p1, 0x7f0a0065

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V
    .locals 3

    iget-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f0a0045

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getBottomMargin()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method
