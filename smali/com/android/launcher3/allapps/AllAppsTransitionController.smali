.class public final Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

.field public static final ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

.field public static final ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;


# instance fields
.field private final mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field private mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

.field private mHasScaleEffect:Z

.field private mIsTablet:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNavScrimFlag:I

.field private mProgress:F

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mShiftRange:F

.field private mShouldControlKeyboard:Z

.field private final mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsProgress"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsPullBackTranslation"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsPullBackAlpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, LD0/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LD0/j;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    const v3, 0x7f0402c3

    invoke-static {v3, p1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iput v2, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/VibratorWrapper;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    return-void
.end method

.method public static a(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/ScrimView;->setScrimHeaderScale(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v5

    cmpg-float v6, v0, v3

    if-gez v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    if-eq v4, v0, :cond_4

    iput-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static b(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-boolean p1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method public static g(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method private onProgressAnimationEnd()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method private static restoreClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1
    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    :cond_3
    return-void
.end method

.method private static setClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f0a02bd

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final animateAllAppsToNoScale()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method public final getShiftRange()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return p0
.end method

.method public final onBackProgressed(Ljava/lang/Object;F)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ly0/e;->t:Landroid/view/animation/Interpolator;

    check-cast p1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    const p1, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p2, p1

    const p1, 0x3f666666    # 0.9f

    add-float/2addr p2, p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return-void
.end method

.method public final setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v4, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/16 v5, 0xa

    invoke-virtual {p3, v5, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    invoke-virtual {p2, v5, v6, v9, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    if-eqz v1, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    invoke-virtual {p2, v5, v6, v9, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    sget-object v1, Ly0/e;->e:Ly0/a;

    const/16 v6, 0x13

    invoke-virtual {p3, v6, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, v4, v5, v7, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    const/16 p2, 0x8

    invoke-virtual {p3, p2}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-eq p2, p1, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, p2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    goto :goto_5

    :cond_6
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/ScrimView;->setDrawingController(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public final setProgress(F)V
    .locals 6

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getNavBarScrimHeight()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    :cond_3
    const/4 p0, 0x4

    invoke-virtual {p1, p0, v4}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 3
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 4
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method public final bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 8

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    new-instance v2, LD0/h;

    invoke-direct {v2, p0, p2}, LD0/h;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;)V

    invoke-virtual {p3, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_1
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREMIUM_HAPTICS_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_3

    const v3, 0x3f19999a    # 0.6f

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    if-ne p1, v0, :cond_2

    new-instance v5, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, p0, v4, v3, v6}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    invoke-virtual {p3, v5}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v4, v6, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    invoke-virtual {p3, v5}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LD0/i;

    invoke-direct {v3, v4}, LD0/i;-><init>(Lcom/android/launcher3/util/VibratorWrapper;)V

    invoke-virtual {p3, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_2

    :cond_4
    iget-boolean v4, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v4, :cond_5

    sget-object v4, Ly0/e;->m:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    sget-object v4, Ly0/e;->B:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v7, v6, v5

    const/4 v5, 0x1

    aput v3, v6, v5

    sget-object v3, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, LD0/j;

    invoke-direct {v4, p0, v5}, LD0/j;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;I)V

    invoke-static {v4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v4, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p3, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, v5, v5}, Landroid/widget/RelativeLayout;->performHapticFeedback(II)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public final setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setScrimView(Lcom/android/launcher3/views/ScrimView;)V

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ALL_APPS_GONE_VISIBILITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p1, v1, p2, v0}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(ILandroid/view/View;I)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility()V

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-instance v2, LD0/g;

    invoke-direct {v2}, LD0/g;-><init>()V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSearchConfig()Lcom/android/launcher3/allapps/BaseSearchConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseSearchConfig;->isKeyboardSyncEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    return-void
.end method
