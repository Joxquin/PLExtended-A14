.class public final Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

.field private final mNaturalUnfoldTransitionProgressProvider:Lx1/e;

.field private final mScopedUnfoldTransitionProgressProvider:Lx1/f;

.field private mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

.field private mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field private final mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;Landroid/view/WindowManager;Lw1/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lx1/f;

    new-instance v0, Lx1/e;

    invoke-direct {v0, p1, p4, p2}, Lx1/e;-><init>(Landroid/content/Context;Lw1/d;Lx1/f;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lx1/e;

    new-instance p1, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    new-instance p2, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;

    invoke-direct {p2}, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;-><init>()V

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lx1/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lx1/f;->setReadyToHandleTransition(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-object p0
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TaskbarUnfoldAnimationController:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lx1/e;

    iget-object v1, v0, Lx1/e;->e:Lw1/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lx1/e;->h:Lx1/d;

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lw1/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lw1/c;-><init>(Lw1/d;Lw1/b;I)V

    iget-object v1, v1, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lx1/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v2, v1}, Lx1/d;->onRotationChanged(I)V

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    new-instance v2, Lcom/android/launcher3/taskbar/P0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/P0;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->addOneTimePreDrawListener(Lcom/android/launcher3/taskbar/P0;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lx1/e;->f:Lx1/f;

    invoke-virtual {v0, v1}, Lx1/f;->addCallback(Lt1/d;)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lx1/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx1/f;->setReadyToHandleTransition(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lx1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "listener"

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lx1/e;->f:Lx1/f;

    invoke-virtual {v1, v2}, Lx1/f;->removeCallback(Lt1/d;)V

    invoke-virtual {v0}, Lx1/e;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-void
.end method
