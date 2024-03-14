.class public final Lcom/android/launcher3/hybridhotseat/HotseatEduController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNewItems:Ljava/util/ArrayList;

.field private mNewScreens:Lcom/android/launcher3/util/IntArray;

.field private mPredictedApps:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/hybridhotseat/HotseatEduController;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x67

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showHotseatArrowTip(Ljava/lang/String;Z)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    if-eqz v2, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    if-eqz v2, :cond_1

    move v6, v4

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_2

    move v6, v3

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    if-ne v6, p2, :cond_3

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_5

    const-string p0, "HotseatEduController"

    const-string p1, "Unable to find suitable view for ArrowTip"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/views/ArrowTipView;

    invoke-direct {v0, p0, v4, v4}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    const v1, 0x800005

    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/android/launcher3/views/ArrowTipView;->show(Ljava/lang/String;III)V

    return v3
.end method


# virtual methods
.method public final finishOnboarding()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->onWorkspaceUiChanged()V

    return-void
.end method

.method public final migrate()V
    .locals 15

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LL0/g;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3}, LL0/g;-><init>(ILcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/CellLayout;->makeSpaceForHotseatMigration(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v4, v6

    :goto_1
    if-ne v4, v6, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/model/ModelDbController;->getNewScreenId()I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v12, v5, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    move v13, v1

    :goto_2
    if-ge v13, v12, :cond_8

    if-eqz v11, :cond_3

    move v5, v13

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v11, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    sub-int v6, v12, v13

    sub-int/2addr v6, v2

    :goto_4
    iget-object v7, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v7, v5, v6}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x67

    if-ne v5, v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    const/16 v7, -0x64

    move-object v6, v14

    move v8, v4

    move v9, v13

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, LL0/a;

    invoke-direct {v0, p0, v2}, LL0/a;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;I)V

    const p0, 0x7f1300ed

    const/4 v1, 0x0

    const v2, 0x7f1300e2

    invoke-static {v3, v2, p0, v1, v0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final moveHotseatItems()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v5, v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final setPredictedApps(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    return-void
.end method

.method public final showDimissTip()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-ge v0, v2, :cond_0

    new-instance v0, LL0/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LL0/a;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;I)V

    const p0, 0x7f1300ed

    const/4 v2, 0x0

    const v3, 0x7f1300ef

    invoke-static {v1, v3, p0, v2, v0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1300f0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showHotseatArrowTip(Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public final showEdu()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-static {v3, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v4, LL0/b;

    invoke-direct {v4, p0}, LL0/b;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->makeSpaceForHotseatMigration(Z)Z

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(Z)V

    :cond_1
    sget v0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->d:I

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const v2, 0x7f0d00cf

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->setHotseatEduController(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->show(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f1300f0

    goto :goto_0

    :cond_3
    const v2, 0x7f1300e3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showHotseatArrowTip(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_ONLY_TIP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->finishOnboarding()V

    :cond_5
    :goto_1
    return-void
.end method
