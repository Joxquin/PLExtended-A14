.class public abstract Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# instance fields
.field private mAnimationInProgress:Z

.field private mLastTransitionProgress:Ljava/lang/Float;

.field private final mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

.field private final mOriginalClipChildren:Ljava/util/Map;

.field private final mOriginalClipToPadding:Ljava/util/Map;

.field private final mRotationChangeProvider:Lw1/d;

.field private final mRotationListener:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Lw1/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    new-instance v0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;-><init>(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;I)V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationListener:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;

    iput-boolean v1, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mLastTransitionProgress:Ljava/lang/Float;

    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    new-instance v1, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;

    invoke-direct {v1}, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;)V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    iput-object p2, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationChangeProvider:Lw1/d;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-object p0
.end method

.method private clearRegisteredViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->restoreClippings()V

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public onPrepareViewsForAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mLastTransitionProgress:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    :cond_0
    return-void
.end method

.method public onTransitionFinished()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mLastTransitionProgress:Ljava/lang/Float;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationChangeProvider:Lw1/d;

    iget-object v1, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationListener:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "listener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lw1/c;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lw1/c;-><init>(Lw1/d;Lw1/b;I)V

    iget-object v0, v0, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    invoke-direct {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mLastTransitionProgress:Ljava/lang/Float;

    return-void
.end method

.method public onTransitionStarted()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateDisplayProperties()V

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onPrepareViewsForAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationChangeProvider:Lw1/d;

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mRotationListener:Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator$UnfoldMoveFromCenterRotationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "listener"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw1/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lw1/c;-><init>(Lw1/d;Lw1/b;I)V

    iget-object p0, v0, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerViewForAnimation(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->registerViewForAnimation(Landroid/view/View;)V

    return-void
.end method

.method public restoreClippings()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    new-instance v1, Lcom/android/quickstep/util/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/quickstep/util/l;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    new-instance v0, Lcom/android/quickstep/util/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/l;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public setClipChildren(Landroid/view/ViewGroup;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public setClipToPadding(Landroid/view/ViewGroup;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public updateRegisteredViewsIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onPrepareViewsForAnimation()V

    :cond_0
    return-void
.end method
