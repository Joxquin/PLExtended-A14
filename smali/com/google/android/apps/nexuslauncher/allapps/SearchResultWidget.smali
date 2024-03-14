.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final e:Landroid/graphics/Rect;

.field public final f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final g:Lcom/android/launcher3/CheckLongPressHelper;

.field public final h:Landroid/view/GestureDetector;

.field public final i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

.field public final j:F

.field public k:Lcom/android/launcher3/BubbleTextView;

.field public l:Landroid/widget/TextView;

.field public m:Ljava/lang/String;

.field public n:Lcom/google/android/apps/nexuslauncher/allapps/H2;

.field public o:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field public p:Landroid/app/search/SearchTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->e:Landroid/graphics/Rect;

    .line 5
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 6
    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-direct {p3, p1}, Lcom/google/android/apps/nexuslauncher/allapps/n2;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    .line 7
    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    .line 8
    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    .line 9
    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p2, p3}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p2

    .line 11
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->j:F

    .line 12
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/o2;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/k2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/k2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/o2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/k2;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->h:Landroid/view/GestureDetector;

    .line 13
    new-instance p1, Lcom/android/launcher3/CheckLongPressHelper;

    .line 14
    invoke-direct {p1, p0, p3}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    .line 15
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->g:Lcom/android/launcher3/CheckLongPressHelper;

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor()V

    .line 17
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public final cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->g:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 9

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->p:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->l()V

    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->k:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    new-instance v0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/l2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/l2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;Landroid/appwidget/AppWidgetProviderInfo;)V

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->l:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/m2;

    invoke-direct {v6, v5}, Lcom/google/android/apps/nexuslauncher/allapps/m2;-><init>(Landroid/widget/TextView;)V

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->o:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->o:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/v0;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/v0;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_1
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/16 v6, -0x68

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    iget-object v6, v5, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v4, v6, v7, v8}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {v7, v6, v2, v1, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, v6, p1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    invoke-virtual {p1, v5}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->k(Lcom/google/android/apps/nexuslauncher/allapps/H2;)V

    return-void
.end method

.method public final getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->j:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->j:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->e:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v1, p0

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/android/apps/nexuslauncher/allapps/H2;)V
    .locals 4

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/view/a;->setVisibility(I)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->n:Lcom/google/android/apps/nexuslauncher/allapps/H2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/view/a;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->n:Lcom/google/android/apps/nexuslauncher/allapps/H2;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;->d:I

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;->e:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;->f:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/n2;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/H2;->g:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->n:Lcom/google/android/apps/nexuslauncher/allapps/H2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/H2;->g:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->n:Lcom/google/android/apps/nexuslauncher/allapps/H2;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->o:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->o:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->l()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03e2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->k:Lcom/android/launcher3/BubbleTextView;

    const v0, 0x7f0a03dd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->i:Lcom/google/android/apps/nexuslauncher/allapps/n2;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->g:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->g:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p0

    return p0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    sget-object p0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Lcom/android/launcher3/touch/j;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/j;->onLongClick(Landroid/view/View;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->g:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
