.class public Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;
.super LW1/p;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Landroid/text/TextWatcher;
.implements Lcom/google/android/apps/nexuslauncher/allapps/f3;


# static fields
.field public static final synthetic f0:I


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Landroid/view/View;

.field public D:Ljava/lang/String;

.field public E:I

.field public F:I

.field public G:Landroid/animation/Animator;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c0:Lcom/android/launcher3/views/OptionsPopupView;

.field public d0:Landroid/view/View;

.field public e0:I

.field public final j:Lcom/google/android/apps/nexuslauncher/allapps/d3;

.field public final k:Lcom/google/android/apps/nexuslauncher/allapps/Y2;

.field public final l:Lcom/google/android/apps/nexuslauncher/allapps/Z2;

.field public m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

.field public final n:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

.field public o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

.field public final p:Landroid/graphics/Rect;

.field public q:F

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:Landroid/view/View;

.field public w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/graphics/Rect;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, LW1/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/d3;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/d3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j:Lcom/google/android/apps/nexuslauncher/allapps/d3;

    .line 5
    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/Y2;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/Y2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k:Lcom/google/android/apps/nexuslauncher/allapps/Y2;

    .line 6
    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/Z2;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/Z2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l:Lcom/google/android/apps/nexuslauncher/allapps/Z2;

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p:Landroid/graphics/Rect;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u:F

    const-string p2, ""

    .line 9
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->D:Ljava/lang/String;

    .line 10
    sget-object p2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    .line 13
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    .line 14
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    .line 15
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->L:Z

    .line 16
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 17
    new-instance p1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300ee

    const v3, 0x7f0802ad

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->e:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/a3;

    invoke-direct {v5}, Lcom/google/android/apps/nexuslauncher/allapps/a3;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->n:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->O:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->Q:I

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070474

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->n(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    return-void
.end method

.method public static g(Landroid/util/IntProperty;III)Landroid/animation/PropertyValuesHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    const v0, 0x3e9b26ca

    invoke-static {v0, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Landroid/animation/Keyframe;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p0
.end method

.method public static i(ILandroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-gt v2, v1, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Theme is missing expected color "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") references a missing resource."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->M:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o()V

    :cond_2
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->M:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->c0:Lcom/android/launcher3/views/OptionsPopupView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->c0:Lcom/android/launcher3/views/OptionsPopupView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->prepareToFocusEditText(Z)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final clearSearchResult()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->M:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->clearSearchResult()V

    :goto_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->E:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

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

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->F:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setQueryLength$1(I)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->D:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->E:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->F:I

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, LW1/p;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x7f06001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s()V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Z)V

    return-void
.end method

.method public final getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    return-object p0
.end method

.method public final getTranslationY()F
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final h()Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-object p0
.end method

.method public final initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/q;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

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

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    move-result-object p0

    :goto_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final j()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->t:I

    return p0

    :cond_0
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginEnd()I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s:I

    :cond_2
    return v0
.end method

.method public final k()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s:I

    return p0

    :cond_0
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginStart()I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s:I

    :cond_2
    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/v1;->a(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->i:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o()V

    return-void
.end method

.method public final n(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V
    .locals 6

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->O:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->Q:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/V2;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/google/android/apps/nexuslauncher/allapps/V2;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/V2;->run()V

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->S:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-eqz v5, :cond_4

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/V2;->run()V

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->R:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/b3;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/b3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;Landroid/widget/RelativeLayout$LayoutParams;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/b3;->run()V

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->U:I

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-eqz p1, :cond_6

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0x10

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x15

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/b3;->run()V

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->T:I

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final o()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->M:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_PREPARED:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    if-eq v1, v2, :cond_2

    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    :cond_2
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->setTranslationY(F)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, LW1/p;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j:Lcom/google/android/apps/nexuslauncher/allapps/d3;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l:Lcom/google/android/apps/nexuslauncher/allapps/Z2;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->addOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k:Lcom/google/android/apps/nexuslauncher/allapps/Y2;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/V2;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/V2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, LW1/p;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j:Lcom/google/android/apps/nexuslauncher/allapps/d3;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l:Lcom/google/android/apps/nexuslauncher/allapps/Z2;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->removeOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k:Lcom/google/android/apps/nexuslauncher/allapps/Y2;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, LW1/p;->onFinishInflate()V

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    const v0, 0x7f0a03b4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/V2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/V2;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/W2;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/W2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->z:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/X2;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/allapps/X2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->A:Landroid/view/View;

    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    iput-object v0, p0, LW1/p;->g:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/W2;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/W2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->B:Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/W2;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/W2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->C:Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/W2;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/W2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0149

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->R:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070471

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->S:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->e0:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->h()Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Z)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v3, v0

    float-to-int v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->L:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onKeyboardAlphaChanged(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u:F

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p()V

    :cond_0
    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    .line 2
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move v0, p3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 6
    :goto_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->E:I

    if-nez v1, :cond_3

    if-lez p3, :cond_3

    .line 7
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 9
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    .line 10
    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    .line 11
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v6, 0x0

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    .line 17
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 20
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->n:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    .line 21
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 22
    :cond_2
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->E:I

    .line 23
    :cond_3
    iget p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->F:I

    if-le v0, p3, :cond_4

    .line 24
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->F:I

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 25
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->D:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 26
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p3, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->H(Ljava/util/ArrayList;)V

    .line 27
    :cond_5
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->D:Ljava/lang/String;

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTranslationEnd()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u:F

    return-void
.end method

.method public final onTranslationStart()V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginBottom()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r:I

    if-eq v2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    sget-object v2, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    move-result-object v0

    :goto_2
    if-eq v0, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    :cond_6
    if-eqz v1, :cond_7

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/U2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/U2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_7
    return-void
.end method

.method public final prepareToFocusEditText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->d0:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->e0:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->d0:Landroid/view/View;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->d0:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final r(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v5, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v4, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->f:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v3

    iget-object v4, v0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldFloatingSearchBarBePillWhenUnfocused()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-boolean v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-ne v3, v5, :cond_4

    iget-boolean v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-ne v4, v5, :cond_4

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k()I

    move-result v8

    if-ne v5, v8, :cond_4

    iget v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j()I

    move-result v8

    if-eq v5, v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_5

    iput-boolean v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    iput-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->u(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    :cond_5
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->G:Landroid/animation/Animator;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->G:Landroid/animation/Animator;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    move/from16 v3, p3

    :goto_5
    if-eqz v3, :cond_8

    new-instance v4, Lcom/android/launcher3/anim/AnimatedPropertySetter;

    invoke-direct {v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;-><init>()V

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    :goto_6
    sget-object v8, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    sget-object v9, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const/16 v11, 0xff

    if-ne v2, v8, :cond_9

    const/16 v12, 0x12c

    goto :goto_8

    :cond_9
    sget-object v12, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v12}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    const/16 v12, 0x1ef

    if-ne v2, v9, :cond_b

    const/16 v13, 0x32

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v13, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    sget-object v15, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    sget-object v6, Ly0/e;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14, v15, v11, v6}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v11

    int-to-long v14, v12

    invoke-virtual {v11, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    int-to-long v12, v13

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-boolean v11, v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v11, :cond_c

    iget-boolean v11, v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    if-eqz v11, :cond_c

    iget-boolean v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->L:Z

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v10, 0x10100a7

    const v12, 0x101009e

    filled-new-array {v10, v12}, [I

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    sget-object v11, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {v4, v10, v11, v7, v6}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v10, 0x32

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/c3;

    const/4 v10, 0x0

    invoke-direct {v6, v0, v10}, Lcom/google/android/apps/nexuslauncher/allapps/c3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {v4, v6}, Lcom/android/launcher3/anim/PropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_c
    if-eqz v3, :cond_10

    if-nez v5, :cond_d

    iget-boolean v5, v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    iget-boolean v6, v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    if-eq v5, v6, :cond_10

    :cond_d
    sget-object v5, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    sget-object v5, Ly0/e;->a:Landroid/view/animation/Interpolator;

    const-string v6, "interpolator"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/collections/EmptySet;->d:Lkotlin/collections/EmptySet;

    const-string v10, "excludedViews"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object/from16 v23, v8

    const/16 v8, 0x8

    if-eq v10, v8, :cond_e

    if-eq v11, v13, :cond_e

    if-eq v12, v7, :cond_e

    const/4 v10, 0x1

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    if-nez v10, :cond_f

    goto :goto_b

    :cond_f
    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    new-instance v7, Lcom/android/systemui/animation/w;

    move-object/from16 v16, v7

    move-wide/from16 v17, v14

    move-object/from16 v19, v5

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/animation/w;-><init>(JLandroid/view/animation/Interpolator;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/lang/Runnable;Z)V

    invoke-static {v0, v7, v6}, Lcom/android/systemui/animation/z;->b(Landroid/view/View;Lcom/android/systemui/animation/w;Ljava/util/Set;)V

    goto :goto_b

    :cond_10
    move-object/from16 v23, v8

    :goto_b
    iget-boolean v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    const/16 v6, 0xfa

    const/16 v10, 0x96

    if-eqz v5, :cond_11

    move v8, v6

    const/16 v5, 0x32

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_11
    if-ne v2, v9, :cond_12

    const/16 v5, 0x32

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    move v8, v10

    const/4 v7, 0x0

    :goto_d
    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->z:Landroid/widget/ImageView;

    sget-object v12, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v11, v7, v12}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v7

    int-to-long v13, v8

    invoke-virtual {v7, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    int-to-long v13, v5

    invoke-virtual {v7, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->t(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/android/launcher3/anim/PropertySetter;Z)V

    move-object/from16 v3, v23

    if-ne v2, v3, :cond_13

    iget-boolean v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-eqz v5, :cond_13

    iget-boolean v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-nez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_14

    const/16 v5, 0x32

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_14
    if-ne v2, v9, :cond_15

    const/16 v5, 0x32

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    :goto_f
    move v6, v10

    const/4 v7, 0x0

    :goto_10
    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->A:Landroid/view/View;

    invoke-virtual {v4, v8, v7, v12}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v7

    int-to-long v13, v6

    invoke-virtual {v7, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    const/16 v5, 0x159

    const/16 v6, 0x64

    if-eq v2, v9, :cond_1a

    if-ne v2, v3, :cond_16

    iget-boolean v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-nez v7, :cond_16

    goto :goto_12

    :cond_16
    if-ne v2, v3, :cond_17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_16

    :cond_17
    if-ne v1, v3, :cond_18

    goto :goto_11

    :cond_18
    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    move v5, v6

    if-eqz v1, :cond_19

    move v10, v5

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    :goto_11
    move v1, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_1a
    :goto_12
    iget-boolean v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    if-eqz v7, :cond_1b

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_1b
    const/4 v8, 0x0

    :goto_13
    if-ne v1, v3, :cond_1d

    const/16 v10, 0xc8

    if-eqz v7, :cond_1c

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->C:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v6, 0x3e9b26ca

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    filled-new-array {v3, v6, v9}, [Landroid/animation/Keyframe;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->C:Landroid/view/View;

    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0x1ef

    invoke-virtual {v1, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v13, 0x32

    invoke-virtual {v1, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v3, Lcom/android/launcher3/anim/AlphaUpdateListener;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->C:Landroid/view/View;

    invoke-direct {v3, v6}, Lcom/android/launcher3/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v1}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    move v1, v10

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v10, v7

    move v7, v8

    goto :goto_16

    :cond_1c
    const/4 v7, 0x0

    move v6, v10

    goto :goto_14

    :cond_1d
    const/4 v7, 0x0

    move v5, v6

    :goto_14
    move v10, v7

    move v7, v8

    const/4 v1, 0x0

    :goto_15
    move v3, v1

    move v1, v6

    const/4 v6, 0x0

    :goto_16
    if-nez v6, :cond_1e

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->C:Landroid/view/View;

    invoke-virtual {v4, v6, v7, v12}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1e
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->B:Landroid/view/View;

    invoke-virtual {v4, v1, v10, v12}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->n(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    invoke-virtual {v4}, Lcom/android/launcher3/anim/PropertySetter;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->G:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->L:Z

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q()V

    return-void
.end method

.method public final refreshResults()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->p:Lcom/google/android/apps/nexuslauncher/allapps/X0;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_2
    return-void
.end method

.method public final resetSearch()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->M:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->clearSearchResult()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->h()Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Z)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010038

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->i(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->V:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->i(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->W:I

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->V:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LE/a;->k(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->W:I

    invoke-static {v0, v1}, LE/a;->k(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b0:I

    return-void
.end method

.method public final setFocusedResultTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 8

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->p:Z

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->k:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->f:Z

    if-nez p1, :cond_c

    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->d:Z

    if-eqz p1, :cond_c

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v1, 0x21

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->l:Landroid/content/Context;

    const v3, 0x1010212

    invoke-static {v3, p3}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object v3, v1, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->x:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/t1;->o:Z

    const/4 v4, 0x1

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v2, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    array-length v6, v5

    :cond_5
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_6

    aget-object v7, v5, v6

    invoke-interface {v3, v7}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_5

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_6
    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->u:Z

    xor-int/2addr v1, v4

    :goto_3
    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-static {v0, p3}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "^[\\x00-\\x7F]*$"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    move v2, v4

    :cond_a
    if-eqz v2, :cond_c

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/W0;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->o:LY1/g;

    iget-boolean p2, p2, LY1/g;->a:Z

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->h:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->b(Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, LW1/p;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->s:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->t:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->setTranslationY(F)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f()V

    return-void
.end method

.method public setMockObjectsFromTest(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_ONGOING:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    if-ne v0, v1, :cond_2

    neg-float v0, p1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r:I

    if-ltz v0, :cond_3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->l()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->q()V

    return-void
.end method

.method public final t(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/android/launcher3/anim/PropertySetter;Z)V
    .locals 8

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiDisplay:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f130056

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f130055

    :goto_1
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-eqz v3, :cond_2

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b0:I

    iget p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    sget-object v3, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4, v1, p2, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    const/16 p4, 0x32

    int-to-long v4, p4

    invoke-virtual {p2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    int-to-long v1, v2

    invoke-virtual {p2, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    invoke-virtual {p3, p2, p4, p1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    goto/16 :goto_4

    :cond_2
    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const-wide/16 v4, 0x1ef

    const-wide/16 v6, 0x32

    if-ne p1, v1, :cond_7

    if-ne p2, v3, :cond_7

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b0:I

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p4, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-boolean p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-nez p2, :cond_4

    :cond_3
    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/c3;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/google/android/apps/nexuslauncher/allapps/c3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/anim/PropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_4
    iget-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setHintTextColor(I)V

    new-instance p2, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getLeft()I

    move-result p4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    invoke-direct {p2, p4, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->y:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p4, v1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->y:Landroid/graphics/Rect;

    :cond_5
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    sget-object v3, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p4, v1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    const-wide/16 v4, 0x96

    invoke-virtual {p2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->V:I

    invoke-virtual {p3, p2, p4, v1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    const-wide/16 v3, 0x159

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/c3;

    const/4 p4, 0x2

    invoke-direct {p2, p0, p4}, Lcom/google/android/apps/nexuslauncher/allapps/c3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/anim/PropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->V:I

    invoke-static {p2, p4, v1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->g(Landroid/util/IntProperty;III)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object p4, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    :goto_2
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    sget-object v1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p4, p1, v1}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    int-to-long p2, v2

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    goto/16 :goto_4

    :cond_7
    if-eq p2, v1, :cond_c

    if-ne p2, v3, :cond_8

    goto/16 :goto_3

    :cond_8
    if-ne p1, v1, :cond_b

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-ne p2, p1, :cond_b

    if-eqz p4, :cond_a

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-boolean p1, p2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/c3;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/c3;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/anim/PropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_a
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iget p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    invoke-static {p1, p2, p4, p4}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->g(Landroid/util/IntProperty;III)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    iget p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b0:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->W:I

    invoke-static {p2, p4, p4, v1}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->g(Landroid/util/IntProperty;III)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    goto :goto_4

    :cond_b
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->W:I

    iget p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->a0:I

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    sget-object v3, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4, v1, p2, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    int-to-long v1, v2

    invoke-virtual {p2, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    invoke-virtual {p3, p2, p4, p1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_4

    :cond_c
    :goto_3
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->b0:I

    iget p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->V:I

    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    sget-object v2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4, v1, p2, v2}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p2

    const/16 p4, 0x64

    int-to-long v3, p4

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    invoke-virtual {p3, p2, p4, p1, v2}, Lcom/android/launcher3/anim/PropertySetter;->setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    :goto_4
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-eqz p2, :cond_d

    const v0, 0x7f130057

    :cond_d
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public final u(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070457

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->T:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->U:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->n(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;)V

    return-void
.end method

.method public updateState()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->h()Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-ne v0, v1, :cond_b

    iget-boolean v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->J:Z

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v8, v7, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v8, v3, :cond_3

    iget-object v3, v7, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->f:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v4

    :goto_3
    if-eq v6, v3, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    iget-boolean v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->K:Z

    iget-object v7, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, LW1/p;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldFloatingSearchBarBePillWhenUnfocused()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v5

    :goto_5
    if-eq v6, v7, :cond_6

    move v6, v4

    goto :goto_6

    :cond_6
    move v6, v5

    :goto_6
    iget-boolean v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->I:Z

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v8}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v8

    if-eq v7, v8, :cond_7

    move v7, v4

    goto :goto_7

    :cond_7
    move v7, v5

    :goto_7
    iget v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->N:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->k()I

    move-result v9

    if-ne v8, v9, :cond_9

    iget v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->P:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->j()I

    move-result v9

    if-eq v8, v9, :cond_8

    goto :goto_8

    :cond_8
    move v4, v5

    :cond_9
    :goto_8
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v4, :cond_a

    return-void

    :cond_a
    if-nez v6, :cond_b

    if-nez v7, :cond_b

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    move v5, v2

    :goto_9
    invoke-virtual {p0, v0, v1, v5}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->r(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;Z)V

    return-void
.end method
