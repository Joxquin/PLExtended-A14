.class public final LX1/u;
.super Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/graphics/PointF;

.field public final f:Lcom/android/launcher3/util/ViewCache;

.field public g:LS1/a;

.field public h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public i:Landroid/view/ActionMode;

.field public j:I

.field public k:J

.field public final l:LX1/i;

.field public final m:Lcom/android/launcher3/logging/StatsLogManager;

.field public final n:LV1/u;

.field public final o:Lcom/android/launcher3/BaseDraggingActivity;

.field public p:LV1/j;

.field public q:LX1/t;

.field public final r:LV1/k;

.field public final s:Lcom/android/quickstep/util/AssistContentRequester;

.field public t:Z

.field public u:Z

.field public v:LV1/l;

.field public w:I

.field public x:Z

.field public y:Ljava/util/concurrent/CompletableFuture;

.field public z:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 1

    iput-object p1, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    invoke-direct {p0, p2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LX1/u;->e:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput p1, p0, LX1/u;->j:I

    new-instance v0, LX1/i;

    invoke-direct {v0, p0, p1}, LX1/i;-><init>(LX1/u;I)V

    iput-object v0, p0, LX1/u;->l:LX1/i;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object p1, p0, LX1/u;->y:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LX1/u;->d:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object p1, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p2

    iput-object p2, p0, LX1/u;->f:Lcom/android/launcher3/util/ViewCache;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, LX1/u;->m:Lcom/android/launcher3/logging/StatsLogManager;

    new-instance p2, LV1/u;

    invoke-direct {p2, p1}, LV1/u;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    iput-object p2, p0, LX1/u;->n:LV1/u;

    new-instance p1, LV1/k;

    iget-object p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, p2}, LV1/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LX1/u;->r:LV1/k;

    new-instance p1, Lcom/android/quickstep/util/AssistContentRequester;

    iget-object p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/quickstep/util/AssistContentRequester;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LX1/u;->s:Lcom/android/quickstep/util/AssistContentRequester;

    return-void
.end method

.method public static synthetic c(LX1/u;)V
    .locals 1

    iget-object v0, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public static d(LX1/u;)V
    .locals 4

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LX1/u;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LX1/i;

    invoke-direct {v0, p0, v1}, LX1/i;-><init>(LX1/u;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    :cond_1
    iget v0, p0, LX1/u;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object v3, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v3, v2, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b(ZZ)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x3

    iput v0, p0, LX1/u;->j:I

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_PREVIEW_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(LX1/u;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    sget v0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->i:I

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "no_cross_profile_copy_paste"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static f(LX1/u;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 1

    invoke-virtual {p0}, LX1/u;->l()V

    iput-object p1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object v0, v0, LL1/o;->b:LL1/q;

    iput-object p0, v0, LL1/q;->i:LX1/u;

    iput-object p0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->x:LX1/u;

    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskCornerRadius()F

    move-result v0

    iput v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->y:F

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    if-eqz p1, :cond_0

    iput v0, p1, LL1/B;->l:F

    :cond_0
    iget-object p1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic g(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method

.method public static synthetic h(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method

.method public static synthetic i(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method

.method public static synthetic j(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method


# virtual methods
.method public final getModalStateSystemShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 8

    iget-object v1, p0, LX1/u;->q:LX1/t;

    if-eqz v1, :cond_1

    new-instance p0, LX1/q;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08026f

    goto :goto_0

    :cond_0
    const v0, 0x7f0802ab

    :goto_0
    move v2, v0

    const v3, 0x7f13003d

    iget-object v0, v1, LX1/t;->b:LX1/u;

    iget-object v4, v0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, LX1/q;-><init>(LX1/t;IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenshotShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 8

    iget-object v1, p0, LX1/u;->q:LX1/t;

    if-eqz v1, :cond_0

    new-instance p0, LX1/q;

    const v2, 0x7f0802a9

    const v3, 0x7f13003c

    iget-object p1, v1, LX1/t;->b:LX1/u;

    iget-object v4, p1, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, LX1/q;-><init>(LX1/t;IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p4

    iget-boolean v1, v0, LX1/u;->u:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez v14, :cond_1

    move v2, v11

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->updateDisabledFlags(IZ)V

    if-eqz v15, :cond_d

    if-nez v14, :cond_2

    goto/16 :goto_9

    :cond_2
    iput-boolean v11, v0, LX1/u;->x:Z

    iget-object v1, v15, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, v15, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v2, v0, LX1/u;->w:I

    iget-object v2, v0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    sget v3, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->i:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, v2, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX1/h;

    if-eqz v5, :cond_3

    iput-boolean v11, v5, LX1/h;->c:Z

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v5, LX1/h;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->d:Landroid/content/Context;

    invoke-direct {v5, v2, v1}, LX1/h;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-boolean v11, v5, LX1/h;->c:Z

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v9, v5

    goto :goto_2

    :catch_0
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_4

    invoke-virtual/range {p0 .. p0}, LX1/u;->reset()V

    return-void

    :cond_4
    new-instance v2, LX1/j;

    invoke-direct {v2, v0, v1}, LX1/j;-><init>(LX1/u;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v2, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iput-object v1, v0, LX1/u;->y:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v8

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->isRealSnapshot()Z

    move-result v16

    new-instance v7, LX1/f;

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LX1/k;

    invoke-direct {v3, v2, v12}, LX1/k;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;I)V

    iget-object v2, v0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v4, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-direct {v7, v1, v3, v2, v4}, LX1/f;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/launcher3/views/ActivityContext;Lcom/android/quickstep/views/TaskView;)V

    iget-object v1, v9, LX1/h;->b:LV1/l;

    iput-object v1, v0, LX1/u;->v:LV1/l;

    new-instance v6, LV1/t;

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v6, v1}, LV1/t;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LX1/l;

    invoke-direct {v5, v1}, LX1/l;-><init>(Ljava/lang/Object;)V

    new-instance v4, LX1/l;

    invoke-direct {v4, v0}, LX1/l;-><init>(Ljava/lang/Object;)V

    new-instance v3, LV1/j;

    iget-object v2, v15, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v0, LX1/u;->r:LV1/k;

    iget-object v10, v0, LX1/u;->v:LV1/l;

    iget-object v12, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v19, v8

    new-instance v8, LX1/k;

    invoke-direct {v8, v12, v11}, LX1/k;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;I)V

    iget-object v12, v0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v12}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    iget-object v14, v0, LX1/u;->m:Lcom/android/launcher3/logging/StatsLogManager;

    new-instance v15, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    iget-object v11, v0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-direct {v15, v11}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;-><init>(Landroid/content/Context;)V

    move-object v11, v1

    move-object v1, v3

    move-object/from16 v28, v3

    move-object/from16 v3, p0

    move-object/from16 v21, v4

    move-object v4, v7

    move-object/from16 v22, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v10

    move-object/from16 v23, v7

    move-object v7, v11

    move/from16 v11, v19

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v29, v10

    move-object/from16 v10, v21

    move/from16 v30, v11

    move/from16 v11, v16

    move-object/from16 v17, v12

    move/from16 v13, p4

    invoke-direct/range {v1 .. v15}, LV1/j;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;LX1/u;LX1/f;LV1/k;LV1/l;LV1/t;LX1/k;LX1/l;LX1/l;ZLandroid/content/SharedPreferences;ZLcom/android/launcher3/logging/StatsLogManager;Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;)V

    move-object/from16 v1, v28

    iput-object v1, v0, LX1/u;->p:LV1/j;

    new-instance v2, LX1/t;

    invoke-direct {v2, v0}, LX1/t;-><init>(LX1/u;)V

    iput-object v2, v0, LX1/u;->q:LX1/t;

    iput-object v2, v1, LV1/j;->n:LX1/t;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, LV1/j;->n:LX1/t;

    iget-object v4, v1, LV1/j;->o:LV1/h;

    iget-object v5, v2, LX1/t;->b:LX1/u;

    invoke-virtual {v5}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/OverviewActionsView;->setCallbacks(Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V

    iput-object v4, v2, LX1/t;->a:LV1/i;

    iget-object v2, v1, LV1/j;->n:LX1/t;

    iget-object v2, v2, LX1/t;->b:LX1/u;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    const/4 v4, 0x2

    move/from16 v5, p4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->updateDisabledFlags(IZ)V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, LV1/j;->n:LX1/t;

    iget-object v2, v2, LX1/t;->b:LX1/u;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OverviewActionsView;->getActionsButtonVisibility()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move v12, v3

    :goto_3
    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    const-string v2, "launcher.select_tip_seen"

    move-object/from16 v6, v17

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v1, v1, LV1/j;->n:LX1/t;

    iget-object v1, v1, LX1/t;->b:LX1/u;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    new-array v7, v4, [I

    iget-object v8, v1, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->getLocationOnScreen([I)V

    new-instance v8, Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v3, v3}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1301f2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aget v10, v7, v3

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    add-int/2addr v1, v10

    const/4 v4, 0x1

    aget v7, v7, v4

    const v10, 0x800003

    invoke-virtual {v8, v9, v10, v1, v7}, Lcom/android/launcher3/views/ArrowTipView;->show(Ljava/lang/String;III)V

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v6, 0x0

    invoke-direct {v7, v6, v6, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v6, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v6, v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v6, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v2, v1

    invoke-direct {v8, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v0, LX1/u;->g:LS1/a;

    if-eqz v1, :cond_8

    iput-boolean v4, v1, LS1/a;->b:Z

    const/4 v1, 0x0

    iput-object v1, v0, LX1/u;->g:LS1/a;

    :cond_8
    if-nez v5, :cond_b

    if-eqz v16, :cond_b

    new-instance v1, LS1/a;

    new-instance v2, LX1/m;

    invoke-direct {v2, v3, v0}, LX1/m;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, LS1/a;-><init>(LX1/m;)V

    iput-object v1, v0, LX1/u;->g:LS1/a;

    iget-object v1, v0, LX1/u;->f:Lcom/android/launcher3/util/ViewCache;

    iget-object v2, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0d0124

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/widget/FrameLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget v11, v0, LX1/u;->w:I

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    const-string v2, ""

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object v12, v1

    iget-object v1, v0, LX1/u;->g:LS1/a;

    iget-object v2, v0, LX1/u;->n:LV1/u;

    new-instance v3, LV1/c;

    iget-object v4, v0, LX1/u;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, LV1/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v5, v29

    iget-object v4, v5, LX1/h;->a:LL1/O;

    iget-object v6, v4, LL1/O;->c:LL1/i;

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    sget-object v1, LL1/l;->d:LL1/l;

    :goto_7
    move-object v13, v1

    new-instance v21, LL1/a0;

    move-object/from16 v5, v21

    invoke-direct/range {v5 .. v13}, LL1/a0;-><init>(LL1/i;Landroid/graphics/RectF;Landroid/graphics/PointF;JILandroid/content/ComponentName;LL1/P;)V

    iget-object v1, v4, LL1/O;->a:Landroid/content/Context;

    iget-object v5, v4, LL1/O;->e:Landroid/content/Context;

    iget-object v6, v4, LL1/O;->b:Landroid/os/Handler;

    invoke-virtual/range {v21 .. v21}, LL1/a0;->h()Ljava/lang/String;

    move-result-object v7

    new-instance v8, LL1/j0;

    move/from16 v9, v30

    invoke-direct {v8, v7, v9}, LL1/j0;-><init>(Ljava/lang/String;Z)V

    iget-object v4, v4, LL1/O;->d:LK1/a;

    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    move-object/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v17 .. v27}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/widget/FrameLayout;LL1/a0;Landroid/os/Handler;LX1/f;LL1/j0;LK1/a;LV1/u;LV1/c;)V

    iget-object v1, v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    monitor-enter v1

    :try_start_1
    iget-object v2, v1, LL1/a0;->j:LL1/P;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-interface {v2, v7}, LL1/P;->e(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2

    :cond_b
    invoke-virtual/range {p0 .. p0}, LX1/u;->l()V

    :goto_8
    iget-object v1, v0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->f:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, LX1/u;->n()V

    :cond_c
    sget-object v1, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    return-void

    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, LX1/u;->reset()V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX1/u;->y:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LX1/m;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, LX1/m;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, v0, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    new-instance v4, LX1/n;

    invoke-direct {v4, p0, v0, v1}, LX1/n;-><init>(LX1/u;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LX1/u;->f:Lcom/android/launcher3/util/ViewCache;

    const v3, 0x7f0d0124

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/ViewCache;->recycleView(Landroid/view/View;I)V

    :goto_0
    iput-object v2, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, LX1/u;->t:Z

    :cond_2
    return-void
.end method

.method public final m(LL1/q;)V
    .locals 2

    iget-object v0, p0, LX1/u;->i:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, LX1/u;->i:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    new-instance v1, LX1/p;

    invoke-direct {v1, p0, p1, p0}, LX1/p;-><init>(LX1/u;LL1/q;LX1/u;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, LX1/u;->i:Landroid/view/ActionMode;

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, v0, LX1/u;->t:Z

    if-nez v4, :cond_4

    iget-object v4, v0, LX1/u;->v:LV1/l;

    if-eqz v4, :cond_4

    iget-object v4, v0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v4, :cond_4

    iget-object v5, v0, LX1/u;->q:LX1/t;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v4, v0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v4, :cond_1

    iget-object v5, v4, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, v4, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_1
    iput-boolean v3, v0, LX1/u;->t:Z

    iget-object v4, v0, LX1/u;->d:Landroid/content/Context;

    const v5, 0x112002f

    const v6, 0x1010433

    const v7, 0x11200a5

    const v8, 0x1120094

    filled-new-array {v5, v6, v7, v8}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    iget-object v4, v0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v8, v0, LX1/u;->q:LX1/t;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LX1/s;

    invoke-direct {v9, v8}, LX1/s;-><init>(LX1/t;)V

    iget-object v8, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v10, v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "Requesting to show indicators"

    invoke-static {v11}, LM1/b;->f(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget v12, v11, LL1/o;->g:I

    add-int/2addr v12, v2

    iput v12, v11, LL1/o;->g:I

    sget-object v11, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->o:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {v4, v11, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;Landroid/graphics/RectF;)LJ1/t;

    move-result-object v11

    iget-object v13, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v13, v13, LL1/j0;->a:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, LJ1/m;

    invoke-direct {v15}, LJ1/m;-><init>()V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v15, LJ1/m;->b:J

    new-instance v1, LJ1/o;

    invoke-direct {v1}, LJ1/o;-><init>()V

    iput-object v1, v15, LJ1/m;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    iput-object v2, v1, LJ1/o;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    iput v6, v1, LJ1/o;->b:I

    new-instance v1, LJ1/n;

    invoke-direct {v1}, LJ1/n;-><init>()V

    move-object v6, v11

    move v2, v12

    int-to-long v11, v3

    iput-wide v11, v1, LJ1/n;->b:J

    iput-object v13, v1, LJ1/n;->c:Ljava/lang/String;

    sget v11, LM1/c;->a:I

    iput-object v14, v1, LJ1/n;->a:Ljava/util/List;

    iget-object v11, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v12, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->i:Ljava/lang/String;

    iget-object v13, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    invoke-virtual {v11, v12, v13, v1}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    iget-object v1, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v1, :cond_2

    iget-object v12, v1, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v12, 0x0

    iput-object v12, v1, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e()LL1/w;

    move-result-object v1

    iput-object v9, v1, LL1/w;->k:LX1/s;

    iget v9, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->y:F

    iput v9, v1, LL1/w;->m:F

    iput v5, v1, LL1/w;->t:I

    iput v7, v1, LL1/w;->u:I

    iput v8, v1, LL1/w;->v:I

    iput v10, v1, LL1/w;->w:I

    new-instance v5, LL1/e0;

    invoke-direct {v5, v4, v1}, LL1/e0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/w;)V

    iget-object v1, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {v11, v3}, LL1/a0;->k(Z)V

    new-instance v1, LL1/f0;

    invoke-direct {v1, v4, v2, v3}, LL1/f0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;II)V

    invoke-virtual {v11, v6, v13, v1}, LL1/a0;->g(LJ1/t;LK1/a;LL1/Y;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LX1/u;->t:Z

    iget-object v1, v0, LX1/u;->s:Lcom/android/quickstep/util/AssistContentRequester;

    iget v2, v0, LX1/u;->w:I

    new-instance v3, LX1/o;

    invoke-direct {v3, v0}, LX1/o;-><init>(LX1/u;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/AssistContentRequester;->requestAssistContent(ILcom/android/quickstep/util/AssistContentRequester$Callback;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public final o(Z)V
    .locals 0

    iget-object p0, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->showForegroundScrim(Z)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v4, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    iget-object v5, p0, LX1/u;->l:LX1/i;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v4, p0, LX1/u;->x:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, LX1/u;->e:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, LX1/u;->k:J

    iput v3, p0, LX1/u;->j:I

    iget-object v4, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    iget-object v5, p0, LX1/u;->l:LX1/i;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    div-int/2addr v6, v2

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iput v1, p0, LX1/u;->j:I

    :cond_2
    :goto_0
    iget v4, p0, LX1/u;->j:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iput v5, p0, LX1/u;->j:I

    :cond_3
    iget v4, p0, LX1/u;->j:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, LX1/u;->p:LV1/j;

    if-eqz v4, :cond_4

    iget-boolean v4, v4, LV1/j;->m:Z

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    if-eq v0, v3, :cond_6

    if-ne v0, v6, :cond_8

    :cond_6
    iget p1, p0, LX1/u;->j:I

    if-ne p1, v2, :cond_7

    iget-object p1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    :cond_7
    iput v1, p0, LX1/u;->j:I

    iget-object p1, p0, LX1/u;->A:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    iget-object p0, p0, LX1/u;->l:LX1/i;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    return v3
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final reset()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, LX1/u;->x:Z

    iget-object v1, p0, LX1/u;->p:LV1/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v0, v1, LV1/j;->m:Z

    iget-object v3, v1, LV1/j;->n:LX1/t;

    invoke-virtual {v3, v0}, LX1/t;->a(Z)V

    iget-object v1, v1, LV1/j;->b:LX1/u;

    iget-object v3, v1, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v3, v1, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v3, :cond_0

    iget-object v4, v3, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, v3, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_0
    iput-boolean v0, v1, LX1/u;->t:Z

    :cond_1
    iget-object v1, p0, LX1/u;->g:LS1/a;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v1, LS1/a;->b:Z

    iput-object v2, p0, LX1/u;->g:LS1/a;

    :cond_2
    invoke-virtual {p0}, LX1/u;->l()V

    iget-object v1, p0, LX1/u;->v:LV1/l;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LV1/l;->c()V

    :cond_3
    invoke-virtual {p0, v0}, LX1/u;->o(Z)V

    iput-boolean v0, p0, LX1/u;->u:Z

    iget-object p0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public final resetModalVisuals()V
    .locals 3

    iget-object p0, p0, LX1/u;->p:LV1/j;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LV1/j;->m:Z

    iget-object v1, p0, LV1/j;->n:LX1/t;

    invoke-virtual {v1, v0}, LX1/t;->a(Z)V

    iget-object p0, p0, LV1/j;->b:LX1/u;

    iget-object v1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v1, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v1, :cond_0

    iget-object v2, v1, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    iput-object v2, v1, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_0
    iput-boolean v0, p0, LX1/u;->t:Z

    :cond_1
    return-void
.end method

.method public final setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 0

    iget-object p0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz p0, :cond_0

    iget p1, p1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->y:F

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    if-eqz p0, :cond_0

    iput p1, p0, LL1/B;->l:F

    :cond_0
    return-void
.end method

.method public final setFullscreenProgress(F)V
    .locals 7

    iput p1, p0, LX1/u;->z:F

    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    sget-object v6, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
