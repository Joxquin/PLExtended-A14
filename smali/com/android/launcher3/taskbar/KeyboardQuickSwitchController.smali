.class public final Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mModel:Lcom/android/quickstep/RecentsModel;

.field private mNumHiddenTasks:I

.field private mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

.field private mTaskListChangeId:I

.field private mTasks:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTaskListChangeId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;ZILjava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/taskbar/d;

    invoke-direct {v4, v1}, Lcom/android/launcher3/taskbar/d;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/DesktopTask;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/e;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    goto :goto_1

    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    sget-boolean v3, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/taskbar/d;

    invoke-direct {v4, v1}, Lcom/android/launcher3/taskbar/d;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/DesktopTask;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/launcher3/taskbar/d;

    invoke-direct {v1, v2}, Lcom/android/launcher3/taskbar/d;-><init>(I)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/launcher3/model/W0;

    invoke-direct {v1}, Lcom/android/launcher3/model/W0;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const-wide/16 v3, 0x6

    invoke-interface {v1, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x6

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, v0

    iput p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    iget v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    const/4 v3, 0x1

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->openQuickSwitchView(Ljava/util/List;IZIZ)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->openQuickSwitchView(I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mModel:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    return-void
.end method

.method private openQuickSwitchView(I)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    .line 4
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->requestWindow()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0089

    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    .line 8
    new-instance v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllerCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    .line 9
    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    .line 10
    invoke-virtual {v0}, Lcom/android/quickstep/LauncherActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v10, v4

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTaskListChangeId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v5, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    iget v7, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    const/4 v8, 0x0

    move v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->openQuickSwitchView(Ljava/util/List;IZIZ)V

    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/launcher3/taskbar/c;

    invoke-direct {v1, p0, v10, p1}, Lcom/android/launcher3/taskbar/c;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTaskListChangeId:I

    return-void
.end method


# virtual methods
.method public final closeQuickSwitchView()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyboardQuickSwitchController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "\tmNumHiddenTasks="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/q;->c(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mNumHiddenTasks:I

    const-string v2, "\tmTaskListChangeId="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTaskListChangeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmTasks=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    const-string v5, "\t\tt1: (id="

    invoke-static {p1, v5}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; package="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    const-string v7, "no package)"

    if-eqz v3, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v7

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " t2: (id="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_3
    const-string v1, "-1"

    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eqz p0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_6
    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mModel:Lcom/android/quickstep/RecentsModel;

    return-void
.end method

.method public final launchFocusedTask()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->launchFocusedTask()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public final onConfigurationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->getCurrentFocusedIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->onDestroy()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/f;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/f;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->mQuickSwitchViewController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    :cond_0
    return-void
.end method

.method public final openQuickSwitchView()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->openQuickSwitchView(I)V

    return-void
.end method
