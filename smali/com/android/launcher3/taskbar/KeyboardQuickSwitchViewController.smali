.class public final Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCloseAnimation:Landroid/animation/Animator;

.field private final mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

.field private final mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mCurrentFocusIndex:I

.field private final mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

.field private mOnDesktop:Z

.field private final mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

.field private final mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->showDesktopApp(I)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    return-void
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->launchTaskAt(I)I

    return-void
.end method

.method public static i(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)V

    return-void
.end method

.method private launchTaskAt(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    if-ltz p1, :cond_2

    iget-object v3, v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOnDesktop:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/taskbar/m;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/taskbar/m;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    iget-object p1, v3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/taskbar/n;

    invoke-direct {v0, p0, v3, v2}, Lcom/android/launcher3/taskbar/n;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Lcom/android/quickstep/util/GroupTask;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->launchSplitTasks(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/quickstep/util/GroupTask;)V

    :goto_3
    return v1
.end method


# virtual methods
.method public final closeQuickSwitchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getCloseAnimation()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyboardQuickSwitchViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\thasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcloseAnimationRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCloseAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "\tmCurrentFocusIndex="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentFocusedIndex()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    return p0
.end method

.method public final launchFocusedTask()I
    .locals 4

    iget v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mCurrentFocusIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/2addr v1, v0

    if-le v1, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->launchTaskAt(I)I

    move-result p0

    return p0
.end method

.method public final openQuickSwitchView(Ljava/util/List;IZIZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/launcher3/taskbar/o;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/o;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;->runOnClickOnce(Lcom/android/launcher3/taskbar/o;)V

    iput-boolean p5, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOnDesktop:Z

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mKeyboardQuickSwitchView:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->applyLoadPlan(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Ljava/util/List;IZILcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    return-void
.end method
