.class public final LV1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/i;


# instance fields
.field public final synthetic a:LV1/j;


# direct methods
.method public constructor <init>(LV1/j;)V
    .locals 0

    iput-object p1, p0, LV1/h;->a:LV1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LV1/h;->a:LV1/j;

    iget-boolean v1, v0, LV1/j;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SELECT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, LV1/j;->b:LX1/u;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, LV1/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LV1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, LV1/j;->b:LX1/u;

    new-instance v1, LV1/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LV1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object p0, v0, LV1/j;->n:LX1/t;

    invoke-virtual {p0}, LX1/t;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 6

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->a()V

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x78

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    iget-object v0, v0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LL1/w;->a()V

    :cond_0
    iget-object v0, p0, LV1/j;->e:LV1/l;

    invoke-virtual {v0}, LV1/l;->c()V

    iget-object v0, p0, LV1/j;->f:LV1/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, v0, LV1/t;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final c(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, LV1/h;->a:LV1/j;

    iget-object v0, v0, LV1/j;->e:LV1/l;

    new-instance v1, LV1/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LV1/f;-><init>(LV1/h;Ljava/lang/Object;I)V

    const-string p0, "image/png"

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "OverviewActionsController"

    const-string v3, "unable to create share action"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0, v1, p1}, LV1/l;->a(LV1/f;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LV1/h;->a:LV1/j;

    iget-object v0, v0, LV1/j;->e:LV1/l;

    new-instance v1, LV1/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LV1/f;-><init>(LV1/h;Ljava/lang/Object;I)V

    const-string p0, "text/plain"

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "OverviewActionsController"

    const-string v3, "unable to create share action"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0, v1, p1}, LV1/l;->a(LV1/f;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final e(Landroid/graphics/RectF;Z)V
    .locals 5

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->a()V

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    iget-object v0, v0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LL1/w;->a()V

    :cond_0
    iget-object v0, p0, LV1/j;->e:LV1/l;

    invoke-virtual {v0}, LV1/l;->c()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p1, p0, LV1/j;->c:LX1/f;

    invoke-virtual {p1, v0}, LX1/f;->startShareActivity(Landroid/graphics/Rect;)V

    iget-object p0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->n:LX1/t;

    iget-object v0, v0, LX1/t;->b:LX1/u;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->a()V

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, LV1/j;->e:LV1/l;

    invoke-virtual {p0}, LV1/l;->c()V

    return-void
.end method

.method public final g(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V
    .locals 6

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->f:LV1/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "android.intent.extra.shortcut.ID"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, LV1/t;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, LV1/j;->e:LV1/l;

    invoke-virtual {p1, p3}, LV1/l;->b(Landroid/app/prediction/AppTarget;)V

    iget-object p0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p4, :cond_0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final h(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Z)V
    .locals 1

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->c:LX1/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quickstep/ImageActionsApi;->shareImage(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;)V

    iget-object p1, p0, LV1/j;->e:LV1/l;

    invoke-virtual {p1, p3}, LV1/l;->b(Landroid/app/prediction/AppTarget;)V

    iget-object p0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p4, :cond_0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_CLOSE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV1/j;->m:Z

    iget-object v1, p0, LV1/j;->n:LX1/t;

    invoke-virtual {v1, v0}, LX1/t;->a(Z)V

    iget-object v1, p0, LV1/j;->b:LX1/u;

    iget-object v2, v1, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v2, v1, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz v2, :cond_0

    iget-object v3, v2, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v3, 0x0

    iput-object v3, v2, LL1/w;->x:Landroid/widget/FrameLayout;

    :cond_0
    iput-boolean v0, v1, LX1/u;->t:Z

    iget-boolean v0, p0, LV1/j;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LV1/j;->a:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object p0, p0, LV1/j;->h:LX1/l;

    iget-object p0, p0, LX1/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(IZ)V

    invoke-virtual {v1}, LX1/u;->n()V

    return-void
.end method

.method public final onScreenshot()V
    .locals 3

    iget-object v0, p0, LV1/h;->a:LV1/j;

    iget-boolean v1, v0, LV1/j;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v0, v0, LV1/j;->b:LX1/u;

    new-instance v1, LV1/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LV1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "OverviewActionsController"

    const-string v1, "Screenshot blocked by policy."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, LV1/j;->n:LX1/t;

    invoke-virtual {p0}, LX1/t;->b()V

    :goto_0
    return-void
.end method

.method public final onSplit()V
    .locals 3

    iget-object p0, p0, LV1/h;->a:LV1/j;

    iget-object v0, p0, LV1/j;->b:LX1/u;

    new-instance v1, LV1/g;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LV1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    return-void
.end method
