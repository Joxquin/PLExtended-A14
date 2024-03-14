.class public Lcom/android/quickstep/util/AppPairsController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FULL_RATIO:I = 0x2

.field private static final LEFT_TOP:I = 0x0

.field private static final POINT_FIVE_RATIO:I = 0x1

.field private static final POINT_SEVEN_RATIO:I = 0x2

.field private static final POINT_THREE_RATIO:I = 0x0

.field private static final RIGHT_BOTTOM:I = 0x4


# instance fields
.field public DEFAULT_RATIO:I

.field private final mContext:Landroid/content/Context;

.field private final mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/SplitSelectStateController;Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/AppPairsController;->DEFAULT_RATIO:I

    iput-object p1, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iput-object p3, p0, Lcom/android/quickstep/util/AppPairsController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$0(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$1(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$2(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    return-void
.end method

.method private complement(I)I
    .locals 0

    rsub-int/lit8 p0, p1, 0x2

    return p0
.end method

.method public static synthetic d(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/AppPairsController;->lambda$launchAppPair$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$launchAppPair$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v0, -0x1

    :goto_0
    move v7, v0

    move-object v3, v1

    iget-object v2, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v4, 0x0

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_PAIR_LAUNCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object p3, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p3, p2}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    iget-object p0, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->launchSplitTasks()V

    return-void
.end method

.method private static synthetic lambda$saveAppPair$0(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method private synthetic lambda$saveAppPair$1(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p0, p0, Lcom/android/quickstep/util/AppPairsController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_PAIR_SAVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveAppPair$2(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/quickstep/util/b;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/util/b;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/util/c;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/c;-><init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public launchAppPair(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    filled-new-array {v0, v1}, [Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/util/e;-><init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTasksAndRunCallback(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public saveAppPair(Lcom/android/quickstep/views/TaskView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iput v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget p1, p0, Lcom/android/quickstep/util/AppPairsController;->DEFAULT_RATIO:I

    add-int/lit8 v3, p1, 0x0

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AppPairsController;->complement(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    iput p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    new-instance p1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {p1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    const/16 v3, 0xa

    iput v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3, v2, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    iget-object v2, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    const-string v0, "App pair 1"

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/quickstep/util/d;-><init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
