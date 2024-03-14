.class public final Lcom/android/launcher3/DropTargetHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final dismissPrediction(Ljava/lang/CharSequence;Lcom/android/launcher3/K0;Lcom/android/launcher3/L0;)V
    .locals 1

    const-string v0, "announcement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const p1, 0x7f1300f9

    const v0, 0x7f130243

    invoke-static {p0, p1, v0, p3, p2}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const-string v0, "mLauncher.dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public final getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onAccessibilityDelete(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announcement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x1

    const-string v1, "removed by accessibility drop"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onClick(Lcom/android/launcher3/ButtonDropTarget;)V
    .locals 1

    const-string v0, "buttonDropTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method public final onDeleteComplete(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    if-gtz v0, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$onUndoClicked$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$onUndoClicked$1;-><init>(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    const-string p1, "mLauncher.modelWriter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;

    const/4 v2, 0x0

    invoke-direct {p1, v2, p0}, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f1300f9

    const v2, 0x7f130243

    invoke-static {v1, p0, v2, p1, v0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDropAnimationComplete()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public final onSecondaryTargetCompleteDrop(Landroid/content/ComponentName;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, p2, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    instance-of p2, p2, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    new-instance p1, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/DropTargetHandler$onDeleteComplete$2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    sget-object p0, Le3/f;->a:Le3/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    :cond_1
    return-void
.end method

.method public final prepareToUndoDelete()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->prepareToUndoDelete()V

    return-void
.end method

.method public final reconfigureWidget(ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p2

    const/16 v0, 0xd

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    return-void
.end method
