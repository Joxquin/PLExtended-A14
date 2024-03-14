.class public final Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/L;

.field public final f:Lcom/google/android/apps/nexuslauncher/logging/b;

.field public final g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

.field public h:Lcom/google/android/apps/nexuslauncher/allapps/O2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/L;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/allapps/L;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/logging/b;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-direct {v2, p1}, Lcom/google/android/apps/nexuslauncher/logging/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/nexuslauncher/logging/b;-><init>(Lcom/google/android/apps/nexuslauncher/logging/a;Lcom/android/launcher3/logging/KeyboardStateManager;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->f:Lcom/google/android/apps/nexuslauncher/logging/b;

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-direct {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/P2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    return-void
.end method


# virtual methods
.method public final createPreDragConditionForSearch(Landroid/view/View;)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->w()Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q()Landroid/graphics/Point;

    move-result-object p1

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/N2;

    invoke-direct {v2, v1, v0, p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/N2;-><init>(FLcom/android/launcher3/views/OptionsPopupView;Landroid/graphics/Point;Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;)V

    return-object v2

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleBackInvoked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s()Z

    move-result p0

    return p0
.end method

.method public final onAllAppsAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->d:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/F;

    sget-object v3, Ly0/e;->e:Ly0/a;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->f:Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-direct {v1, p2, v3, v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/F;-><init>(ZLandroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/L;Lcom/google/android/apps/nexuslauncher/logging/b;)V

    const/4 v3, 0x1

    invoke-static {v0, p2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/P;->b(Lcom/android/launcher3/views/ActivityContext;ZZ)Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string v3, "getKeyboardTranslationIn\u2026d= */ true,\n            )"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v4, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4, v5, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->h:Lcom/google/android/apps/nexuslauncher/allapps/O2;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->h:Lcom/google/android/apps/nexuslauncher/allapps/O2;

    invoke-interface {v3, v4}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->h:Lcom/google/android/apps/nexuslauncher/allapps/O2;

    :goto_1
    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/O2;

    invoke-direct {v3, p2, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/O2;-><init>(Landroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/F;Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;)V

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->h:Lcom/google/android/apps/nexuslauncher/allapps/O2;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->h:Lcom/google/android/apps/nexuslauncher/allapps/O2;

    invoke-interface {p2, p0}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_5
    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/E;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/E;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/F;I)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final onAllAppsTransitionEnd(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    const-string v0, "sessionManager.mAllAppsTransitionListeners"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsTransitionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionListener;->onAllAppsTransitionEnd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAllAppsTransitionStart(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    const-string v0, "sessionManager.mAllAppsTransitionListeners"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsTransitionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionListener;->onAllAppsTransitionStart(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C()V

    return-void
.end method

.method public final setZeroStatePredictedItems(Ljava/util/List;)V
    .locals 2

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setZeroStateSearchSuggestions(Ljava/util/List;)V
    .locals 10

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, LT1/w;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT1/w;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, LT1/w;->d:Lf2/A;

    const-wide/16 v6, -0x1

    iget-object v8, p1, LT1/w;->e:[B

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b(Landroid/app/search/Query;Lf2/A;Lcom/google/android/apps/nexuslauncher/allapps/p;J[BZ)V

    :cond_0
    return-void
.end method

.method public final startLifecycle()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->N()V

    return-void
.end method
