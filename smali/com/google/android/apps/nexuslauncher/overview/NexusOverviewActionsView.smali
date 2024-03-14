.class public Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;
.super Lcom/android/quickstep/views/OverviewActionsView;
.source "SourceFile"


# static fields
.field public static final h:Landroid/view/animation/Interpolator;


# instance fields
.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

.field public g:Landroid/widget/Button;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->h:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0061

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    check-cast p0, LV1/i;

    invoke-interface {p0}, LV1/i;->a()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a00e4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    check-cast p0, LV1/i;

    invoke-interface {p0}, LV1/i;->i()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/quickstep/views/OverviewActionsView;->onFinishInflate()V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->d:Landroid/view/View;

    const v0, 0x7f0a02ed

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08026f

    goto :goto_0

    :cond_0
    const v0, 0x7f0802ab

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMaxWidth(I)V

    const v1, 0x7f0a0060

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->setInsets(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public final updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget-object v2, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateDisabledFlags(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    iget p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    const p1, 0x7f0a02ed

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method
