.class public Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;


# static fields
.field public static final s:[I


# instance fields
.field public final d:Landroid/animation/ValueAnimator;

.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final f:Lcom/android/launcher3/views/ActivityContext;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

.field public j:Landroid/widget/ImageButton;

.field public final k:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

.field public l:Z

.field public m:F

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 4
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/graphics/Rect;

    .line 6
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:F

    const-string p3, ""

    .line 8
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 10
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    .line 11
    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    .line 12
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    const-wide/16 v0, 0x12c

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p3, Ly0/e;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance p1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300ee

    const v3, 0x7f0802ad

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->e:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/r;

    invoke-direct {v5, p0}, Lcom/google/android/apps/nexuslauncher/allapps/r;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->setBackgroundVisibility(FZ)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/s;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    const v1, 0x7f08029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1301be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1301bd

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final clearSearchResult()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->clearSearchResult()V

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->p:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setQueryLength$1(I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->p:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q:I

    return-void
.end method

.method public final getBackgroundVisibility()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:Z

    return p0
.end method

.method public final getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    return-object p0
.end method

.method public final initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/q;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/q;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->v:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->e:Lcom/android/launcher3/search/SearchAlgorithm;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->f:Lcom/android/launcher3/search/SearchCallback;

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->p:Lcom/google/android/apps/nexuslauncher/allapps/X0;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;)V

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->w:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:F

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x0

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    :cond_3
    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03b4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/s;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;I)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;->d:Ljava/lang/Runnable;

    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/t;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/t;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->q:Ljava/util/function/Consumer;

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/u;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/u;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_0
    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->p:I

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->p:I

    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q:I

    if-le v1, v0, :cond_3

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q:I

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->H(Ljava/util/ArrayList;)V

    :cond_4
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:Ljava/lang/String;

    return-void
.end method

.method public final onTranslationEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n:Z

    return-void
.end method

.method public final onTranslationStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n:Z

    return-void
.end method

.method public final resetSearch()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->clearSearchResult()V

    return-void
.end method

.method public final setBackgroundVisibility(FZ)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:Z

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:F

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:Z

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:F

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    :cond_1
    int-to-float v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_2

    const p1, 0x7f0700b2

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const v2, 0x7f070451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
