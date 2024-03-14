.class public final Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mEnableHotseatLongPressTipForTesting:Z

.field private mHotSeatItemsCount:I

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconRemoveAnimators:Landroid/animation/AnimatorSet;

.field private mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private mOutlineDrawings:Ljava/util/List;

.field private mPauseFlags:I

.field private mPredictedItems:Ljava/util/List;

.field private final mPredictionLongClickListener:LL0/f;

.field private final mUpdateFillIfNotLoading:LL0/d;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LL0/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LL0/d;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;I)V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:LL0/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mEnableHotseatLongPressTipForTesting:Z

    new-instance v0, LL0/f;

    invoke-direct {v0, p0}, LL0/f;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:LL0/f;

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Landroid/view/View;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Main"

    const-string v2, "onWorkspaceItemLongClick"

    invoke-static {v0, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mEnableHotseatLongPressTipForTesting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v2, "launcher.hotseat_longpress_tip_seen"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    new-instance v0, LL0/d;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, LL0/d;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;I)V

    const/4 v3, 0x0

    const v4, 0x7f1300ef

    const v5, 0x7f1300ed

    invoke-static {p1, v4, v5, v3, v0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->markChecked(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v6, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v7, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v7, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    new-instance v8, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v8}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;LJ0/i;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static b(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, LL0/e;

    invoke-direct {v1}, LL0/e;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->setPredictedApps(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showEdu()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    return-void
.end method

.method public static e(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private fillGapsWithPrediction(Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillGapsWithPrediction flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    invoke-static {v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatPredictionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    if-ge v3, v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v8, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hotseat app child is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and isPredictedIcon() evaluates to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v4, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Remove predicted apps from the past\nPrediction Index: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Predicted item is: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Predicted item is enabled: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v6}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    check-cast v6, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/BubbleTextView;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v7

    invoke-virtual {v6, v5, v4, v7}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:LL0/f;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-boolean v2, v7, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    invoke-virtual {v6, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v6, -0x67

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v6

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v6

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move v4, v8

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindItems to hotseat: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-static {v4, v3}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createIcon(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:LL0/f;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-boolean v2, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    invoke-virtual {v4, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    if-eqz p1, :cond_9

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    new-instance p1, LL0/d;

    invoke-direct {p1, p0, v2}, LL0/d;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;I)V

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    :goto_4
    iget p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    return-void
.end method

.method private getPredictedIcons()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const-string v2, "FLAG_UPDATE_PAUSED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "FLAG_DRAG_IN_PROGRESS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FLAG_FILL_IN_PROGRESS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "FLAG_REMOVING_PREDICTED_ICON"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    return-void
.end method

.method private static isPredictedIcon(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x67

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onHotseatHierarchyChanged()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:LL0/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:LL0/d;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    return-void
.end method

.method private removeOutlineDrawings()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    const-string v1, "HotseatPredictionController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    invoke-static {v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmHotSeatItemsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    const-string v2, "\tmPredictedItems: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/g;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableHotseatEdu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mEnableHotseatLongPressTipForTesting:Z

    return-void
.end method

.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 2

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x67

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final hasPredictions()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final logLaunchedAppRankingInfo(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getPredictedIcons()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setCardinality$1(I)V

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x67

    if-ne p2, v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setIndex$1(I)V

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onHotseatHierarchyChanged()V

    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onHotseatHierarchyChanged()V

    return-void
.end method

.method public final onDeferredDrop(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    :cond_0
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    return-void
.end method

.method public final onDragEnd()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 6

    iget-object p2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getPredictedIcons()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v2, p0, :cond_2

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    new-instance v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    invoke-direct {v3, v4, v2, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;-><init>(IILcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/CellLayout;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method public final onModelItemsRemoved(Ljava/util/function/Predicate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    :cond_0
    return-void
.end method

.method public final pinPrediction(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v7, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/16 v3, -0x65

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v5, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->pin(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setPauseUIUpdate(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPauseUIUpdate parameter `paused` is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatPredictionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    :cond_1
    return-void
.end method

.method public final setPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "HotseatPredictionController"

    if-eqz p1, :cond_0

    const-string p1, "Predicted items is initially empty"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, LL0/g;

    invoke-direct {v3, v0, p1}, LL0/g;-><init>(ILcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Predicted items: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    return-void
.end method

.method public final showEdu()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v2, LL0/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LL0/d;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;I)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
