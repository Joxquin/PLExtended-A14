.class public Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;
.super Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.source "SourceFile"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lw1/d;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lw1/d;)V

    iput-object p1, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->lambda$onPrepareViewsForAnimation$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onPrepareViewsForAnimation$0(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->setClipChildren(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, p1, v1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->setClipToPadding(Landroid/view/ViewGroup;Z)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->registerViewForAnimation(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onPrepareViewsForAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/e0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/e0;-><init>(Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->setClipChildren(Landroid/view/ViewGroup;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->setClipToPadding(Landroid/view/ViewGroup;Z)V

    invoke-super {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onPrepareViewsForAnimation()V

    return-void
.end method

.method public onTransitionFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->restoreClippings()V

    invoke-super {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    return-void
.end method
