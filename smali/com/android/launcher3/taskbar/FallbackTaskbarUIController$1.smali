.class final Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowGlobalDrag(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowLongClick(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setDisallowGlobalDrag(Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setDisallowLongClick(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setAllowInitialSplitSelection(Z)V

    return-void
.end method

.method public final onStateTransitionStart(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->createAnimToRecentsState(J)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/android/launcher3/taskbar/b;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/b;-><init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V

    return-void
.end method
