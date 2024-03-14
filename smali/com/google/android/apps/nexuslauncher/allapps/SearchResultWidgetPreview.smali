.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final f:Lcom/android/launcher3/LauncherAppState;

.field public g:Lcom/android/launcher3/widget/WidgetCell;

.field public h:Landroid/widget/Toast;

.field public i:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field public j:Ljava/lang/String;

.field public k:Landroid/app/search/SearchTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 5
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->f:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 6

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->k:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->i:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/p2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/p2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/q2;

    invoke-direct {v5, v4}, Lcom/google/android/apps/nexuslauncher/allapps/q2;-><init>(Lcom/android/launcher3/widget/WidgetCell;)V

    invoke-direct {v0, v2, v3, p1, v5}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->i:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->i:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->h:Landroid/widget/Toast;

    invoke-static {p1, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->showWidgetToast(Landroid/content/Context;Landroid/widget/Toast;)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->h:Landroid/widget/Toast;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->k:Landroid/app/search/SearchTarget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object v0

    new-instance v1, Landroid/app/search/SearchTargetEvent$Builder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->j:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    const/16 v0, -0x68

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    new-instance v3, Lcom/android/launcher3/widget/PendingItemDragHelper;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->g:Lcom/android/launcher3/widget/WidgetCell;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    aget p1, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {v7, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v9}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->k:Landroid/app/search/SearchTarget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object v0

    new-instance v2, Landroid/app/search/SearchTargetEvent$Builder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->j:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return v1
.end method
